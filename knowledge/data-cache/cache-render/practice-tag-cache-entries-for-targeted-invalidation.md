---
type: practice
title: Tag cache entries for targeted invalidation
description: >-
  Attach cache tags that identify the data a cache item depends on so updates
  invalidate the right entries.
tags:
  - drupal
  - cache
  - invalidation
kk_schema_version: 3
kk_id: practice-tag-cache-entries-for-targeted-invalidation
kk_derived_from:
  - 'https://www.drupal.org/docs/drupal-apis/cache-api/cache-tags'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21Cache.php/function/Cache%3A%3AinvalidateTags/11.x
kk_relates_to:
  - practice-account-for-layout-builder-overrides
  - practice-build-configurable-and-context-aware-plugins-with-cache-contexts
  - practice-build-render-arrays-with-cache-metadata
kk_depends_on: []
kk_confidence: high
---
Cache tags identify what source data a cache entry depends on. Set entity, list, config, or custom tags when writing cache entries or applying render cacheability metadata.

Missing tags can leave data stale after updates. `Cache::PERMANENT` relies on tags for invalidation, and `CacheableMetadata` is the standard way to collect tags, contexts, and max-age before applying them to a render array.

<!-- kk:related:start -->
# Related

- Related: [practice-account-for-layout-builder-overrides](/drupal/data-cache/cache-render/practice-account-for-layout-builder-overrides.md)
- Related: [practice-build-configurable-and-context-aware-plugins-with-cache-contexts](/drupal/data-cache/cache-render/practice-build-configurable-and-context-aware-plugins-with-cache-contexts.md)
- Related: [practice-build-render-arrays-with-cache-metadata](/drupal/data-cache/cache-render/practice-build-render-arrays-with-cache-metadata.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/cache-api/cache-tags](https://www.drupal.org/docs/drupal-apis/cache-api/cache-tags)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21Cache.php/function/Cache%3A%3AinvalidateTags/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21Cache.php/function/Cache%3A%3AinvalidateTags/11.x)
<!-- kk:citations:end -->
