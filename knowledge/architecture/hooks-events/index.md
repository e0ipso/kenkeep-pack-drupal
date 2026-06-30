---
schema_version: 2
summary: OOP hooks, procedural hook exceptions, entity lifecycle hooks, and event subscribers; read when choosing an extension point
---
# Hooks Events Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Prefer final classes and promoted readonly dependencies**](practice-prefer-final-classes-and-promoted-readonly-dependencies.md) to learn about: Default Drupal classes to final and use constructor property promotion with readonly injected dependencies. #drupal #php #classes
- Open [**Reserve procedural hooks for required cases**](practice-only-procedural-hooks-for-container-unavailable-cases.md) to learn about: Most hooks should be OOP, but install/update/schema/requirements/theme and a few early hooks remain procedural. #drupal #hooks #compatibility
- Open [**Use OOP hooks in src/Hook**](practice-prefer-oop-hooks-in-src-hook.md) to learn about: Drupal 11.1+ hook implementations should be PHP attribute based classes under a module's src/Hook directory. #drupal #hooks #oop
- Open [**Use subscribers for events, OOP hooks for entities**](practice-use-event-subscribers-for-events-not-entity-operations.md) to learn about: Event subscribers are documented for kernel, config, and custom events; entity operations should use OOP hooks instead. #drupal #events #hooks

## Components (what exists)
_None._

