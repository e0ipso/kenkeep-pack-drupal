---
schema_version: 2
id: practice-cache-computed-service-data-with-cachebackendinterface
title: Cache computed service data with CacheBackendInterface
kind: practice
tags:
  - drupal
  - services
  - cache
derived_from: []
relates_to:
  - map-advanced-drupal-service-patterns
  - map-drupal-service-definitions-and-common-services
  - map-symfony-events-and-custom-events
depends_on: []
confidence: medium
summary: >-
  Use CacheBackendInterface in services for computed data and attach tags for
  invalidation across bins.
---
For service-layer computed data, inject a cache backend such as `@cache.default` or a purpose-specific custom bin and read/write through `CacheBackendInterface`. Use stable cache IDs and include cache tags when setting data so invalidation can target dependent entries.

Use `Cache::invalidateTags()` when source data changes; tag invalidation applies across all bins. Keep render-layer cacheability metadata on render arrays and use the Cache API docs for tags, contexts, and max-age there.
