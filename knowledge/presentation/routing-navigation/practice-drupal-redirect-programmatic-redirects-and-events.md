---
type: practice
title: Drupal Redirect entities and events
description: >-
  Redirect stores redirects as entities, expects slashless source paths, and
  exposes lookup and redirect-event extension points.
tags:
  - drupal
  - seo
  - redirects
  - routing
kk_schema_version: 3
kk_id: practice-drupal-redirect-programmatic-redirects-and-events
kk_derived_from:
  - 'https://www.drupal.org/project/redirect'
  - >-
    https://git.drupalcode.org/project/redirect/-/blob/8.x-1.x/src/Entity/Redirect.php
  - >-
    https://git.drupalcode.org/project/redirect/-/blob/8.x-1.x/src/RedirectRepository.php
kk_relates_to:
  - map-drupal-menu-navigation-yaml-files
  - map-drupal-route-definition-structure
  - practice-custom-breadcrumb-builders
kk_depends_on: []
kk_confidence: high
---
If the project already uses drupal/redirect to create and manage HTTP redirects, work with it as follows. Do not add a dependency on `redirect` only because this node recommends it. In a contrib module, add it only when the module's own feature cannot work without it. Programmatic redirects are Redirect entities with redirect_source, redirect_redirect, and status_code; source paths should omit the leading slash, while destinations can use forms such as internal:/path or entity:node/1. For lookups, prefer the redirect.repository service methods such as findBySourcePath() or findMatchingRedirect(). To customize redirect handling, subscribe to RedirectEvents::REDIRECT and inspect or modify the RedirectEvent. Enable the redirect_404 submodule when 404 handling should feed redirect creation or management.

<!-- kk:related:start -->
# Related

- Related: [map-drupal-menu-navigation-yaml-files](/drupal/presentation/routing-navigation/map-drupal-menu-navigation-yaml-files.md)
- Related: [map-drupal-route-definition-structure](/drupal/presentation/routing-navigation/map-drupal-route-definition-structure.md)
- Related: [practice-custom-breadcrumb-builders](/drupal/data-cache/cache-render/practice-custom-breadcrumb-builders.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/project/redirect](https://www.drupal.org/project/redirect)
[2] [https://git.drupalcode.org/project/redirect/-/blob/8.x-1.x/src/Entity/Redirect.php](https://git.drupalcode.org/project/redirect/-/blob/8.x-1.x/src/Entity/Redirect.php)
[3] [https://git.drupalcode.org/project/redirect/-/blob/8.x-1.x/src/RedirectRepository.php](https://git.drupalcode.org/project/redirect/-/blob/8.x-1.x/src/RedirectRepository.php)
<!-- kk:citations:end -->
