---
type: practice
title: Use cacheable dependencies for render cache metadata
description: >-
  Attach cache metadata from entities/config with Drupal helpers instead of
  manually building cache tags.
tags:
  - cache
  - render
  - drupal
kk_schema_version: 3
kk_id: practice-use-cacheable-dependencies-for-render-cache-metadata
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheableMetadata.php/class/CacheableMetadata/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheableDependencyInterface.php/interface/CacheableDependencyInterface/11.x
kk_relates_to:
  - practice-build-render-arrays-with-cache-metadata
  - practice-vary-render-cache-with-cache-contexts
  - map-non-form-render-element-types
kk_depends_on: []
kk_confidence: medium
---
For render arrays and cacheable responses, use `addCacheableDependency()` or `CacheableMetadata::createFromObject()` to transfer cache tags, contexts, and max-age from entities, users, and config. Do not manually concatenate entity cache tag strings such as `node:` plus an ID.

Use `$entity->getCacheTags()` for entity-specific tags and entity type list cache tags for list queries. Invalidate cache tags through `Cache::invalidateTags()` so invalidation reaches all cache bins.

<!-- kk:related:start -->
# Related

- Related: [practice-build-render-arrays-with-cache-metadata](/drupal/data-cache/cache-render/practice-build-render-arrays-with-cache-metadata.md)
- Related: [practice-vary-render-cache-with-cache-contexts](/drupal/data-cache/cache-render/practice-vary-render-cache-with-cache-contexts.md)
- Related: [map-non-form-render-element-types](/drupal/presentation/frontend-theme/map-non-form-render-element-types.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheableMetadata.php/class/CacheableMetadata/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheableMetadata.php/class/CacheableMetadata/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheableDependencyInterface.php/interface/CacheableDependencyInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheableDependencyInterface.php/interface/CacheableDependencyInterface/11.x)
<!-- kk:citations:end -->
