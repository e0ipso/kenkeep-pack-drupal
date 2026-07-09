---
type: practice
title: Prefer Entity Query for entity retrieval
description: >-
  Use Entity Query for normal entity reads and avoid direct Database API for
  entity operations.
tags:
  - drupal
  - entities
  - queries
kk_schema_version: 3
kk_id: practice-prefer-entity-query-for-entity-retrieval
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21Query%21QueryInterface.php/interface/QueryInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityStorageInterface.php/interface/EntityStorageInterface/11.x
kk_relates_to:
  - practice-call-access-check-on-entity-queries
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
kk_depends_on: []
kk_confidence: high
---
Entity queries are the preferred method for Drupal entity data retrieval when filtering by entity fields, base fields, revisions, translations, or access-aware conditions. Query entity IDs through storage `getQuery()`, explicitly call `accessCheck(TRUE)` or `accessCheck(FALSE)`, then load entity objects through storage methods such as `loadMultiple()`.

Avoid direct Database API for entity operations. Reserve lower-level database queries for the limited cases documented for custom non-entity tables, complex joins, migrations, or rare performance-specific SQL needs.

<!-- kk:related:start -->
# Related

- Related: [practice-call-access-check-on-entity-queries](/drupal/security/access/practice-call-access-check-on-entity-queries.md)
- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-typed-entity-wrapper-structure](/drupal/content-model/entities-fields/map-typed-entity-wrapper-structure.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21Query%21QueryInterface.php/interface/QueryInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21Query%21QueryInterface.php/interface/QueryInterface/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityStorageInterface.php/interface/EntityStorageInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityStorageInterface.php/interface/EntityStorageInterface/11.x)
<!-- kk:citations:end -->
