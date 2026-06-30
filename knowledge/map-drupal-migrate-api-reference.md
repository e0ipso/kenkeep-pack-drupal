---
schema_version: 2
id: map-drupal-migrate-api-reference
title: Drupal Migrate API Reference
kind: map
tags:
  - drupal
  - migration
  - migrate
  - drush
derived_from: []
relates_to:
  - practice-define-drush-commands-with-attributes-and-autowiring
  - practice-account-for-layout-builder-overrides
  - practice-align-content-entity-keys-with-base-fields
depends_on: []
confidence: medium
summary: >-
  Use migration YAML, process plugins, source plugins, and Drush commands to
  define and run Drupal migrations.
---
Drupal migrations are defined with migration YAML that includes an id, label, source plugin and identifiers, process mappings, destination plugin, and optional migration dependencies. The example maps CSV user data into entity:user records and uses process plugins such as default_value and entity_lookup.

Common process plugins include get, default_value, skip_on_empty, entity_lookup, entity_generate, migration_lookup, callback, static_map, and concat. Custom source plugins extend SourcePluginBase and provide initializeIterator(), fields(), and getIds().

Run migrations with ddev drush migrate:import, migrate:rollback, migrate:status, and migrate:reset-status. Place migration YAML in a migrations/ directory, use migration_dependencies to control order, and pass --update when re-importing changed items.
