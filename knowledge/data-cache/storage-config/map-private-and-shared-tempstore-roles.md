---
schema_version: 2
id: map-private-and-shared-tempstore-roles
title: Private and Shared TempStore roles
kind: map
tags:
  - tempstore
  - storage
  - forms
derived_from:
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21PrivateTempStore.php/class/PrivateTempStore/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TempStore%21SharedTempStore.php/class/SharedTempStore/11.x
relates_to:
  - practice-clean-up-tempstore-data-after-workflows
  - practice-define-schema-for-drupal-configuration
  - practice-do-not-write-directly-to-state-key-value-collection
depends_on: []
confidence: medium
summary: >-
  PrivateTempStore isolates per-user drafts; SharedTempStore supports shared
  keys with ownership metadata.
---
`PrivateTempStore` is per-user temporary storage using keys internally prefixed with the owner ID. It is suited to multi-step forms and user drafts; anonymous users receive a session-based owner key.

`SharedTempStore` allows multiple users to access the same keys and tracks owner metadata for conflict detection. It supports operations such as `setIfNotExists()`, `setIfOwner()`, `getIfOwner()`, and `getMetadata()`.
