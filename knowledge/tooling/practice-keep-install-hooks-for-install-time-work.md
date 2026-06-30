---
schema_version: 2
id: practice-keep-install-hooks-for-install-time-work
title: Keep install hooks for install-time work
kind: practice
tags:
  - drupal
  - install
  - modules
derived_from: []
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
