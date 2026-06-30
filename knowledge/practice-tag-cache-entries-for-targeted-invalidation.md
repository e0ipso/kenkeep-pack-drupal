---
schema_version: 2
id: practice-tag-cache-entries-for-targeted-invalidation
title: Tag cache entries for targeted invalidation
kind: practice
tags:
  - drupal
  - cache
  - invalidation
derived_from: []
relates_to:
  - practice-account-for-layout-builder-overrides
  - practice-build-configurable-and-context-aware-plugins-with-cache-contexts
  - practice-build-render-arrays-with-cache-metadata
depends_on: []
confidence: high
summary: >-
  Attach cache tags that identify the data a cache item depends on so updates
  invalidate the right entries.
---
Cache tags identify what source data a cache entry depends on. Set entity, list, config, or custom tags when writing cache entries or applying render cacheability metadata.

Missing tags can leave data stale after updates. `Cache::PERMANENT` relies on tags for invalidation, and `CacheableMetadata` is the standard way to collect tags, contexts, and max-age before applying them to a render array.
