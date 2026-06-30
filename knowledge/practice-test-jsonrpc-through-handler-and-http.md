---
schema_version: 2
id: practice-test-jsonrpc-through-handler-and-http
title: Test JSON-RPC through handler and HTTP paths
kind: practice
tags:
  - http
  - jsonrpc
  - testing
derived_from: []
relates_to:
  - map-jsonrpc-method-plugins
  - practice-guard-jsonrpc-entity-crud-access
  - practice-use-jsonrpc-for-business-logic
depends_on: []
confidence: medium
summary: >-
  JSON-RPC testing covers kernel handler calls, functional HTTP calls, mocks,
  batch requests, and error responses.
---
Test JSON-RPC methods at the kernel level by enabling `jsonrpc` and the owning module, installing required entity schemas and config, setting the current user, and invoking the `jsonrpc.handler` service with JSON-RPC request bodies. Assert both successful `result` payloads and expected `error` payloads for unauthorized or invalid requests.

Add functional HTTP coverage for `/jsonrpc` when request transport matters, including authenticated POSTs with `Content-Type: application/json`. The documented suite also covers mocked dependencies for direct method execution, batch requests preserving IDs, invalid-parameter errors with code `-32602`, and method-not-found errors with code `-32601`.
