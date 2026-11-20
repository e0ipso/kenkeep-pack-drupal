# Kenkeep knowledge pack: Drupal

General knowledge and best practices for Drupal projects

Version: 2.2.0

## Import

```sh
npx kenkeep pack import e0ipso/kenkeep-pack-drupal
```

## Contributing

Run `npm install` once. It installs a commit-msg hook that checks each commit
message against [Conventional Commits](https://www.conventionalcommits.org/).
CI checks the commits of every pull request and imports the pack with the
locked kenkeep version (`npm run check:pack`).

Releases are automatic. When a commit lands on `main`, semantic-release reads
the commit types, picks the next version (`feat` is minor, `fix` is patch, a
breaking change is major), writes it to `kenkeep-pack.yaml`, `README.md`,
`package.json` and `CHANGELOG.md`, and creates the tag and the GitHub release.
