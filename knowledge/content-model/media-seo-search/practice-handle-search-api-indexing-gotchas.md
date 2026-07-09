---
type: practice
title: Handle Search API indexing gotchas
description: >-
  Clear indexes after field changes, order processors carefully, and use Views
  for search pages.
tags:
  - search
  - drupal
  - gotcha
kk_schema_version: 3
kk_id: practice-handle-search-api-indexing-gotchas
kk_derived_from:
  - 'https://www.drupal.org/project/search_api'
  - >-
    https://www.drupal.org/docs/8/modules/search-api/developer-documentation/create-custom-fields-using-a-custom-processor
kk_relates_to:
  - map-search-api-concepts-and-extension-points
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
kk_depends_on: []
kk_confidence: medium
---
When working with Search API indexes, clear or reindex affected indexes after indexed field or processor configuration changes and pay attention to processor order.

Use Views for search pages because it integrates with Search API.

Search API plugin discovery uses annotations such as `@SearchApiProcessor` and `@SearchApiDatasource`, not PHP 8 attributes.

<!-- kk:related:start -->
# Related

- Related: [map-search-api-concepts-and-extension-points](/drupal/content-model/media-seo-search/map-search-api-concepts-and-extension-points.md)
- Related: [map-advanced-drupal-service-patterns](/drupal/architecture/services/map-advanced-drupal-service-patterns.md)
- Related: [map-ajax-command-reference-surface](/drupal/presentation/frontend-theme/map-ajax-command-reference-surface.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/project/search_api](https://www.drupal.org/project/search_api)
[2] [https://www.drupal.org/docs/8/modules/search-api/developer-documentation/create-custom-fields-using-a-custom-processor](https://www.drupal.org/docs/8/modules/search-api/developer-documentation/create-custom-fields-using-a-custom-processor)
<!-- kk:citations:end -->
