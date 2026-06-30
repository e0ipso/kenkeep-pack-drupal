---
schema_version: 2
id: practice-declare-and-compose-drupal-permissions-explicitly
title: Declare and compose Drupal permissions explicitly
kind: practice
tags:
  - drupal
  - permissions
  - access
derived_from: []
relates_to:
  - practice-call-access-check-on-entity-queries
  - practice-include-cache-metadata-in-entity-access-handlers
  - practice-prefer-specific-form-and-neutral-access-hooks
depends_on: []
confidence: medium
summary: >-
  Define static or dynamic permissions and use route requirement syntax
  carefully for OR and AND checks.
---
Declare static permissions in `mymodule.permissions.yml`, and use `permission_callbacks` when permissions must be generated dynamically. Mark administrative permissions with `restrict access: true` so the UI shows the appropriate warning.

On routes, `_permission` uses `+` for OR semantics and `,` for AND semantics. For programmatic checks, call `hasPermission()` on the current user account.
