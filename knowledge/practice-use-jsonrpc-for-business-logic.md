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
derived_from: []
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
Use JSON:API for entity CRUD and JSON-RPC for business logic that does not fit REST, such as cache clearing, workflows, and batch operations. JSON-RPC provides a single `/jsonrpc` endpoint, method discovery at `/jsonrpc/methods`, JSON Schema parameter validation, and batch requests.

Define methods with `JsonRpcMethodBase`, `#[JsonRpcMethod]`, `JsonRpcParameterDefinition`, and `ParameterBag`. Represent expected client failures with JSON-RPC errors such as `Error::invalidParams()`, and use method-level access attributes for required permissions when access can be expressed declaratively.
