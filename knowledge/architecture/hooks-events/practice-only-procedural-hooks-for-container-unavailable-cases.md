---
schema_version: 2
id: practice-only-procedural-hooks-for-container-unavailable-cases
title: Reserve procedural hooks for required cases
kind: practice
tags:
  - drupal
  - hooks
  - compatibility
derived_from:
  - https://api.drupal.org/api/drupal/core%21core.api.php/group/hooks/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Hook%21Attribute%21Hook.php/class/Hook/11.x
  - https://www.drupal.org/node/3549685
  - https://www.drupal.org/node/3492429
  - https://www.drupal.org/node/3551652
relates_to:
  - practice-choose-entity-lifecycle-hooks-by-save-phase
  - practice-prefer-oop-hooks-in-src-hook
  - practice-use-event-subscribers-for-events-not-entity-operations
depends_on: []
confidence: high
summary: >-
  Most Drupal 11.1+ module hooks should be OOP, but early install/update/schema
  and meta hooks remain procedural; requirements hooks have newer replacements.
---
Use OOP hooks as the source of truth on Drupal 11.1+ where possible. Keep procedural implementations for hooks that cannot be class methods: `hook_hook_info()`, `hook_module_implements_alter()`, and install/update hooks such as `hook_install()`, `hook_schema()`, `hook_update_N()`, and `hook_post_update_NAME()`.

For Drupal 11.2+, replace `hook_requirements()` phases with `InstallRequirementsInterface`, `hook_runtime_requirements()`, or `hook_update_requirements()` where applicable; `hook_requirements()` is deprecated in Drupal 11.3. Themes can use OOP hooks starting in Drupal 11.3, but older theme support still needs procedural implementations. For Drupal 10.1-11.0 compatibility, procedural wrappers can be marked with `#[LegacyHook]` and delegate to the OOP hook service.
