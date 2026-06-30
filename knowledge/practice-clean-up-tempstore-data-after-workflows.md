---
schema_version: 2
id: practice-clean-up-tempstore-data-after-workflows
title: Clean up TempStore data after workflows
kind: practice
tags:
  - tempstore
  - forms
  - storage
derived_from: []
relates_to:
  - map-private-and-shared-tempstore-roles
  - map-data-storage-api-purposes
  - map-drupal-entity-form-bases
depends_on: []
confidence: medium
summary: >-
  Delete TempStore entries at the final form step or controller action and
  handle lock failures.
---
TempStore is temporary storage, so clean up entries in the final form step or controller action after the stored data has been processed. Both private and shared temp stores default to one week of expiration and are backed by expirable key-value storage.

Handle `TempStoreException` from `set()` and `delete()` when a lock cannot be acquired. Be careful with SharedTempStore: `delete()` does not check ownership, so any user can delete any key.
