---
schema_version: 2
id: practice-batch-load-entities-after-querying-ids
title: Batch-load entities after querying IDs
kind: practice
tags:
  - drupal
  - entities
  - performance
derived_from: []
relates_to:
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
  - practice-align-content-entity-keys-with-base-fields
depends_on: []
confidence: medium
summary: >-
  Query IDs first, then call loadMultiple instead of loading each entity one by
  one.
---
For entity query result handling, query IDs first and load the entities in a batch with loadMultiple(). Avoid looping over IDs and calling load() for each one, which creates an N+1 query pattern.

For large datasets, reset storage cache entries after processing entities to free memory.
