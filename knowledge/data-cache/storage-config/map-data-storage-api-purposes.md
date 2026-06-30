---
schema_version: 2
id: map-data-storage-api-purposes
title: Data storage API purposes
kind: map
tags:
  - storage
  - state
  - cache
derived_from: []
relates_to:
  - practice-do-not-write-directly-to-state-key-value-collection
  - practice-keep-runtime-storage-out-of-config-export
  - practice-account-for-layout-builder-overrides
depends_on: []
confidence: medium
summary: >-
  Key-Value, State, Config, Cache, and TempStore each serve distinct storage
  needs.
---
Use Key-Value for low-level arbitrary runtime data organized by collection. Use State for environment-specific runtime data such as cron timestamps and temporary tokens. Use Config for user-editable settings and values that should be exported or version-controlled.

Use Cache for computed data that can be regenerated and may expire. Use TempStore for temporary key-value data scoped to user sessions or shared workflows, backed by expirable key-value storage rather than the cache system.
