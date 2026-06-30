---
schema_version: 2
id: map-jsonrpc-method-plugins
title: JSON-RPC methods are attribute plugins
kind: map
tags:
  - http
  - jsonrpc
  - plugins
derived_from:
  - "https://www.drupal.org/project/jsonrpc"
  - "https://git.drupalcode.org/project/jsonrpc/-/blob/3.0.1/src/Attribute/JsonRpcMethod.php"
  - "https://git.drupalcode.org/project/jsonrpc/-/blob/3.0.1/src/JsonRpcObject/ParameterBag.php"
relates_to:
  - practice-guard-jsonrpc-entity-crud-access
  - practice-test-jsonrpc-through-handler-and-http
  - practice-use-jsonrpc-for-business-logic
depends_on: []
confidence: medium
summary: >-
  The JSON-RPC API uses contrib method plugins declared with JsonRpcMethod and
  served through /jsonrpc.
---
JSON-RPC support requires the `drupal/jsonrpc` contrib module. Current 3.x methods are plugins using the `#[JsonRpcMethod]` attribute, an ID such as `mymodule.get_item`, usage text, optional parameter definitions, and an `execute(\Drupal\jsonrpc\JsonRpcObject\ParameterBag $params): mixed` method when parameters are accepted. Older 2.x examples may use annotations.

Clients normally call methods with JSON-RPC 2.0 payloads via `/jsonrpc` using `Content-Type: application/json`. The main current implementation points are `src/MethodInterface.php`, `src/Attribute/JsonRpcMethod.php`, `src/JsonRpcObject/ParameterBag.php`, and `src/Controller/HttpController.php`.
