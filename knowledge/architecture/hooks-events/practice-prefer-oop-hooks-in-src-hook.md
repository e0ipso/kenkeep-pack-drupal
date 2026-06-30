---
schema_version: 2
id: practice-prefer-oop-hooks-in-src-hook
title: Use OOP hooks in src/Hook
kind: practice
tags:
  - drupal
  - hooks
  - oop
derived_from: []
relates_to:
  - practice-choose-entity-lifecycle-hooks-by-save-phase
  - practice-only-procedural-hooks-for-container-unavailable-cases
  - practice-use-event-subscribers-for-events-not-entity-operations
depends_on: []
confidence: high
summary: >-
  Drupal 11.1+ hook implementations should be PHP attribute based classes under
  a module's src/Hook directory.
---
For normal hook implementations, create final hook classes in `src/Hook/` and annotate methods or single-purpose `__invoke()` classes with `#[Hook('hook_name')]`. Use constructor dependency injection and Symfony `#[Autowire]` where a hook needs services. After adding or changing hook classes, clear caches with `drush cr`; hook registration can be checked with `\Drupal::service('module_handler')->hasImplementations('hook_name')`.
