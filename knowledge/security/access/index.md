---
schema_version: 2
summary: entity, route, form, and JSON-RPC access checks with cacheable access results; read before changing authorization
---
# Access Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Call accessCheck on entity queries**](practice-call-access-check-on-entity-queries.md) to learn about: Every entity query must set accessCheck explicitly in Drupal 10 and later. #drupal #entities #queries #access
- Open [**Declare and compose Drupal permissions explicitly**](practice-declare-and-compose-drupal-permissions-explicitly.md) to learn about: Define static or dynamic permissions and use route requirement syntax carefully for OR and AND checks. #drupal #permissions #access
- Open [**Define action plugins with access and type scope**](practice-define-action-plugins-with-access-and-type-scope.md) to learn about: Action plugins live under Plugin\Action and should declare scope, access behavior, and configuration as needed. #drupal #plugins #actions
- Open [**Define route access with explicit requirements and cache metadata**](practice-route-access-requirements-and-cacheability.md) to learn about: Use YAML requirements or tagged custom checkers, and always cache AccessResult decisions correctly. #drupal #routing #access #cache
- Open [**Include cache metadata in entity access handlers**](practice-include-cache-metadata-in-entity-access-handlers.md) to learn about: Entity access results need cache metadata such as permission, user, or entity cache contexts/tags. #drupal #entities #access #cache
- Open [**Return cacheable AccessResult decisions**](practice-return-cacheable-access-results.md) to learn about: Drupal access checks must return AccessResult objects with the right cache metadata. #security #access #cache #drupal
- Open [**Target forms specifically and keep access neutral by default**](practice-prefer-specific-form-and-neutral-access-hooks.md) to learn about: Use specific form alter hooks for single forms, and have access hooks return neutral unless explicitly deciding access. #drupal #forms #access

## Components (what exists)
_None._

