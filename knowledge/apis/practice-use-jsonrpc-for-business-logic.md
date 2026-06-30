---
schema_version: 2
id: practice-use-jsonrpc-for-business-logic
title: Use JSON-RPC for business logic
kind: practice
tags:
  - http
  - jsonrpc
  - api
  - workflow
derived_from:
  - "https://www.drupal.org/project/jsonrpc"
  - "https://git.drupalcode.org/project/jsonrpc/-/blob/3.0.1/jsonrpc.routing.yml"
  - "https://git.drupalcode.org/project/jsonrpc/-/blob/3.0.1/modules/jsonrpc_discovery/jsonrpc_discovery.routing.yml"
  - "https://git.drupalcode.org/project/jsonrpc/-/blob/3.0.1/src/JsonRpcObject/Error.php"
relates_to:
  - map-jsonrpc-method-plugins
  - practice-guard-jsonrpc-entity-crud-access
  - practice-test-jsonrpc-through-handler-and-http
depends_on: []
confidence: high
summary: >-
  JSON-RPC is the documented fit for actions, workflows, batch operations, and
  other non-REST business behavior.
---
Use JSON:API for entity CRUD and JSON-RPC for business logic that does not fit REST, such as cache clearing, workflows, and batch operations. JSON-RPC provides the `/jsonrpc` endpoint, JSON Schema parameter validation, and batch requests; method discovery at `/jsonrpc/methods` is provided by the `jsonrpc_discovery` submodule.

Define methods with `JsonRpcMethodBase`, `#[JsonRpcMethod]`, `JsonRpcParameterDefinition`, and `JsonRpcObject\ParameterBag`. Represent expected client failures with JSON-RPC errors such as `Error::invalidParams()`, and use method-level `access` metadata for required permissions when access can be expressed declaratively.
