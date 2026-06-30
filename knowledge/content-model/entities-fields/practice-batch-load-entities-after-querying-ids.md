---
schema_version: 2
id: practice-batch-load-entities-after-querying-ids
title: Batch-load entities after querying IDs
kind: practice
tags:
  - drupal
  - entities
  - performance
derived_from:
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityStorageInterface.php/interface/EntityStorageInterface/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21Query%21QueryInterface.php/interface/QueryInterface/11.x"
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
For entity query result handling, query IDs first with an explicit `accessCheck()` decision and load the entities in a batch with `loadMultiple()`. Avoid looping over IDs and calling `load()` for each one, which creates an N+1 query pattern.

For large datasets, reset storage cache entries after processing entities to free memory.
