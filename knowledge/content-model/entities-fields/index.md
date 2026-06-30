---
schema_version: 2
summary: entity APIs, fields, typed entities, display modes, and entity queries; read before changing entity or field behavior
---
# Entities Fields Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Batch-load entities after querying IDs**](practice-batch-load-entities-after-querying-ids.md) to learn about: Query IDs first, then call loadMultiple instead of loading each entity one by one. #drupal #entities #performance
- Open [**Check content entity translations before loading them**](practice-content-translation-check-existing-translation-first.md) to learn about: When working with translated content entities, check translation availability before calling getTranslation(), use getUntranslated() for the default language, and remember that field translation is configured per field. #i18n #entities #translation
- Open [**Choose entity lifecycle hooks by save phase**](practice-choose-entity-lifecycle-hooks-by-save-phase.md) to learn about: Use the entity lifecycle hook that matches the phase: presave, insert/update, postsave, delete, load, or view. #drupal #entities #hooks
- Open [**Implement computed fields as access-time item lists**](practice-computed-fields-are-computed-on-access.md) to learn about: Computed Drupal fields use ComputedItemListTrait, setComputed(TRUE), and are not stored in the database. #drupal #fields #computed
- Open [**Keep business logic out of entity classes**](practice-keep-business-logic-out-of-entity-classes.md) to learn about: Put entity behavior in Typed Entity wrappers, not in entity classes or direct field mutations. #drupal #entities #typed-entity #architecture
- Open [**Prefer Entity Query for entity retrieval**](practice-prefer-entity-query-for-entity-retrieval.md) to learn about: Use Entity Query for normal entity reads and avoid direct Database API for entity operations. #drupal #entities #queries

## Components (what exists)
- Open [**Typed Entity wrapper structure**](map-typed-entity-wrapper-structure.md) to learn about: Business wrappers live under WrappedEntities and typed repositories expose wrapped entity loading. #drupal #entities #typed-entity

