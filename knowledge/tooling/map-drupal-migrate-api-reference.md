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
derived_from:
  - "https://www.drupal.org/docs/drupal-apis/migrate-api"
  - "https://api.drupal.org/api/drupal/core%21modules%21migrate%21src%21Plugin%21MigrateSourceInterface.php/interface/MigrateSourceInterface/11.x"
  - "https://www.drush.org/13.x/commands/migrate_import/"
  - "https://www.drupal.org/project/migrate_plus"
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
Drupal migrations are defined with migration YAML that includes an id, label, source plugin and identifiers, process mappings, destination plugin, and optional migration dependencies. Core migration plugin YAML commonly lives in a module `migrations/` directory; Migrate Plus config entities use `migrate_plus.migration.*` configuration.

Common core process plugins include get, default_value, skip_on_empty, migration_lookup, callback, static_map, and concat. `entity_lookup` and `entity_generate` are Migrate Plus process plugins, not Drupal core process plugins. Custom source plugins extend SourcePluginBase and provide initializeIterator(), fields(), and getIds().

Run migrations with `drush migrate:import`, `migrate:rollback`, `migrate:status`, and `migrate:reset-status` (or `ddev drush ...` in DDEV). Use migration_dependencies to control order, and pass --update when re-importing changed items.
