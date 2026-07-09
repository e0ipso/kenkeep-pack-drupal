---
type: practice
title: Use tagged breadcrumb builders for route-specific breadcrumb trails
description: >-
  Create a breadcrumb builder when the route needs a trail that differs from the
  URL-derived default.
tags:
  - drupal
  - routing
  - breadcrumbs
  - cache
kk_schema_version: 3
kk_id: practice-custom-breadcrumb-builders
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Breadcrumb%21BreadcrumbBuilderInterface.php/interface/BreadcrumbBuilderInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Breadcrumb%21BreadcrumbManager.php/class/BreadcrumbManager/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21system%21src%21PathBasedBreadcrumbBuilder.php/class/PathBasedBreadcrumbBuilder/11.x
kk_relates_to:
  - practice-parameter-converters-and-breadcrumb-priority
  - practice-route-access-requirements-and-cacheability
  - map-drupal-menu-navigation-yaml-files
kk_depends_on: []
kk_confidence: high
---
Drupal's default `PathBasedBreadcrumbBuilder` derives breadcrumbs from the URL path at priority 0. Add a custom `BreadcrumbBuilderInterface` implementation when a route needs a different trail.

When builder selection varies, accept the optional `CacheableMetadata` argument that `BreadcrumbManager` passes to `applies()` and add selection metadata there. In `build()`, add links and cache metadata to the returned `Breadcrumb`, including route context and cacheable dependencies such as loaded entities.

Register the builder with the explicit `breadcrumb_builder` service tag. Higher priorities are checked first, and the first builder whose `applies()` returns `TRUE` wins; the tag is not autoconfigured.

<!-- kk:related:start -->
# Related

- Related: [practice-parameter-converters-and-breadcrumb-priority](/drupal/presentation/routing-navigation/practice-parameter-converters-and-breadcrumb-priority.md)
- Related: [practice-route-access-requirements-and-cacheability](/drupal/security/access/practice-route-access-requirements-and-cacheability.md)
- Related: [map-drupal-menu-navigation-yaml-files](/drupal/presentation/routing-navigation/map-drupal-menu-navigation-yaml-files.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Breadcrumb%21BreadcrumbBuilderInterface.php/interface/BreadcrumbBuilderInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Breadcrumb%21BreadcrumbBuilderInterface.php/interface/BreadcrumbBuilderInterface/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Breadcrumb%21BreadcrumbManager.php/class/BreadcrumbManager/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Breadcrumb%21BreadcrumbManager.php/class/BreadcrumbManager/11.x)
[3] [https://api.drupal.org/api/drupal/core%21modules%21system%21src%21PathBasedBreadcrumbBuilder.php/class/PathBasedBreadcrumbBuilder/11.x](https://api.drupal.org/api/drupal/core%21modules%21system%21src%21PathBasedBreadcrumbBuilder.php/class/PathBasedBreadcrumbBuilder/11.x)
<!-- kk:citations:end -->
