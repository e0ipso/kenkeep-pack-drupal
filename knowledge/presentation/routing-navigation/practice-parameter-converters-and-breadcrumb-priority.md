---
schema_version: 2
id: practice-parameter-converters-and-breadcrumb-priority
title: Register parameter converters and breadcrumb builders with explicit tags
kind: practice
tags:
  - drupal
  - routing
  - parameters
  - breadcrumbs
derived_from:
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21ParamConverter%21ParamConverterInterface.php/interface/ParamConverterInterface/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Breadcrumb%21BreadcrumbBuilderInterface.php/interface/BreadcrumbBuilderInterface/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Breadcrumb%21Breadcrumb.php/class/Breadcrumb/11.x
relates_to:
  - practice-custom-breadcrumb-builders
  - map-drupal-menu-navigation-yaml-files
  - map-drupal-route-definition-structure
depends_on: []
confidence: medium
summary: >-
  Custom converters and breadcrumbs rely on explicit service tags, priority
  ordering, and cache metadata.
---
Custom `ParamConverterInterface` implementations convert route parameter values before controller invocation. Register converters with an explicit `paramconverter` tag and a priority; these tags are not autoconfigured.

Return `NULL` from `convert()` when the parameter cannot be converted, which produces a 404. Built-in converter types include `entity:{entity_type}`, `entity_revision:{entity_type}`, and `menu_link_plugin`.

Breadcrumb builders also use priority ordering and explicit `breadcrumb_builder` tags. Add cache contexts, tags, and dependencies to breadcrumbs or applies() metadata for every route, entity, language, permission, or request condition that affects the trail.
