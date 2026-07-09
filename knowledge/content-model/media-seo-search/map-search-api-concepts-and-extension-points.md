---
type: map
title: Search API concepts and extension points
description: >-
  Search API indexes content through indexes, servers, datasources, and
  processors.
tags:
  - search
  - drupal
  - api
kk_schema_version: 3
kk_id: map-search-api-concepts-and-extension-points
kk_derived_from:
  - 'https://www.drupal.org/project/search_api'
  - >-
    https://www.drupal.org/docs/8/modules/search-api/developer-documentation/create-custom-fields-using-a-custom-processor
kk_relates_to:
  - practice-handle-search-api-indexing-gotchas
  - practice-processing-queue-api-operations
  - practice-account-for-layout-builder-overrides
kk_depends_on: []
kk_confidence: medium
---
The Search API module provides the indexing framework: an index defines what content to index, a server provides the backend such as Database, Solr, or Elasticsearch, a datasource identifies the content or other data to index, and a processor transforms indexed data.

Search queries are built from an index query object, with keys, conditions, sorting, ranges, and result items whose original objects can be loaded from each result item.

Custom extension points include processors based on `ProcessorPluginBase`, datasources based on `DatasourcePluginBase`, and programmatic indexing through the `Index` entity.

<!-- kk:related:start -->
# Related

- Related: [practice-handle-search-api-indexing-gotchas](/drupal/content-model/media-seo-search/practice-handle-search-api-indexing-gotchas.md)
- Related: [practice-processing-queue-api-operations](/drupal/processing/queues-cron/practice-processing-queue-api-operations.md)
- Related: [practice-account-for-layout-builder-overrides](/drupal/data-cache/cache-render/practice-account-for-layout-builder-overrides.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/project/search_api](https://www.drupal.org/project/search_api)
[2] [https://www.drupal.org/docs/8/modules/search-api/developer-documentation/create-custom-fields-using-a-custom-processor](https://www.drupal.org/docs/8/modules/search-api/developer-documentation/create-custom-fields-using-a-custom-processor)
<!-- kk:citations:end -->
