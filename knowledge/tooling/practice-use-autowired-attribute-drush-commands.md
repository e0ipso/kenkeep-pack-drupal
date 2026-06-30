---
schema_version: 2
id: practice-use-autowired-attribute-drush-commands
title: Use autowired Symfony Console Drush commands
kind: practice
tags:
  - drush
  - commands
  - php
  - di
derived_from:
  - "https://www.drush.org/14.x/commands/"
  - "https://www.drush.org/14.x/dependency-injection/"
relates_to:
  - practice-define-drush-commands-with-attributes-and-autowiring
  - practice-handle-drush-command-io-and-failures-explicitly
  - map-advanced-drupal-service-patterns
depends_on: []
confidence: high
summary: >-
  Build Drush 13.7+/14 commands with Symfony Console attributes,
  AutowireTrait, and constructor injection.
---
For custom Drush commands, place command classes under `src/Drush/Commands/`, use a namespace ending in `\Drush\Commands`, and add `AutowireTrait`. Current Drush 13.7+/14 Symfony Console commands should use one command per file, `#[AsCommand]`, and a class/file name ending in `Command.php`; older annotated commandfiles often use a `Commands` suffix.

Define command name, aliases, usage, and visibility with Symfony Console attributes, then define arguments and options in `configure()` unless using Symfony 7.4 invokable attributes. Use Drush attributes only for supported formatter/optionset/validation metadata. Inject services through the constructor; use explicit Symfony `#[Autowire(service: ...)]` only when an interface or service needs a specific service ID.

When the command matches Drush's discovery rules, `AutowireTrait` handles service injection and no `drush.services.yml` is needed.
