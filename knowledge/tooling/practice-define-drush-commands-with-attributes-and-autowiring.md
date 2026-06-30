---
schema_version: 2
id: practice-define-drush-commands-with-attributes-and-autowiring
title: Define Drush commands with attributes and autowiring
kind: practice
tags:
  - drupal
  - drush
  - commands
derived_from: []
relates_to:
  - map-drupal-migrate-api-reference
  - practice-handle-drush-command-io-and-failures-explicitly
  - practice-use-autowired-attribute-drush-commands
depends_on: []
confidence: medium
summary: >-
  Custom Drush commands should use PHP attributes, AutowireTrait, constructor
  injection, and Symfony IO.
---
Define custom Drush commands under `src/Drush/Commands` by extending `DrushCommands`, using `Drush\Attributes` for command metadata, and using `AutowireTrait` for automatic discovery and service injection.

Only add `drush.services.yml` when the command cannot use `AutowireTrait`; that service file is distinct from a module `.services.yml`. Use constructor injection for dependencies and `$this->io()` for Symfony console output.
