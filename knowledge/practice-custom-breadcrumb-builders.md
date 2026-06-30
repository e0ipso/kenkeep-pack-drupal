---
schema_version: 2
id: practice-custom-breadcrumb-builders
title: Use tagged breadcrumb builders for route-specific breadcrumb trails
kind: practice
tags:
  - drupal
  - routing
  - breadcrumbs
  - cache
derived_from: []
relates_to:
  - practice-parameter-converters-and-breadcrumb-priority
  - practice-route-access-requirements-and-cacheability
  - map-drupal-menu-navigation-yaml-files
depends_on: []
confidence: high
summary: >-
  Create a breadcrumb builder when the route needs a trail that differs from the
  URL-derived default.
---
Drupal's default `PathBasedBreadcrumbBuilder` derives breadcrumbs from the URL path at priority 0. Add a custom `BreadcrumbBuilderInterface` implementation when a route needs a different trail.

In `applies()`, add cache contexts to the provided `CacheableMetadata` for every condition that affects the builder selection. In `build()`, add links and cache metadata to the returned `Breadcrumb`, including route context and cacheable dependencies such as loaded entities.

Register the builder with the explicit `breadcrumb_builder` service tag. Higher priorities are checked first, and the first builder whose `applies()` returns `TRUE` wins; the tag is not autoconfigured.
