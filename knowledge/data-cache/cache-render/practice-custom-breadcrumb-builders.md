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
derived_from:
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Breadcrumb%21BreadcrumbBuilderInterface.php/interface/BreadcrumbBuilderInterface/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Breadcrumb%21BreadcrumbManager.php/class/BreadcrumbManager/11.x
  - https://api.drupal.org/api/drupal/core%21modules%21system%21src%21PathBasedBreadcrumbBuilder.php/class/PathBasedBreadcrumbBuilder/11.x
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

When builder selection varies, accept the optional `CacheableMetadata` argument that `BreadcrumbManager` passes to `applies()` and add selection metadata there. In `build()`, add links and cache metadata to the returned `Breadcrumb`, including route context and cacheable dependencies such as loaded entities.

Register the builder with the explicit `breadcrumb_builder` service tag. Higher priorities are checked first, and the first builder whose `applies()` returns `TRUE` wins; the tag is not autoconfigured.
