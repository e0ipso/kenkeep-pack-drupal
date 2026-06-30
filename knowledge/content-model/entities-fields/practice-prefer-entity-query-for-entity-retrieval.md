---
schema_version: 2
id: practice-prefer-entity-query-for-entity-retrieval
title: Prefer Entity Query for entity retrieval
kind: practice
tags:
  - drupal
  - entities
  - queries
derived_from:
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21Query%21QueryInterface.php/interface/QueryInterface/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityStorageInterface.php/interface/EntityStorageInterface/11.x"
relates_to:
  - practice-call-access-check-on-entity-queries
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
depends_on: []
confidence: high
summary: >-
  Use Entity Query for normal entity reads and avoid direct Database API for
  entity operations.
---
Entity queries are the preferred method for Drupal entity data retrieval when filtering by entity fields, base fields, revisions, translations, or access-aware conditions. Query entity IDs through storage `getQuery()`, explicitly call `accessCheck(TRUE)` or `accessCheck(FALSE)`, then load entity objects through storage methods such as `loadMultiple()`.

Avoid direct Database API for entity operations. Reserve lower-level database queries for the limited cases documented for custom non-entity tables, complex joins, migrations, or rare performance-specific SQL needs.
