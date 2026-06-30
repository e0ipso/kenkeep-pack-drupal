---
schema_version: 2
id: practice-prefer-entity-query-for-entity-retrieval
title: Prefer Entity Query for entity retrieval
kind: practice
tags:
  - drupal
  - entities
  - queries
derived_from: []
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
Entity queries are the preferred method for Drupal entity data retrieval. Query entity IDs through storage getQuery(), then load entity objects through storage methods such as loadMultiple().

Avoid direct Database API for entity operations. Reserve lower-level database queries for the limited cases documented for custom non-entity tables, complex joins, migrations, or rare performance-specific SQL needs.
