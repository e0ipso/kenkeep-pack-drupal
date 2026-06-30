---
schema_version: 2
id: practice-use-autowired-attribute-drush-commands
title: Use autowired PHP attribute Drush commands
kind: practice
tags:
  - drush
  - commands
  - php
  - di
derived_from: []
relates_to:
  - practice-define-drush-commands-with-attributes-and-autowiring
  - practice-handle-drush-command-io-and-failures-explicitly
  - map-advanced-drupal-service-patterns
depends_on: []
confidence: high
summary: >-
  Build custom Drush 13 commands with PHP 8 attributes, AutowireTrait, and
  constructor injection.
---
For custom Drush commands, place command classes under `src/Drush/Commands/`, use a namespace ending in `\Drush\Commands`, name the class with a `Commands` suffix, and add `AutowireTrait`.

Define commands, arguments, options, validation, usage, and output metadata with Drush PHP 8 attributes. Inject services through the constructor; use explicit Symfony `#[Autowire(service: ...)]` only when an interface or service needs a specific service ID.

With `AutowireTrait`, commands are auto-discovered and no `drush.services.yml` is needed.
