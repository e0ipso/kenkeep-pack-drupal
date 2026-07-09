---
type: practice
title: Review and finish generated Drupal code
description: >-
  After Drush generation, review files, add logic and dependencies, rebuild
  cache, add tests, and run quality tools.
tags:
  - drush
  - generators
  - workflow
kk_schema_version: 3
kk_id: practice-review-and-finish-generated-drupal-code
kk_derived_from:
  - 'https://www.drush.org/latest/generators/'
  - 'https://www.drush.org/latest/commands/generate/'
  - 'https://www.drupal.org/docs/develop/standards'
kk_relates_to:
  - map-developer-tools-drush-docs-map
  - map-drupal-migrate-api-reference
  - map-processing-workflow-moderation-map
kk_depends_on: []
kk_confidence: medium
---
Use Drush generators to scaffold Drupal components, but treat the output as boilerplate that must be reviewed and completed. Preview generators with `--dry-run` when useful, use `--answer` for non-interactive generation, and be careful with `--replace`.

After generation, review the generated files, add business logic, inject dependencies, rebuild caches with `vendor/bin/drush cr`, write tests, and run `phpcs` and `phpstan` before considering the component finished.

<!-- kk:related:start -->
# Related

- Related: [map-developer-tools-drush-docs-map](/drupal/tooling/map-developer-tools-drush-docs-map.md)
- Related: [map-drupal-migrate-api-reference](/drupal/tooling/map-drupal-migrate-api-reference.md)
- Related: [map-processing-workflow-moderation-map](/drupal/processing/workflows/map-processing-workflow-moderation-map.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drush.org/latest/generators/](https://www.drush.org/latest/generators/)
[2] [https://www.drush.org/latest/commands/generate/](https://www.drush.org/latest/commands/generate/)
[3] [https://www.drupal.org/docs/develop/standards](https://www.drupal.org/docs/develop/standards)
<!-- kk:citations:end -->
