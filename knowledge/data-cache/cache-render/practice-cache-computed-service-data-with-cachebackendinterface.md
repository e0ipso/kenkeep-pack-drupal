---
type: practice
title: Cache computed service data with CacheBackendInterface
description: >-
  Use CacheBackendInterface in services for computed data and attach tags for
  invalidation across bins.
tags:
  - drupal
  - services
  - cache
kk_schema_version: 3
kk_id: practice-cache-computed-service-data-with-cachebackendinterface
kk_derived_from:
  - 'https://www.drupal.org/docs/drupal-apis/cache-api'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheBackendInterface.php/interface/CacheBackendInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheTagsInvalidatorInterface.php/interface/CacheTagsInvalidatorInterface/11.x
kk_relates_to:
  - map-advanced-drupal-service-patterns
  - map-drupal-service-definitions-and-common-services
  - map-symfony-events-and-custom-events
kk_depends_on: []
kk_confidence: medium
---
For service-layer computed data, inject a cache backend such as `@cache.default` or a purpose-specific custom bin and read/write through `CacheBackendInterface`. Use stable cache IDs and include cache tags when setting data so invalidation can target dependent entries.

Invalidate tags when source data changes, preferably through the `cache_tags.invalidator` service in services; tag invalidation applies across all bins. Keep render-layer cacheability metadata on render arrays and use the Cache API docs for tags, contexts, and max-age there.

<!-- kk:related:start -->
# Related

- Related: [map-advanced-drupal-service-patterns](/drupal/architecture/services/map-advanced-drupal-service-patterns.md)
- Related: [map-drupal-service-definitions-and-common-services](/drupal/architecture/services/map-drupal-service-definitions-and-common-services.md)
- Related: [map-symfony-events-and-custom-events](/drupal/architecture/services/map-symfony-events-and-custom-events.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/cache-api](https://www.drupal.org/docs/drupal-apis/cache-api)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheBackendInterface.php/interface/CacheBackendInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheBackendInterface.php/interface/CacheBackendInterface/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheTagsInvalidatorInterface.php/interface/CacheTagsInvalidatorInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheTagsInvalidatorInterface.php/interface/CacheTagsInvalidatorInterface/11.x)
<!-- kk:citations:end -->
