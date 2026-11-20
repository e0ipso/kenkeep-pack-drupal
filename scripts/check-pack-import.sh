#!/usr/bin/env bash
set -euo pipefail

pack_root=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
kenkeep="$pack_root/node_modules/.bin/kenkeep"
test_root=$(mktemp -d)
trap 'rm -rf "$test_root"' EXIT

mkdir "$test_root/consumer"
cd "$test_root/consumer"
git init --quiet
"$kenkeep" init --harnesses claude
git add .ai .claude .kkignore AGENTS.md
git -c user.name='Pack import test' -c user.email='pack-test@example.com' \
  -c commit.gpgsign=false commit --quiet -m 'Initialize test consumer'

# Import the checkout under test with the locked kenkeep version, rather than
# the latest published release.
if ! "$kenkeep" pack import "$pack_root" > "$test_root/import.log" 2>&1; then
  cat "$test_root/import.log"
  exit 1
fi
cat "$test_root/import.log"
if grep -Fq 'have no summary' "$test_root/import.log"; then
  echo 'Pack import lost folder summaries.' >&2
  exit 1
fi

# The importer replaces index bodies. Check that both routing text and the
# contrib dependency rule survive in the regenerated catalog.
grep -Fq 'HTTP APIs and serialization surfaces; read before exposing JSON:API' \
  .ai/kenkeep/nodes/drupal/index.md
grep -Fq 'service definitions, dependency injection, logging, and service-oriented patterns' \
  .ai/kenkeep/nodes/drupal/architecture/index.md
grep -Fq 'Nodes in other branches that recommend a contrib module apply only when the project already uses that module; do not add a dependency because a node recommends it.' \
  .ai/kenkeep/nodes/drupal/index.md

echo 'Pack import preserved folder summaries and the contrib dependency rule.'
