#!/usr/bin/env bash
# Writes the release version into the pack manifest and the README.
# semantic-release runs it in the prepare step; package.json is bumped by
# @semantic-release/npm.
set -euo pipefail

version=${1:?usage: set-pack-version.sh <version>}
if ! [[ $version =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
  echo "Invalid version: $version" >&2
  exit 1
fi

repo_root=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)

set_line() {
  local file=$1 pattern=$2 replacement=$3
  if ! grep -Eq "$pattern" "$file"; then
    echo "No version line in $file" >&2
    exit 1
  fi
  sed -E -i "s/$pattern/$replacement/" "$file"
}

set_line "$repo_root/kenkeep-pack.yaml" '^version: .*$' "version: $version"
set_line "$repo_root/README.md" '^Version: .*$' "Version: $version"
