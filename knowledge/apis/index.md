---
schema_version: 2
summary: HTTP APIs and serialization surfaces; read before exposing JSON:API, JSON-RPC, REST, or normalizer behavior
---
# Apis Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Guard JSON-RPC entity CRUD access**](practice-guard-jsonrpc-entity-crud-access.md) to learn about: JSON-RPC CRUD methods should combine permission attributes, runtime entity checks, accessCheck, and current-user checks. #http #jsonrpc #crud #access
- Open [**Secure every API endpoint before processing**](practice-secure-api-endpoints.md) to learn about: Authenticate, authorize, validate, rate limit, and avoid exposing internals in API responses. #security #api #validation #auth
- Open [**Tag custom normalizers explicitly**](practice-tag-custom-normalizers-explicitly.md) to learn about: Custom serialization normalizers need an explicit normalizer service tag with priority. #http #serialization #services
- Open [**Use JSON-RPC for business logic**](practice-use-jsonrpc-for-business-logic.md) to learn about: JSON-RPC is the documented fit for actions, workflows, batch operations, and other non-REST business behavior. #http #jsonrpc #api #workflow
- Open [**Use JSON:API for entity CRUD**](practice-use-jsonapi-for-entity-crud.md) to learn about: JSON:API exposes entity collection, item, relationship, upload, filter, include, sort, and pagination endpoints. #http #jsonapi #entities #crud
- Open [**Validate JSON-RPC business methods**](practice-validate-jsonrpc-business-methods.md) to learn about: Advanced JSON-RPC methods should validate transitions, limits, file inputs, and storage errors explicitly. #http #jsonrpc #validation #errors

## Components (what exists)
- Open [**JSON-RPC methods are attribute plugins**](map-jsonrpc-method-plugins.md) to learn about: The JSON-RPC API uses contrib method plugins declared with JsonRpcMethod and served through /jsonrpc. #http #jsonrpc #plugins
- Open [**REST resources are ResourceBase plugins**](map-rest-resource-plugins.md) to learn about: Custom REST endpoints live as Plugin\rest\resource classes with RestResource attributes and resource config. #http #rest #plugins
