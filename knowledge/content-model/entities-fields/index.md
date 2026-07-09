# kenkeep Index: drupal / content-model / entities-fields

↑ Parent: [content-model](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Batch-load entities after querying IDs**](practice-batch-load-entities-after-querying-ids.md) to learn about: Query IDs first, then call loadMultiple instead of loading each entity one by one. #drupal #entities #performance
- Open [**Choose entity lifecycle hooks by save phase**](practice-choose-entity-lifecycle-hooks-by-save-phase.md) to learn about: Use the entity lifecycle hook that matches the phase: presave, insert/update, predelete/delete, load, or view. #drupal #entities #hooks
- Open [**Implement computed fields as access-time item lists**](practice-computed-fields-are-computed-on-access.md) to learn about: Computed Drupal fields use ComputedItemListTrait, setComputed(TRUE), and are not stored in the database. #drupal #fields #computed
- Open [**Keep business logic out of entity classes**](practice-keep-business-logic-out-of-entity-classes.md) to learn about: Put domain behavior in Typed Entity wrappers instead of scattering it through entity classes or direct field mutations. #drupal #entities #typed-entity #architecture
- Open [**Check content entity translations before loading them**](practice-content-translation-check-existing-translation-first.md) to learn about: When working with translated content entities, check translation availability before calling getTranslation(), use getUntranslated() for the default language, and remember that field translation is configured per field. #i18n #entities #translation
- Open [**Prefer Entity Query for entity retrieval**](practice-prefer-entity-query-for-entity-retrieval.md) to learn about: Use Entity Query for normal entity reads and avoid direct Database API for entity operations. #drupal #entities #queries

## Components (what exists)
- Open [**Typed Entity wrapper structure**](map-typed-entity-wrapper-structure.md) to learn about: Business wrappers live under WrappedEntities and typed repository plugins expose wrapped entity loading. #drupal #entities #typed-entity

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #entities
- Open [**Use Database API only for custom tables**](../../data-cache/database/practice-use-database-api-only-for-custom-tables.md) — Use Entity API for content and reserve direct Database API queries for custom or audit tables.
- Open [**Use Database API sparingly for custom tables**](../../data-cache/database/practice-use-database-api-sparingly-for-custom-tables.md) — Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs.
- Open [**Typed Entity wrapper structure**](map-typed-entity-wrapper-structure.md) — Business wrappers live under WrappedEntities and typed repository plugins expose wrapped entity loading.
### #typed-entity
- Open [**Typed Entity wrapper structure**](map-typed-entity-wrapper-structure.md) — Business wrappers live under WrappedEntities and typed repository plugins expose wrapped entity loading.
- Open [**Keep business logic out of entity classes**](practice-keep-business-logic-out-of-entity-classes.md) — Put domain behavior in Typed Entity wrappers instead of scattering it through entity classes or direct field mutations.
### #architecture
- Open [**Keep business logic out of entity classes**](practice-keep-business-logic-out-of-entity-classes.md) — Put domain behavior in Typed Entity wrappers instead of scattering it through entity classes or direct field mutations.
- Open [**Media Library uses state, openers, and add forms**](../media-seo-search/map-media-library-three-component-architecture.md) — Media Library selection is organized around MediaLibraryState, opener services, and AddFormBase implementations.
### #computed
- Open [**Implement computed fields as access-time item lists**](practice-computed-fields-are-computed-on-access.md) — Computed Drupal fields use ComputedItemListTrait, setComputed(TRUE), and are not stored in the database.
### #fields
- Open [**Build field formatters as render-array producers**](../../data-cache/cache-render/practice-field-formatters-return-render-arrays.md) — Field formatters live under Plugin\\Field\\FieldFormatter and return render arrays from viewElements().
- Open [**Build field widgets as field form elements**](../../presentation/forms/practice-field-widgets-build-form-elements.md) — Field widgets live under Plugin\\Field\\FieldWidget and add child form elements in formElement().
- Open [**Define field type storage and typed data separately**](../../data-cache/storage-config/practice-field-types-define-storage-and-typed-data.md) — Field types use schema() for database columns and propertyDefinitions() for typed data properties.
### #hooks
- Open [**Choose entity lifecycle hooks by save phase**](practice-choose-entity-lifecycle-hooks-by-save-phase.md) — Use the entity lifecycle hook that matches the phase: presave, insert/update, predelete/delete, load, or view.
- Open [**Reserve procedural hooks for required cases**](../../architecture/hooks-events/practice-only-procedural-hooks-for-container-unavailable-cases.md) — Most Drupal 11.1+ module hooks should be OOP, but early install/update/schema and meta hooks remain procedural; requirements hooks have newer replacements.
- Open [**Use subscribers for events, entity hooks for entities**](../../architecture/hooks-events/practice-use-event-subscribers-for-events-not-entity-operations.md) — Event subscribers are documented for kernel, config, and custom events; entity operations should use entity hooks instead.
### #i18n
- Open [**Check content entity translations before loading them**](practice-content-translation-check-existing-translation-first.md) — When working with translated content entities, check translation availability before calling getTranslation(), use getUntranslated() for the default language, and remember that field translation is configured per field.
- Open [**Keep translation strings extractable and placeholder-safe**](../../presentation/frontend-theme/practice-translation-strings-must-be-extractable.md) — Use Drupal translation APIs with literal source strings, placeholders, and plural forms; do not concatenate translated text or pass variables as the source string.
### #performance
- Open [**Batch-load entities after querying IDs**](practice-batch-load-entities-after-querying-ids.md) — Query IDs first, then call loadMultiple instead of loading each entity one by one.
- Open [**Keep Paragraphs Depth And Revisions Under Control**](../layout-paragraphs/practice-keep-paragraphs-depth-and-revisions-under-control.md) — Limit nesting, plan for ERR revision growth, and choose widget modes that keep large paragraph forms usable.
### #queries
- Open [**Call accessCheck on entity queries**](../../security/access/practice-call-access-check-on-entity-queries.md) — Every entity query must set accessCheck explicitly in Drupal 10 and later.
- Open [**Prefer Entity Query for entity retrieval**](practice-prefer-entity-query-for-entity-retrieval.md) — Use Entity Query for normal entity reads and avoid direct Database API for entity operations.
### #translation
- Open [**Check content entity translations before loading them**](practice-content-translation-check-existing-translation-first.md) — When working with translated content entities, check translation availability before calling getTranslation(), use getUntranslated() for the default language, and remember that field translation is configured per field.