---
schema_version: 2
id: map-rest-resource-plugins
title: REST resources are ResourceBase plugins
kind: map
tags:
  - http
  - rest
  - plugins
derived_from:
  - "https://api.drupal.org/api/drupal/core%21modules%21rest%21src%21Attribute%21RestResource.php/class/RestResource/11.x"
  - "https://api.drupal.org/api/drupal/core%21modules%21rest%21src%21Plugin%21ResourceBase.php/class/ResourceBase/11.x"
  - "https://api.drupal.org/api/drupal/core%21modules%21rest%21src%21ModifiedResourceResponse.php/class/ModifiedResourceResponse/11.x"
relates_to:
  - map-jsonrpc-method-plugins
  - practice-alter-and-debug-plugin-definitions-through-managers
  - practice-build-configurable-and-context-aware-plugins-with-cache-contexts
depends_on: []
confidence: medium
summary: >-
  Custom REST endpoints live as Plugin\rest\resource classes with RestResource
  attributes and resource config.
---
Custom REST resources live under the `Plugin\rest\resource` namespace and extend `ResourceBase`. Drupal 10/11 support the `#[RestResource]` attribute with an ID, label, and URI paths such as canonical and create endpoints; annotation examples are legacy-compatible.

REST resource behavior is enabled through configuration like `rest.resource.mymodule_items.yml`, where methods, formats, and authentication providers are declared. Read operations can return `ResourceResponse` with cacheable dependencies, while mutations can return `ModifiedResourceResponse` with an explicit status such as 201.
