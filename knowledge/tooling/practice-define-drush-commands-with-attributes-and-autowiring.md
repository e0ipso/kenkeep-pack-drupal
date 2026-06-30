---
schema_version: 2
id: practice-define-drush-commands-with-attributes-and-autowiring
title: Define Drush commands with attributes and autowiring
kind: practice
tags:
  - drupal
  - drush
  - commands
derived_from:
  - "https://www.drush.org/14.x/commands/"
  - "https://www.drush.org/14.x/dependency-injection/"
  - "https://www.drush.org/14.x/output-formats-filters/"
relates_to:
  - map-drupal-migrate-api-reference
  - practice-handle-drush-command-io-and-failures-explicitly
  - practice-use-autowired-attribute-drush-commands
depends_on: []
confidence: medium
summary: >-
  Custom Drush commands should use Symfony Console command classes,
  AutowireTrait, constructor injection, and structured output helpers.
---
Define custom Drush commands under `src/Drush/Commands`. On Drush 13.7+/14, prefer one Symfony Console command class per file with `#[AsCommand]`, `configure()` for arguments/options, `execute()` for CLI flow, and `AutowireTrait` for service injection.

Drush attribute/annotation commandfiles and `DrushCommands` are legacy patterns in Drush 14. Only add `drush.services.yml` for old commandfiles that cannot use `AutowireTrait`; that service file is distinct from a module `.services.yml`. Use constructor injection for dependencies and Symfony Console or Drush formatter helpers for output.
