---
schema_version: 2
id: practice-vary-render-cache-with-cache-contexts
title: Vary render cache with cache contexts
kind: practice
tags:
  - drupal
  - cache
  - render
derived_from:
  - https://www.drupal.org/docs/drupal-apis/cache-api/cache-contexts
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21Context%21CacheContextsManager.php/class/CacheContextsManager/11.x
relates_to:
  - practice-build-render-arrays-with-cache-metadata
  - practice-use-cacheable-dependencies-for-render-cache-metadata
  - map-non-form-render-element-types
depends_on: []
confidence: high
summary: >-
  Use cache contexts to vary rendered output by user, permissions, route, URL,
  language, theme, or query args.
---
Cache contexts define how cached render output varies per request. Add the relevant contexts in a render array's `#cache.contexts` when output differs by user, permissions, roles, route, URL, query arguments, language, or theme.

Missing contexts can serve stale data to some users. Avoid `max-age: 0` when cacheability metadata can express the variation, and use lazy builders for per-user fragments inside otherwise cached pages.
