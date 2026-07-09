---
type: map
title: Private and Shared TempStore roles
description: >-
  PrivateTempStore isolates per-user drafts; SharedTempStore supports shared
  keys with ownership metadata.
tags:
  - tempstore
  - storage
  - forms
kk_schema_version: 3
kk_id: map-private-and-shared-tempstore-roles
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21PrivateTempStore.php/class/PrivateTempStore/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21SharedTempStore.php/class/SharedTempStore/11.x
kk_relates_to:
  - practice-clean-up-tempstore-data-after-workflows
  - practice-define-schema-for-drupal-configuration
  - practice-do-not-write-directly-to-state-key-value-collection
kk_depends_on: []
kk_confidence: medium
---
`PrivateTempStore` is per-user temporary storage using keys internally prefixed with the owner ID. It is suited to multi-step forms and user drafts; anonymous users receive a session-based owner key.

`SharedTempStore` allows multiple users to access the same keys and tracks owner metadata for conflict detection. It supports operations such as `setIfNotExists()`, `setIfOwner()`, `getIfOwner()`, and `getMetadata()`.

<!-- kk:related:start -->
# Related

- Related: [practice-clean-up-tempstore-data-after-workflows](/drupal/data-cache/storage-config/practice-clean-up-tempstore-data-after-workflows.md)
- Related: [practice-define-schema-for-drupal-configuration](/drupal/data-cache/storage-config/practice-define-schema-for-drupal-configuration.md)
- Related: [practice-do-not-write-directly-to-state-key-value-collection](/drupal/data-cache/storage-config/practice-do-not-write-directly-to-state-key-value-collection.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21PrivateTempStore.php/class/PrivateTempStore/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21PrivateTempStore.php/class/PrivateTempStore/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21SharedTempStore.php/class/SharedTempStore/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21SharedTempStore.php/class/SharedTempStore/11.x)
<!-- kk:citations:end -->
