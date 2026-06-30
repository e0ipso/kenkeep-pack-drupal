---
schema_version: 2
summary: Drush, migrations, updates, install hooks, docs maps, and developer tooling; read before changing CLI or maintenance workflows
---
# Tooling Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Define Drush commands with attributes and autowiring**](practice-define-drush-commands-with-attributes-and-autowiring.md) to learn about: Custom Drush commands should use PHP attributes, AutowireTrait, constructor injection, and Symfony IO. #drupal #drush #commands
- Open [**Handle Drush command IO and failures explicitly**](practice-handle-drush-command-io-and-failures-explicitly.md) to learn about: Use Drush output helpers, confirmations, structured rows, batches, validation hooks, and exit codes for CLI behavior. #drush #commands #cli
- Open [**Keep install hooks for install-time work**](practice-keep-install-hooks-for-install-time-work.md) to learn about: Use module install hooks for install/uninstall tasks, non-entity schemas, and requirements, not later schema updates. #drupal #install #modules
- Open [**Run the Drupal security checklist before deploying**](practice-run-the-drupal-security-checklist-before-deploying.md) to learn about: Verify validation, database safety, escaping, access control, files, secrets, APIs, and infra. #security #deployment #checklist #drupal
- Open [**Use autowired PHP attribute Drush commands**](practice-use-autowired-attribute-drush-commands.md) to learn about: Build custom Drush 13 commands with PHP 8 attributes, AutowireTrait, and constructor injection. #drush #commands #php #di
- Open [**Use update hooks for schema and post updates for data**](practice-use-update-hooks-for-schema-and-post-updates-for-data.md) to learn about: Schema changes belong in numbered hook_update_N functions; data changes belong in named post updates. #drupal #updates #schema

## Components (what exists)
- Open [**Developer tools Drush docs map**](map-developer-tools-drush-docs-map.md) to learn about: The Drush developer docs are split into command patterns, generators, and command reference files. #docs #drush #developer-tools
- Open [**Drupal Migrate API Reference**](map-drupal-migrate-api-reference.md) to learn about: Use migration YAML, process plugins, source plugins, and Drush commands to define and run Drupal migrations. #drupal #migration #migrate #drush
- Open [**Extensibility docs cover hooks, events, tokens, and updates**](map-extensibility-docs-map.md) to learn about: The docs/extensibility folder is organized around Drupal extension mechanisms and links related detail pages together. #docs #extensibility #map

