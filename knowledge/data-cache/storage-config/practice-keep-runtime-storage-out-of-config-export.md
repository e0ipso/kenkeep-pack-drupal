---
type: practice
title: Keep runtime storage out of config export
description: >-
  Store environment-specific runtime values in State or Key-Value, not exported
  Config.
tags:
  - state
  - config
  - storage
kk_schema_version: 3
kk_id: practice-keep-runtime-storage-out-of-config-export
kk_derived_from:
  - 'https://www.drupal.org/docs/develop/drupal-apis/state-api/state-api-overview'
  - >-
    https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-api-overview
kk_relates_to:
  - map-data-storage-api-purposes
  - practice-do-not-write-directly-to-state-key-value-collection
  - map-media-library-state-vocabulary
kk_depends_on: []
kk_confidence: medium
---
State and Key-Value data are runtime-only and are not exported by `drush config:export`. Use them for values such as cron timestamps, non-secret runtime flags, and other environment-specific data.

Use Config for user-editable settings and values that should be shared across environments or version-controlled. Do not put runtime state into Config just because it is key-value shaped.

<!-- kk:related:start -->
# Related

- Related: [map-data-storage-api-purposes](/drupal/data-cache/storage-config/map-data-storage-api-purposes.md)
- Related: [practice-do-not-write-directly-to-state-key-value-collection](/drupal/data-cache/storage-config/practice-do-not-write-directly-to-state-key-value-collection.md)
- Related: [map-media-library-state-vocabulary](/drupal/content-model/media-seo-search/map-media-library-state-vocabulary.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/drupal-apis/state-api/state-api-overview](https://www.drupal.org/docs/develop/drupal-apis/state-api/state-api-overview)
[2] [https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-api-overview](https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-api-overview)
<!-- kk:citations:end -->
