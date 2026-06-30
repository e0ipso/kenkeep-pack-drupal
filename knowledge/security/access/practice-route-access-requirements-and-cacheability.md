---
schema_version: 2
id: practice-route-access-requirements-and-cacheability
title: Define route access with explicit requirements and cache metadata
kind: practice
tags:
  - drupal
  - routing
  - access
  - cache
derived_from:
  - https://www.drupal.org/docs/drupal-apis/routing-system/structure-of-routes
  - https://www.drupal.org/docs/drupal-apis/routing-system/access-checking-on-routes/custom-route-access-checking
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Routing%21Access%21AccessInterface.php/interface/AccessInterface/11.x
relates_to:
  - practice-custom-breadcrumb-builders
  - practice-include-cache-metadata-in-entity-access-handlers
  - practice-return-cacheable-access-results
depends_on: []
confidence: high
summary: >-
  Use YAML requirements or tagged custom checkers, and always cache AccessResult
  decisions correctly.
---
Routes can declare access through YAML requirements such as `_permission`, `_role`, `_entity_access`, or `_custom_access`. Multiple permissions inside `_permission` use `+` for OR semantics and `,` for AND semantics.

Custom access checkers receive upcasted route parameters and should return `AccessResult` objects with the cache contexts and tags that make the decision safe. Missing cache metadata can produce stale access decisions.

When registering an access checker service with a custom requirement key, keep the explicit `access_check` tag and `applies_to` value; these tags are not autoconfigured.
