---
type: practice
title: Batch-load entities after querying IDs
description: >-
  Query IDs first, then call loadMultiple instead of loading each entity one by
  one.
tags:
  - drupal
  - entities
  - performance
kk_schema_version: 3
kk_id: practice-batch-load-entities-after-querying-ids
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityStorageInterface.php/interface/EntityStorageInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21Query%21QueryInterface.php/interface/QueryInterface/11.x
kk_relates_to:
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
  - practice-align-content-entity-keys-with-base-fields
kk_depends_on: []
kk_confidence: medium
---
For entity query result handling, query IDs first with an explicit `accessCheck()` decision and load the entities in a batch with `loadMultiple()`. Avoid looping over IDs and calling `load()` for each one, which creates an N+1 query pattern.

For large datasets, reset storage cache entries after processing entities to free memory.

<!-- kk:related:start -->
# Related

- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-typed-entity-wrapper-structure](/drupal/content-model/entities-fields/map-typed-entity-wrapper-structure.md)
- Related: [practice-align-content-entity-keys-with-base-fields](/drupal/content-model/layout-paragraphs/practice-align-content-entity-keys-with-base-fields.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityStorageInterface.php/interface/EntityStorageInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityStorageInterface.php/interface/EntityStorageInterface/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21Query%21QueryInterface.php/interface/QueryInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21Query%21QueryInterface.php/interface/QueryInterface/11.x)
<!-- kk:citations:end -->
