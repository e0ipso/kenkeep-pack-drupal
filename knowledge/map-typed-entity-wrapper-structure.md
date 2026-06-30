---
schema_version: 2
id: map-typed-entity-wrapper-structure
title: Typed Entity wrapper structure
kind: map
tags:
  - drupal
  - entities
  - typed-entity
derived_from: []
relates_to:
  - practice-keep-business-logic-out-of-entity-classes
  - practice-align-content-entity-keys-with-base-fields
  - practice-batch-load-entities-after-querying-ids
depends_on: []
confidence: medium
summary: >-
  Business wrappers live under WrappedEntities and typed repositories expose
  wrapped entity loading.
---
Typed Entity wrappers are modeled as final classes extending WrappedEntityBase, commonly placed under src/WrappedEntities, with a matching interface when needed.

Typed repositories extend TypedRepositoryBase, live under src/Repository, and return wrapped entities from finder methods such as findPending() or findByAuthor(). Repositories are registered as services, typically with autowiring and autoconfiguration enabled.
