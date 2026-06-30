---
schema_version: 2
id: map-drupal-route-definition-structure
title: 'Drupal route definitions combine paths, defaults, requirements, and options'
kind: map
tags:
  - drupal
  - routing
  - routes
derived_from:
  - https://www.drupal.org/docs/drupal-apis/routing-system/structure-of-routes
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21ParamConverter%21EntityConverter.php/class/EntityConverter/11.x
  - https://api.drupal.org/api/drupal/core%21core.api.php/group/routing/11.x
relates_to:
  - practice-custom-breadcrumb-builders
  - practice-drupal-redirect-programmatic-redirects-and-events
  - practice-generate-drupal-urls-with-url-and-link-objects
depends_on: []
confidence: medium
summary: >-
  Routes are declared with path patterns, controller/form defaults, access
  requirements, and optional parameter metadata.
---
A Drupal route definition provides a path, defaults, requirements, and options. Defaults can point to a controller, form, entity form, title, title callback, or entity list builder.

Entity route parameters can be upcast by declaring parameter options such as `type: entity:node`, allowing controllers to receive typed entity objects directly and returning 404 when the entity is not found. Optional parameters are represented by giving the parameter a default value.

Dynamic routes are supplied by classes listed under `route_callbacks`. Admin routes use `_admin_route: TRUE` in options, parameter regex constraints belong in requirements, and route names must be unique across modules.
