---
schema_version: 2
id: practice-keep-install-hooks-for-install-time-work
title: Keep install hooks for install-time work
kind: practice
tags:
  - drupal
  - install
  - modules
derived_from:
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_install/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Database%21database.api.php/function/hook_schema/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_requirements/11.x"
relates_to:
  - map-layout-builder-companion-modules
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
depends_on: []
confidence: medium
summary: >-
  Use module install hooks for install/uninstall tasks, non-entity schemas, and
  requirements, not later schema updates.
---
Use `hook_install()` and `hook_uninstall()` for install-time setup and cleanup, `hook_schema()` only for non-entity tables, and `hook_requirements()` for install/runtime requirements checks.

Place default config in `config/install/*.yml` so it is imported automatically, declare dependencies in the module `.info.yml`, and use `hook_update_N()` for schema updates instead of modifying install hooks after release.
