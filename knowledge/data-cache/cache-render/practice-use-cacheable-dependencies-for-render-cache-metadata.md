---
schema_version: 2
id: practice-use-cacheable-dependencies-for-render-cache-metadata
title: Use cacheable dependencies for render cache metadata
kind: practice
tags:
  - cache
  - render
  - drupal
derived_from: []
relates_to:
  - practice-build-render-arrays-with-cache-metadata
  - practice-vary-render-cache-with-cache-contexts
  - map-non-form-render-element-types
depends_on: []
confidence: medium
summary: >-
  Attach cache metadata from entities/config with Drupal helpers instead of
  manually building cache tags.
---
For render arrays and cacheable responses, use `addCacheableDependency()` or `CacheableMetadata::createFromObject()` to transfer cache tags, contexts, and max-age from entities, users, and config. Do not manually concatenate entity cache tag strings such as `node:` plus an ID.

Use `$entity->getCacheTags()` for entity-specific tags and entity type list cache tags for list queries. Invalidate cache tags through `Cache::invalidateTags()` so invalidation reaches all cache bins.
