---
schema_version: 2
id: map-rest-resource-plugins
title: REST resources are ResourceBase plugins
kind: map
tags:
  - http
  - rest
  - plugins
derived_from: []
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
Custom REST resources live under the `Plugin\rest\resource` namespace and extend `core/modules/rest/src/Plugin/ResourceBase.php`. The documented attribute is `#[RestResource]` with an ID, label, and URI paths such as canonical and create endpoints.

REST resource behavior is enabled through configuration like `rest.resource.mymodule_items.yml`, where methods, formats, and authentication providers are declared. Read operations can return `ResourceResponse` with cacheable dependencies, while mutations can return `ModifiedResourceResponse` with an explicit status such as 201.
