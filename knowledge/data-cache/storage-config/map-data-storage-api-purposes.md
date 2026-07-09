---
type: map
title: Data storage API purposes
description: >-
  Key-Value, State, Config, Cache, and TempStore each serve distinct storage
  needs.
tags:
  - storage
  - state
  - cache
kk_schema_version: 3
kk_id: map-data-storage-api-purposes
kk_derived_from:
  - 'https://www.drupal.org/docs/develop/drupal-apis/state-api/state-api-overview'
  - >-
    https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-api-overview
  - 'https://www.drupal.org/docs/drupal-apis/cache-api'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21PrivateTempStore.php/class/PrivateTempStore/11.x
kk_relates_to:
  - practice-do-not-write-directly-to-state-key-value-collection
  - practice-keep-runtime-storage-out-of-config-export
  - practice-account-for-layout-builder-overrides
kk_depends_on: []
kk_confidence: medium
---
Use Key-Value for low-level arbitrary runtime data organized by collection. Use State for environment-specific runtime data such as cron timestamps and temporary tokens. Use Config for user-editable settings and values that should be exported or version-controlled.

Use Cache for computed data that can be regenerated and may expire. Use TempStore for temporary key-value data scoped to user sessions or shared workflows, backed by expirable key-value storage rather than the cache system.

<!-- kk:related:start -->
# Related

- Related: [practice-do-not-write-directly-to-state-key-value-collection](/drupal/data-cache/storage-config/practice-do-not-write-directly-to-state-key-value-collection.md)
- Related: [practice-keep-runtime-storage-out-of-config-export](/drupal/data-cache/storage-config/practice-keep-runtime-storage-out-of-config-export.md)
- Related: [practice-account-for-layout-builder-overrides](/drupal/data-cache/cache-render/practice-account-for-layout-builder-overrides.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/drupal-apis/state-api/state-api-overview](https://www.drupal.org/docs/develop/drupal-apis/state-api/state-api-overview)
[2] [https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-api-overview](https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-api-overview)
[3] [https://www.drupal.org/docs/drupal-apis/cache-api](https://www.drupal.org/docs/drupal-apis/cache-api)
[4] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21PrivateTempStore.php/class/PrivateTempStore/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21PrivateTempStore.php/class/PrivateTempStore/11.x)
<!-- kk:citations:end -->
