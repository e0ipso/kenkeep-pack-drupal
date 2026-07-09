---
type: practice
title: Do not write directly to the state key-value collection
description: >-
  Use the State API for state data and reserve direct Key-Value access for
  separate collections.
tags:
  - state
  - keyvalue
  - storage
kk_schema_version: 3
kk_id: practice-do-not-write-directly-to-state-key-value-collection
kk_derived_from:
  - 'https://www.drupal.org/docs/develop/drupal-apis/state-api/state-api-overview'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21State%21State.php/class/State/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21KeyValueStore%21KeyValueFactoryInterface.php/interface/KeyValueFactoryInterface/11.x
kk_relates_to:
  - map-data-storage-api-purposes
  - practice-keep-runtime-storage-out-of-config-export
  - map-media-library-state-vocabulary
kk_depends_on: []
kk_confidence: medium
---
The State API uses the Key-Value backend internally with the reserved `state` collection. Do not write to that collection directly through Key-Value APIs.

Use State for simple environment-specific runtime values. Use direct Key-Value stores only when a module needs isolated collections or the expirable key-value variant.

<!-- kk:related:start -->
# Related

- Related: [map-data-storage-api-purposes](/drupal/data-cache/storage-config/map-data-storage-api-purposes.md)
- Related: [practice-keep-runtime-storage-out-of-config-export](/drupal/data-cache/storage-config/practice-keep-runtime-storage-out-of-config-export.md)
- Related: [map-media-library-state-vocabulary](/drupal/content-model/media-seo-search/map-media-library-state-vocabulary.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/drupal-apis/state-api/state-api-overview](https://www.drupal.org/docs/develop/drupal-apis/state-api/state-api-overview)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21State%21State.php/class/State/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21State%21State.php/class/State/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21KeyValueStore%21KeyValueFactoryInterface.php/interface/KeyValueFactoryInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21KeyValueStore%21KeyValueFactoryInterface.php/interface/KeyValueFactoryInterface/11.x)
<!-- kk:citations:end -->
