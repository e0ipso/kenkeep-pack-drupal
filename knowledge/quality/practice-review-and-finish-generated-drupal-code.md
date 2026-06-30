---
schema_version: 2
id: practice-review-and-finish-generated-drupal-code
title: Review and finish generated Drupal code
kind: practice
tags:
  - drush
  - generators
  - workflow
derived_from:
  - https://www.drush.org/latest/generators/
  - https://www.drush.org/latest/commands/generate/
  - https://www.drupal.org/docs/develop/standards
relates_to:
  - map-developer-tools-drush-docs-map
  - map-drupal-migrate-api-reference
  - map-processing-workflow-moderation-map
depends_on: []
confidence: medium
summary: >-
  After Drush generation, review files, add logic and dependencies, rebuild
  cache, add tests, and run quality tools.
---
Use Drush generators to scaffold Drupal components, but treat the output as boilerplate that must be reviewed and completed. Preview generators with `--dry-run` when useful, use `--answer` for non-interactive generation, and be careful with `--replace`.

After generation, review the generated files, add business logic, inject dependencies, rebuild caches with `vendor/bin/drush cr`, write tests, and run `phpcs` and `phpstan` before considering the component finished.
