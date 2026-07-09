---
type: map
title: Typed Entity wrapper structure
description: >-
  Business wrappers live under WrappedEntities and typed repository plugins
  expose wrapped entity loading.
tags:
  - drupal
  - entities
  - typed-entity
kk_schema_version: 3
kk_id: map-typed-entity-wrapper-structure
kk_derived_from:
  - 'https://www.drupal.org/project/typed_entity'
kk_relates_to:
  - practice-keep-business-logic-out-of-entity-classes
  - practice-align-content-entity-keys-with-base-fields
  - practice-batch-load-entities-after-querying-ids
kk_depends_on: []
kk_confidence: medium
---
Typed Entity wrappers are modeled as classes extending `WrappedEntityBase`, commonly placed under `src/WrappedEntities`, with a matching interface when needed.

Current Typed Entity repositories are plugins that extend `TypedRepositoryBase` and are commonly placed under `src/Plugin/TypedRepositories`. Repository finder methods return wrapped entities from methods such as `findPending()` or `findByAuthor()`. Older service-style repository examples are useful migration references, not the current default pattern.

<!-- kk:related:start -->
# Related

- Related: [practice-keep-business-logic-out-of-entity-classes](/drupal/content-model/entities-fields/practice-keep-business-logic-out-of-entity-classes.md)
- Related: [practice-align-content-entity-keys-with-base-fields](/drupal/content-model/layout-paragraphs/practice-align-content-entity-keys-with-base-fields.md)
- Related: [practice-batch-load-entities-after-querying-ids](/drupal/content-model/entities-fields/practice-batch-load-entities-after-querying-ids.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/project/typed_entity](https://www.drupal.org/project/typed_entity)
<!-- kk:citations:end -->
