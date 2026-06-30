---
schema_version: 2
id: practice-use-jsonapi-for-entity-crud
title: 'Use JSON:API for entity CRUD'
kind: practice
tags:
  - http
  - jsonapi
  - entities
  - crud
derived_from:
  - "https://www.drupal.org/docs/core-modules-and-themes/core-modules/jsonapi-module"
  - "https://api.drupal.org/api/drupal/core%21modules%21jsonapi%21jsonapi.api.php/11.x"
  - "https://api.drupal.org/api/drupal/core%21modules%21jsonapi%21src%21Routing%21Routes.php/class/Routes/11.x"
  - "https://www.drupal.org/project/jsonapi_extras"
relates_to:
  - practice-guard-jsonrpc-entity-crud-access
  - map-drupal-entity-form-bases
  - map-jsonrpc-method-plugins
depends_on: []
confidence: high
summary: >-
  JSON:API exposes entity collection, item, relationship, upload, filter,
  include, sort, and pagination endpoints.
---
Use Drupal core JSON:API for entity CRUD over `/jsonapi/{entity_type}/{bundle}` and `/jsonapi/{entity_type}/{bundle}/{uuid}`. The documented operations cover GET, POST, PATCH, and DELETE for article nodes, plus relationship endpoints for reading, adding, replacing, and removing related resources.

Keep JSON:API request details aligned with the documented gotchas: item paths use UUIDs rather than entity IDs, write requests should include `Content-Type: application/vnd.api+json`, file uploads use `application/octet-stream`, and filter access should be controlled with `hook_jsonapi_entity_filter_access()`, `hook_jsonapi_ENTITY_TYPE_filter_access()`, or `hook_jsonapi_entity_field_filter_access()`. JSON:API Extras is the contrib option for custom resource paths, disabled resources, field aliases, and enhancers.
