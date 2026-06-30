---
schema_version: 2
id: practice-drupal-redirect-programmatic-redirects-and-events
title: Drupal Redirect entities and events
kind: practice
tags:
  - drupal
  - seo
  - redirects
  - routing
derived_from:
  - https://www.drupal.org/project/redirect
  - https://git.drupalcode.org/project/redirect/-/blob/8.x-1.x/src/Entity/Redirect.php
  - https://git.drupalcode.org/project/redirect/-/blob/8.x-1.x/src/RedirectRepository.php
relates_to:
  - map-drupal-menu-navigation-yaml-files
  - map-drupal-route-definition-structure
  - practice-custom-breadcrumb-builders
depends_on: []
confidence: high
summary: >-
  Redirect stores redirects as entities, expects slashless source paths, and
  exposes lookup and redirect-event extension points.
---
Use drupal/redirect to create and manage HTTP redirects. Programmatic redirects are Redirect entities with redirect_source, redirect_redirect, and status_code; source paths should omit the leading slash, while destinations can use forms such as internal:/path or entity:node/1. For lookups, prefer the redirect.repository service methods such as findBySourcePath() or findMatchingRedirect(). To customize redirect handling, subscribe to RedirectEvents::REDIRECT and inspect or modify the RedirectEvent. Enable the redirect_404 submodule when 404 handling should feed redirect creation or management.
