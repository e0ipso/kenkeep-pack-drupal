# kenkeep Index: drupal / data-cache / storage-config

↑ Parent: [data-cache](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Define schema for Drupal configuration**](practice-define-schema-for-drupal-configuration.md) to learn about: Every module configuration object needs schema; modern config forms can bind fields with #config_target. #drupal #config #forms
- Open [**Define field type storage and typed data separately**](practice-field-types-define-storage-and-typed-data.md) to learn about: Field types use schema() for database columns and propertyDefinitions() for typed data properties. #drupal #fields #types
- Open [**Do not write directly to the state key-value collection**](practice-do-not-write-directly-to-state-key-value-collection.md) to learn about: Use the State API for state data and reserve direct Key-Value access for separate collections. #state #keyvalue #storage
- Open [**Clean up TempStore data after workflows**](practice-clean-up-tempstore-data-after-workflows.md) to learn about: Delete TempStore entries at the final form step or controller action and handle lock failures. #tempstore #forms #storage
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](practice-extend-layout-builder-with-storage-hooks-events.md) to learn about: Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior. #drupal #layout #plugins
- Open [**Keep runtime storage out of config export**](practice-keep-runtime-storage-out-of-config-export.md) to learn about: Store environment-specific runtime values in State or Key-Value, not exported Config. #state #config #storage
- Open [**Define config entity export and prefix explicitly**](practice-define-config-entity-export-and-prefix-explicitly.md) to learn about: Config entities need config_export for persisted properties and config_prefix for generated filenames. #drupal #entities #config
- Open [**Prefer #config_target for settings forms**](practice-prefer-config-target-for-settings-forms.md) to learn about: Use #config_target on Drupal 10.2+ settings forms instead of manual config load/save boilerplate. #forms #config #drupal
- Open [**Use Paragraphs Behaviors For Type-Level Configuration**](practice-use-paragraphs-behaviors-for-type-configuration.md) to learn about: Behaviors add configurable paragraph functionality through plugins without subclassing paragraph entities. #drupal #paragraphs #plugins

## Components (what exists)
- Open [**Data storage API purposes**](map-data-storage-api-purposes.md) to learn about: Key-Value, State, Config, Cache, and TempStore each serve distinct storage needs. #storage #state #cache
- Open [**Private and Shared TempStore roles**](map-private-and-shared-tempstore-roles.md) to learn about: PrivateTempStore isolates per-user drafts; SharedTempStore supports shared keys with ownership metadata. #tempstore #storage #forms

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #storage
- Open [**Clean up TempStore data after workflows**](practice-clean-up-tempstore-data-after-workflows.md) — Delete TempStore entries at the final form step or controller action and handle lock failures.
- Open [**Private and Shared TempStore roles**](map-private-and-shared-tempstore-roles.md) — PrivateTempStore isolates per-user drafts; SharedTempStore supports shared keys with ownership metadata.
- Open [**Data storage API purposes**](map-data-storage-api-purposes.md) — Key-Value, State, Config, Cache, and TempStore each serve distinct storage needs.
### #config
- Open [**Define schema for Drupal configuration**](practice-define-schema-for-drupal-configuration.md) — Every module configuration object needs schema; modern config forms can bind fields with #config_target.
- Open [**Prefer #config_target for settings forms**](practice-prefer-config-target-for-settings-forms.md) — Use #config_target on Drupal 10.2+ settings forms instead of manual config load/save boilerplate.
- Open [**Define config entity export and prefix explicitly**](practice-define-config-entity-export-and-prefix-explicitly.md) — Config entities need config_export for persisted properties and config_prefix for generated filenames.
### #forms
- Open [**Define schema for Drupal configuration**](practice-define-schema-for-drupal-configuration.md) — Every module configuration object needs schema; modern config forms can bind fields with #config_target.
- Open [**Prefer #config_target for settings forms**](practice-prefer-config-target-for-settings-forms.md) — Use #config_target on Drupal 10.2+ settings forms instead of manual config load/save boilerplate.
- Open [**Extend AddFormBase for custom Media Library add forms**](../../presentation/forms/practice-extend-addformbase-for-custom-media-add-forms.md) — Custom Media Library add forms should extend AddFormBase and build their input UI through buildInputElement().
### #state
- Open [**Data storage API purposes**](map-data-storage-api-purposes.md) — Key-Value, State, Config, Cache, and TempStore each serve distinct storage needs.
- Open [**Do not write directly to the state key-value collection**](practice-do-not-write-directly-to-state-key-value-collection.md) — Use the State API for state data and reserve direct Key-Value access for separate collections.
- Open [**Keep runtime storage out of config export**](practice-keep-runtime-storage-out-of-config-export.md) — Store environment-specific runtime values in State or Key-Value, not exported Config.
### #plugins
- Open [**Derivative plugins generate dynamic plugin instances**](../../architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md) — A deriver creates multiple plugin definitions from one base plugin using dynamic data.
- Open [**Drupal mail flow**](../../architecture/services/map-drupal-mail-flow.md) — MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output.
- Open [**Alter and debug plugin definitions through managers**](../../quality/practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.
### #tempstore
- Open [**Clean up TempStore data after workflows**](practice-clean-up-tempstore-data-after-workflows.md) — Delete TempStore entries at the final form step or controller action and handle lock failures.
- Open [**Private and Shared TempStore roles**](map-private-and-shared-tempstore-roles.md) — PrivateTempStore isolates per-user drafts; SharedTempStore supports shared keys with ownership metadata.
### #cache
- Open [**Use cacheable dependencies for render cache metadata**](../cache-render/practice-use-cacheable-dependencies-for-render-cache-metadata.md) — Attach cache metadata from entities/config with Drupal helpers instead of manually building cache tags.
- Open [**Vary render cache with cache contexts**](../cache-render/practice-vary-render-cache-with-cache-contexts.md) — Use cache contexts to vary rendered output by user, permissions, route, URL, language, theme, or query args.
- Open [**Build render arrays with cache metadata**](../cache-render/practice-build-render-arrays-with-cache-metadata.md) — Attach cache tags, contexts, max-age, libraries, and lazy builders directly to Drupal render arrays.
### #entities
- Open [**Use Database API only for custom tables**](../database/practice-use-database-api-only-for-custom-tables.md) — Use Entity API for content and reserve direct Database API queries for custom or audit tables.
- Open [**Use Database API sparingly for custom tables**](../database/practice-use-database-api-sparingly-for-custom-tables.md) — Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs.
- Open [**Typed Entity wrapper structure**](../../content-model/entities-fields/map-typed-entity-wrapper-structure.md) — Business wrappers live under WrappedEntities and typed repository plugins expose wrapped entity loading.
### #fields
- Open [**Build field formatters as render-array producers**](../cache-render/practice-field-formatters-return-render-arrays.md) — Field formatters live under Plugin\\Field\\FieldFormatter and return render arrays from viewElements().
- Open [**Build field widgets as field form elements**](../../presentation/forms/practice-field-widgets-build-form-elements.md) — Field widgets live under Plugin\\Field\\FieldWidget and add child form elements in formElement().
- Open [**Define field type storage and typed data separately**](practice-field-types-define-storage-and-typed-data.md) — Field types use schema() for database columns and propertyDefinitions() for typed data properties.
### #keyvalue
- Open [**Do not write directly to the state key-value collection**](practice-do-not-write-directly-to-state-key-value-collection.md) — Use the State API for state data and reserve direct Key-Value access for separate collections.
### #layout
- Open [**Account For Layout Builder Override Side Effects**](../cache-render/practice-account-for-layout-builder-overrides.md) — Per-entity overrides, inline blocks, and override edits have cache, entity, and revision consequences.
- Open [**Define layout plugins by complexity**](../../content-model/layout-paragraphs/practice-define-layout-plugins-by-complexity.md) — Use YAML-only layout plugins for simple regions and PHP layout classes for configurable layouts.
- Open [**Advanced Paragraphs Integrations Cover Layouts, Library Items, And Performance**](../../content-model/layout-paragraphs/map-paragraphs-advanced-layout-library-performance.md) — Layout Paragraphs, Paragraphs Library, and helper modules expand Paragraphs editing and reuse workflows.
### #paragraphs
- Open [**Advanced Paragraphs Integrations Cover Layouts, Library Items, And Performance**](../../content-model/layout-paragraphs/map-paragraphs-advanced-layout-library-performance.md) — Layout Paragraphs, Paragraphs Library, and helper modules expand Paragraphs editing and reuse workflows.
- Open [**Paragraphs Provide Structured Reusable Content Components**](../../content-model/layout-paragraphs/map-paragraphs-structured-content-composition.md) — Paragraphs use Entity Reference Revisions to compose structured components with revision-aware parent tracking.
- Open [**Keep Paragraphs Depth And Revisions Under Control**](../../content-model/layout-paragraphs/practice-keep-paragraphs-depth-and-revisions-under-control.md) — Limit nesting, plan for ERR revision growth, and choose widget modes that keep large paragraph forms usable.
### #types
- Open [**Define field type storage and typed data separately**](practice-field-types-define-storage-and-typed-data.md) — Field types use schema() for database columns and propertyDefinitions() for typed data properties.