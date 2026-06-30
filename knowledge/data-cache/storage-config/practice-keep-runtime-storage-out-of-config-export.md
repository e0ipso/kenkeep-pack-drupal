---
schema_version: 2
id: practice-keep-runtime-storage-out-of-config-export
title: Keep runtime storage out of config export
kind: practice
tags:
  - state
  - config
  - storage
derived_from:
  - https://www.drupal.org/docs/develop/drupal-apis/state-api/state-api-overview
  - https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-api-overview
relates_to:
  - map-data-storage-api-purposes
  - practice-do-not-write-directly-to-state-key-value-collection
  - map-media-library-state-vocabulary
depends_on: []
confidence: medium
summary: >-
  Store environment-specific runtime values in State or Key-Value, not exported
  Config.
---
State and Key-Value data are runtime-only and are not exported by `drush config:export`. Use them for values such as cron timestamps, non-secret runtime flags, and other environment-specific data.

Use Config for user-editable settings and values that should be shared across environments or version-controlled. Do not put runtime state into Config just because it is key-value shaped.
