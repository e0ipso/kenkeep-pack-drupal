---
schema_version: 2
summary: Config, State, Key-Value, TempStore, and runtime storage boundaries; read before storing settings or workflow state
---
# Storage Config Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Clean up TempStore data after workflows**](practice-clean-up-tempstore-data-after-workflows.md) to learn about: Delete TempStore entries at the final form step or controller action and handle lock failures. #tempstore #forms #storage
- Open [**Define config entity export and prefix explicitly**](practice-define-config-entity-export-and-prefix-explicitly.md) to learn about: Config entities need config_export for persisted properties and config_prefix for generated filenames. #drupal #entities #config
- Open [**Define field type storage and typed data separately**](practice-field-types-define-storage-and-typed-data.md) to learn about: Field types use schema() for database columns and propertyDefinitions() for typed data properties. #drupal #fields #types
- Open [**Define schema for Drupal configuration**](practice-define-schema-for-drupal-configuration.md) to learn about: Every module configuration object needs schema; modern config forms can bind fields with #config_target. #drupal #config #forms
- Open [**Do not write directly to the state key-value collection**](practice-do-not-write-directly-to-state-key-value-collection.md) to learn about: Use the State API for state data and reserve direct Key-Value access for separate collections. #state #keyvalue #storage
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](practice-extend-layout-builder-with-storage-hooks-events.md) to learn about: Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior. #drupal #layout #plugins
- Open [**Keep runtime storage out of config export**](practice-keep-runtime-storage-out-of-config-export.md) to learn about: Store environment-specific runtime values in State or Key-Value, not exported Config. #state #config #storage
- Open [**Prefer #config_target for settings forms**](practice-prefer-config-target-for-settings-forms.md) to learn about: Use #config_target on Drupal 10.2+ settings forms instead of manual config load/save boilerplate. #forms #config #drupal
- Open [**Use Paragraphs Behaviors For Type-Level Configuration**](practice-use-paragraphs-behaviors-for-type-configuration.md) to learn about: Behaviors add configurable paragraph functionality through plugins without subclassing paragraph entities. #drupal #paragraphs #plugins

## Components (what exists)
- Open [**Data storage API purposes**](map-data-storage-api-purposes.md) to learn about: Key-Value, State, Config, Cache, and TempStore each serve distinct storage needs. #storage #state #cache
- Open [**Private and Shared TempStore roles**](map-private-and-shared-tempstore-roles.md) to learn about: PrivateTempStore isolates per-user drafts; SharedTempStore supports shared keys with ownership metadata. #tempstore #storage #forms

