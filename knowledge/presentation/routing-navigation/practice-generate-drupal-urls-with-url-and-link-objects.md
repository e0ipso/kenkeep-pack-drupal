---
schema_version: 2
id: practice-generate-drupal-urls-with-url-and-link-objects
title: Generate Drupal URLs with Url and Link APIs
kind: practice
tags:
  - drupal
  - routing
  - urls
  - links
derived_from:
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Url.php/class/Url/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Link.php/class/Link/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityBase.php/function/EntityBase%3A%3AtoUrl/11.x
relates_to:
  - map-drupal-menu-navigation-yaml-files
  - map-drupal-route-definition-structure
  - practice-custom-breadcrumb-builders
depends_on: []
confidence: high
summary: >-
  Use Url, Link, entity helpers, or injected generators instead of bare path
  strings.
---
Create route URLs with `Url::fromRoute()`, including route parameters, query options, fragments, and absolute URL settings as needed. Use `Url::fromUri()` only with an explicit scheme such as `internal:`, `entity:`, `base:`, `https:`, or `route:`; bare paths are rejected.

For user-provided internal targets, use `Url::fromUserInput()`, which requires a leading `/`, `#`, or `?`. Entities can produce URLs and links through `toUrl()` and `toLink()`, while render arrays should use `#type: link` with a `Url` object.

In services, inject `UrlGeneratorInterface` for URL generation. In Twig, use `path()` for relative route paths and `url()` for absolute route URLs.
