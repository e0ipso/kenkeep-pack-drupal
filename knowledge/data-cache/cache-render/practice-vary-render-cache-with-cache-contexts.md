---
type: practice
title: Vary render cache with cache contexts
description: >-
  Use cache contexts to vary rendered output by user, permissions, route, URL,
  language, theme, or query args.
tags:
  - drupal
  - cache
  - render
kk_schema_version: 3
kk_id: practice-vary-render-cache-with-cache-contexts
kk_derived_from:
  - 'https://www.drupal.org/docs/drupal-apis/cache-api/cache-contexts'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21Context%21CacheContextsManager.php/class/CacheContextsManager/11.x
kk_relates_to:
  - practice-build-render-arrays-with-cache-metadata
  - practice-use-cacheable-dependencies-for-render-cache-metadata
  - map-non-form-render-element-types
kk_depends_on: []
kk_confidence: high
---
Cache contexts define how cached render output varies per request. Add the relevant contexts in a render array's `#cache.contexts` when output differs by user, permissions, roles, route, URL, query arguments, language, or theme.

Missing contexts can serve stale data to some users. Avoid `max-age: 0` when cacheability metadata can express the variation, and use lazy builders for per-user fragments inside otherwise cached pages.

<!-- kk:related:start -->
# Related

- Related: [practice-build-render-arrays-with-cache-metadata](/drupal/data-cache/cache-render/practice-build-render-arrays-with-cache-metadata.md)
- Related: [practice-use-cacheable-dependencies-for-render-cache-metadata](/drupal/data-cache/cache-render/practice-use-cacheable-dependencies-for-render-cache-metadata.md)
- Related: [map-non-form-render-element-types](/drupal/presentation/frontend-theme/map-non-form-render-element-types.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/cache-api/cache-contexts](https://www.drupal.org/docs/drupal-apis/cache-api/cache-contexts)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21Context%21CacheContextsManager.php/class/CacheContextsManager/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21Context%21CacheContextsManager.php/class/CacheContextsManager/11.x)
<!-- kk:citations:end -->
