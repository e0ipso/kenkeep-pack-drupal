---
schema_version: 2
id: practice-only-procedural-hooks-for-container-unavailable-cases
title: Reserve procedural hooks for required cases
kind: practice
tags:
  - drupal
  - hooks
  - compatibility
derived_from: []
relates_to:
  - practice-choose-entity-lifecycle-hooks-by-save-phase
  - practice-prefer-oop-hooks-in-src-hook
  - practice-use-event-subscribers-for-events-not-entity-operations
depends_on: []
confidence: high
summary: >-
  Most hooks should be OOP, but install/update/schema/requirements/theme and a
  few early hooks remain procedural.
---
Use OOP hooks as the source of truth where possible. Keep procedural implementations for hooks that run before the container is available or otherwise cannot use OOP: install, uninstall, schema, requirements, update_N, post_update_NAME, install tasks, hook_info, module_implements_alter, and theme hooks. For Drupal 10.1-11.0 compatibility, procedural wrappers can be marked with `#[LegacyHook]` and delegate to the OOP hook service.
