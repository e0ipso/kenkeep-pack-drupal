---
schema_version: 2
id: practice-validate-jsonrpc-business-methods
title: Validate JSON-RPC business methods
kind: practice
tags:
  - http
  - jsonrpc
  - validation
  - errors
derived_from: []
relates_to:
  - map-jsonrpc-method-plugins
  - practice-guard-jsonrpc-entity-crud-access
  - practice-test-jsonrpc-through-handler-and-http
depends_on: []
confidence: medium
summary: >-
  Advanced JSON-RPC methods should validate transitions, limits, file inputs,
  and storage errors explicitly.
---
For complex JSON-RPC methods, put business validation inside the method before mutating state. The documented patterns validate state-machine transitions, enforce batch limits such as a maximum item count, check access per item, validate uploaded file extensions and decoded size, and dispatch domain events after successful state changes.

Use `JsonRpcException::fromError()` with standard `Error` objects for client-visible failures. Wrap storage exceptions or unexpected internal failures so server details are logged but callers receive an internal JSON-RPC error rather than raw exception details.
