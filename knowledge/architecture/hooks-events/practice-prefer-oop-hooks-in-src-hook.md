---
schema_version: 2
id: practice-prefer-oop-hooks-in-src-hook
title: Use OOP hooks in src/Hook
kind: practice
tags:
  - drupal
  - hooks
  - oop
derived_from:
  - https://www.drupal.org/node/3442349
  - https://api.drupal.org/api/drupal/core%21core.api.php/group/hooks/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Hook%21Attribute%21Hook.php/class/Hook/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Hook%21Attribute%21LegacyHook.php/class/LegacyHook/11.x
  - https://www.drupal.org/node/3551652
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
On Drupal 11.1+, create final module hook classes in `src/Hook/` and mark methods or single-purpose `__invoke()` classes with `#[Hook('hook_name_without_prefix')]`. Use constructor dependency injection and Symfony `#[Autowire]` where a hook needs services.

Themes can use the same `#[Hook]` pattern in `src/Hook/` starting in Drupal 11.3, with theme-specific limits. When supporting Drupal 10.1-11.0, manually register the hook class as an autowired service and keep a procedural shim marked `#[LegacyHook]` that delegates to it. After adding or changing hook classes, clear caches with `drush cr`; hook registration can be checked with `\Drupal::service('module_handler')->hasImplementations('form_alter')`.
