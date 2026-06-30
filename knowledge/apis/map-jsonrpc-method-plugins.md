---
schema_version: 2
id: map-jsonrpc-method-plugins
title: JSON-RPC methods are attribute plugins
kind: map
tags:
  - http
  - jsonrpc
  - plugins
derived_from: []
relates_to:
  - practice-guard-jsonrpc-entity-crud-access
  - practice-test-jsonrpc-through-handler-and-http
  - practice-use-jsonrpc-for-business-logic
depends_on: []
confidence: medium
summary: >-
  The JSON-RPC API uses contrib method plugins declared with JsonRpcMethod and
  served through POST /jsonrpc.
---
JSON-RPC support requires the `drupal/jsonrpc` contrib module. Methods are implemented as plugins using the `#[JsonRpcMethod]` attribute, an ID such as `mymodule.get_item`, usage text, optional parameter definitions, and an `execute(ParameterBag $params): mixed` method.

Clients call methods with JSON-RPC 2.0 payloads via `POST /jsonrpc` using `Content-Type: application/json`. The main documented implementation points are `web/modules/contrib/jsonrpc/src/MethodInterface.php`, `Attribute/JsonRpcMethod.php`, `Object/ParameterBag.php`, and `Controller/HttpController.php`.
