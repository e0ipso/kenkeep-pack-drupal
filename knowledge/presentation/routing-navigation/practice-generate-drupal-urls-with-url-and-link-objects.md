---
type: practice
title: Generate Drupal URLs with Url and Link APIs
description: >-
  Use Url, Link, entity helpers, or injected generators instead of bare path
  strings.
tags:
  - drupal
  - routing
  - urls
  - links
kk_schema_version: 3
kk_id: practice-generate-drupal-urls-with-url-and-link-objects
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Url.php/class/Url/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Link.php/class/Link/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityBase.php/function/EntityBase%3A%3AtoUrl/11.x
kk_relates_to:
  - map-drupal-menu-navigation-yaml-files
  - map-drupal-route-definition-structure
  - practice-custom-breadcrumb-builders
kk_depends_on: []
kk_confidence: high
---
Create route URLs with `Url::fromRoute()`, including route parameters, query options, fragments, and absolute URL settings as needed. Use `Url::fromUri()` only with an explicit scheme such as `internal:`, `entity:`, `base:`, `https:`, or `route:`; bare paths are rejected.

For user-provided internal targets, use `Url::fromUserInput()`, which requires a leading `/`, `#`, or `?`. Entities can produce URLs and links through `toUrl()` and `toLink()`, while render arrays should use `#type: link` with a `Url` object.

In services, inject `UrlGeneratorInterface` for URL generation. In Twig, use `path()` for relative route paths and `url()` for absolute route URLs.

<!-- kk:related:start -->
# Related

- Related: [map-drupal-menu-navigation-yaml-files](/drupal/presentation/routing-navigation/map-drupal-menu-navigation-yaml-files.md)
- Related: [map-drupal-route-definition-structure](/drupal/presentation/routing-navigation/map-drupal-route-definition-structure.md)
- Related: [practice-custom-breadcrumb-builders](/drupal/data-cache/cache-render/practice-custom-breadcrumb-builders.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Url.php/class/Url/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Url.php/class/Url/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Link.php/class/Link/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Link.php/class/Link/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityBase.php/function/EntityBase%3A%3AtoUrl/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityBase.php/function/EntityBase%3A%3AtoUrl/11.x)
<!-- kk:citations:end -->
