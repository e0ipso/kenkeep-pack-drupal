---
schema_version: 2
id: practice-handle-search-api-indexing-gotchas
title: Handle Search API indexing gotchas
kind: practice
tags:
  - search
  - drupal
  - gotcha
derived_from: []
relates_to:
  - map-search-api-concepts-and-extension-points
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
depends_on: []
confidence: medium
summary: >-
  Clear indexes after field changes, order processors carefully, and use Views
  for search pages.
---
When working with Search API indexes, clear the index after field changes and pay attention to processor order.

Use Views for search pages because it integrates with Search API.

Search API plugin discovery uses annotations such as `@SearchApiProcessor` and `@SearchApiDatasource`, not PHP 8 attributes.
