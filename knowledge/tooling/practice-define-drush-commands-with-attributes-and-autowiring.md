---
type: practice
title: Define Drush commands with attributes and autowiring
description: >-
  Custom Drush commands should use Symfony Console command classes,
  AutowireTrait, constructor injection, and structured output helpers.
tags:
  - drupal
  - drush
  - commands
kk_schema_version: 3
kk_id: practice-define-drush-commands-with-attributes-and-autowiring
kk_derived_from:
  - 'https://www.drush.org/14.x/commands/'
  - 'https://www.drush.org/14.x/dependency-injection/'
  - 'https://www.drush.org/14.x/output-formats-filters/'
kk_relates_to:
  - map-drupal-migrate-api-reference
  - practice-handle-drush-command-io-and-failures-explicitly
  - practice-use-autowired-attribute-drush-commands
kk_depends_on: []
kk_confidence: medium
---
Define custom Drush commands under `src/Drush/Commands`. On Drush 13.7+/14, prefer one Symfony Console command class per file with `#[AsCommand]`, `configure()` for arguments/options, `execute()` for CLI flow, and `AutowireTrait` for service injection.

Drush attribute/annotation commandfiles and `DrushCommands` are legacy patterns in Drush 14. Only add `drush.services.yml` for old commandfiles that cannot use `AutowireTrait`; that service file is distinct from a module `.services.yml`. Use constructor injection for dependencies and Symfony Console or Drush formatter helpers for output.

<!-- kk:related:start -->
# Related

- Related: [map-drupal-migrate-api-reference](/drupal/tooling/map-drupal-migrate-api-reference.md)
- Related: [practice-handle-drush-command-io-and-failures-explicitly](/drupal/tooling/practice-handle-drush-command-io-and-failures-explicitly.md)
- Related: [practice-use-autowired-attribute-drush-commands](/drupal/tooling/practice-use-autowired-attribute-drush-commands.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drush.org/14.x/commands/](https://www.drush.org/14.x/commands/)
[2] [https://www.drush.org/14.x/dependency-injection/](https://www.drush.org/14.x/dependency-injection/)
[3] [https://www.drush.org/14.x/output-formats-filters/](https://www.drush.org/14.x/output-formats-filters/)
<!-- kk:citations:end -->
