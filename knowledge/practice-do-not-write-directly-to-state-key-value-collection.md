---
schema_version: 2
id: practice-do-not-write-directly-to-state-key-value-collection
title: Do not write directly to the state key-value collection
kind: practice
tags:
  - state
  - keyvalue
  - storage
derived_from: []
relates_to:
  - map-data-storage-api-purposes
  - practice-keep-runtime-storage-out-of-config-export
  - map-media-library-state-vocabulary
depends_on: []
confidence: medium
summary: >-
  Use the State API for state data and reserve direct Key-Value access for
  separate collections.
---
The State API uses the Key-Value backend internally with the reserved `state` collection. Do not write to that collection directly through Key-Value APIs.

Use State for simple environment-specific runtime values. Use direct Key-Value stores only when a module needs isolated collections or the expirable key-value variant.
