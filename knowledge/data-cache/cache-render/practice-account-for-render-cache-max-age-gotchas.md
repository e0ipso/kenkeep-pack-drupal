---
type: practice
title: Account for render cache max-age gotchas
description: >-
  Treat render cache max-age as restrictive and unreliable for some
  anonymous/page-cache cases.
tags:
  - cache
  - render
  - gotcha
kk_schema_version: 3
kk_id: practice-account-for-render-cache-max-age-gotchas
kk_derived_from:
  - 'https://www.drupal.org/docs/drupal-apis/cache-api/cache-max-age'
  - 'https://www.drupal.org/docs/drupal-apis/cache-api/cache-contexts'
  - 'https://www.drupal.org/docs/administering-a-drupal-site/internal-page-cache'
kk_relates_to:
  - practice-build-render-arrays-with-cache-metadata
  - practice-use-cacheable-dependencies-for-render-cache-metadata
  - practice-vary-render-cache-with-cache-contexts
kk_depends_on: []
kk_confidence: medium
---
When render cache metadata is merged, the lowest max-age wins, so one restrictive child can reduce cacheability for the whole build. Calling `addCacheableDependency()` with an object that does not implement `CacheableDependencyInterface` makes the build uncacheable by setting max-age to 0.

For anonymous traffic, Internal Page Cache assumes the cached response is valid for all anonymous users of the same page and does not vary by arbitrary render cache contexts. Time-dependent anonymous content should not rely only on child render-array max-age with Page Cache or CDNs; use cache tags with cron-based invalidation where appropriate.

<!-- kk:related:start -->
# Related

- Related: [practice-build-render-arrays-with-cache-metadata](/drupal/data-cache/cache-render/practice-build-render-arrays-with-cache-metadata.md)
- Related: [practice-use-cacheable-dependencies-for-render-cache-metadata](/drupal/data-cache/cache-render/practice-use-cacheable-dependencies-for-render-cache-metadata.md)
- Related: [practice-vary-render-cache-with-cache-contexts](/drupal/data-cache/cache-render/practice-vary-render-cache-with-cache-contexts.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/cache-api/cache-max-age](https://www.drupal.org/docs/drupal-apis/cache-api/cache-max-age)
[2] [https://www.drupal.org/docs/drupal-apis/cache-api/cache-contexts](https://www.drupal.org/docs/drupal-apis/cache-api/cache-contexts)
[3] [https://www.drupal.org/docs/administering-a-drupal-site/internal-page-cache](https://www.drupal.org/docs/administering-a-drupal-site/internal-page-cache)
<!-- kk:citations:end -->
