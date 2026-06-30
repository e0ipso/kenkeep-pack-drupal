---
schema_version: 2
id: map-search-api-concepts-and-extension-points
title: Search API concepts and extension points
kind: map
tags:
  - search
  - drupal
  - api
derived_from: []
relates_to:
  - practice-handle-search-api-indexing-gotchas
  - practice-processing-queue-api-operations
  - practice-account-for-layout-builder-overrides
depends_on: []
confidence: medium
summary: >-
  Search API indexes content through indexes, servers, datasources, and
  processors.
---
The Search API docs require `drupal/search_api` and define the core vocabulary: an index defines what content to index, a server provides the backend such as Database, Solr, or Elasticsearch, a datasource identifies the content type or entities to index, and a processor transforms indexed data.

Search queries are built from an index query object, with keys, conditions, sorting, ranges, and result items whose original objects can be loaded from each result item.

Custom extension points include processors based on `ProcessorPluginBase`, datasources based on `DatasourcePluginBase`, and programmatic indexing through the `Index` entity.
