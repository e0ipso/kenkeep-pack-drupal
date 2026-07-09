---
type: practice
title: Clean up TempStore data after workflows
description: >-
  Delete TempStore entries at the final form step or controller action and
  handle lock failures.
tags:
  - tempstore
  - forms
  - storage
kk_schema_version: 3
kk_id: practice-clean-up-tempstore-data-after-workflows
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21PrivateTempStore.php/class/PrivateTempStore/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21SharedTempStore.php/class/SharedTempStore/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21KeyValueStore%21KeyValueExpirableFactoryInterface.php/interface/KeyValueExpirableFactoryInterface/11.x
kk_relates_to:
  - map-private-and-shared-tempstore-roles
  - map-data-storage-api-purposes
  - map-drupal-entity-form-bases
kk_depends_on: []
kk_confidence: medium
---
TempStore is temporary storage, so clean up entries in the final form step or controller action after the stored data has been processed. Both private and shared temp stores default to one week of expiration and are backed by expirable key-value storage.

Handle `TempStoreException` from `set()` and `delete()` when a lock cannot be acquired. Be careful with SharedTempStore: `delete()` does not enforce owner checks for the caller, so use `deleteIfOwner()` when ownership must be respected.

<!-- kk:related:start -->
# Related

- Related: [map-private-and-shared-tempstore-roles](/drupal/data-cache/storage-config/map-private-and-shared-tempstore-roles.md)
- Related: [map-data-storage-api-purposes](/drupal/data-cache/storage-config/map-data-storage-api-purposes.md)
- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21PrivateTempStore.php/class/PrivateTempStore/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21PrivateTempStore.php/class/PrivateTempStore/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21SharedTempStore.php/class/SharedTempStore/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21SharedTempStore.php/class/SharedTempStore/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21KeyValueStore%21KeyValueExpirableFactoryInterface.php/interface/KeyValueExpirableFactoryInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21KeyValueStore%21KeyValueExpirableFactoryInterface.php/interface/KeyValueExpirableFactoryInterface/11.x)
<!-- kk:citations:end -->
