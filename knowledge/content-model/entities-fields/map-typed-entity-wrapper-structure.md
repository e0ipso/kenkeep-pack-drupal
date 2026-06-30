---
schema_version: 2
id: map-typed-entity-wrapper-structure
title: Typed Entity wrapper structure
kind: map
tags:
  - drupal
  - entities
  - typed-entity
derived_from:
  - "https://www.drupal.org/project/typed_entity"
relates_to:
  - practice-keep-business-logic-out-of-entity-classes
  - practice-align-content-entity-keys-with-base-fields
  - practice-batch-load-entities-after-querying-ids
depends_on: []
confidence: medium
summary: >-
  Business wrappers live under WrappedEntities and typed repository plugins
  expose wrapped entity loading.
---
Typed Entity wrappers are modeled as classes extending `WrappedEntityBase`, commonly placed under `src/WrappedEntities`, with a matching interface when needed.

Current Typed Entity repositories are plugins that extend `TypedRepositoryBase` and are commonly placed under `src/Plugin/TypedRepositories`. Repository finder methods return wrapped entities from methods such as `findPending()` or `findByAuthor()`. Older service-style repository examples are useful migration references, not the current default pattern.
