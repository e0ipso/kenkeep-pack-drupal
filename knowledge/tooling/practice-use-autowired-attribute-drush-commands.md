---
type: practice
title: Use autowired Symfony Console Drush commands
description: >-
  Build Drush 13.7+/14 commands with Symfony Console attributes, AutowireTrait,
  and constructor injection.
tags:
  - drush
  - commands
  - php
  - di
kk_schema_version: 3
kk_id: practice-use-autowired-attribute-drush-commands
kk_derived_from:
  - 'https://www.drush.org/14.x/commands/'
  - 'https://www.drush.org/14.x/dependency-injection/'
kk_relates_to:
  - practice-define-drush-commands-with-attributes-and-autowiring
  - practice-handle-drush-command-io-and-failures-explicitly
  - map-advanced-drupal-service-patterns
kk_depends_on: []
kk_confidence: high
---
For custom Drush commands, place command classes under `src/Drush/Commands/`, use a namespace ending in `\Drush\Commands`, and add `AutowireTrait`. Current Drush 13.7+/14 Symfony Console commands should use one command per file, `#[AsCommand]`, and a class/file name ending in `Command.php`; older annotated commandfiles often use a `Commands` suffix.

Define command name, aliases, usage, and visibility with Symfony Console attributes, then define arguments and options in `configure()` unless using Symfony 7.4 invokable attributes. Use Drush attributes only for supported formatter/optionset/validation metadata. Inject services through the constructor; use explicit Symfony `#[Autowire(service: ...)]` only when an interface or service needs a specific service ID.

When the command matches Drush's discovery rules, `AutowireTrait` handles service injection and no `drush.services.yml` is needed.

<!-- kk:related:start -->
# Related

- Related: [practice-define-drush-commands-with-attributes-and-autowiring](/drupal/tooling/practice-define-drush-commands-with-attributes-and-autowiring.md)
- Related: [practice-handle-drush-command-io-and-failures-explicitly](/drupal/tooling/practice-handle-drush-command-io-and-failures-explicitly.md)
- Related: [map-advanced-drupal-service-patterns](/drupal/architecture/services/map-advanced-drupal-service-patterns.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drush.org/14.x/commands/](https://www.drush.org/14.x/commands/)
[2] [https://www.drush.org/14.x/dependency-injection/](https://www.drush.org/14.x/dependency-injection/)
<!-- kk:citations:end -->
