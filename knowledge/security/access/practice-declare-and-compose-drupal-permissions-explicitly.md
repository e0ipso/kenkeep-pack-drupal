---
schema_version: 2
id: practice-declare-and-compose-drupal-permissions-explicitly
title: Declare and compose Drupal permissions explicitly
kind: practice
tags:
  - drupal
  - permissions
  - access
derived_from:
  - https://www.drupal.org/docs/drupal-apis/routing-system/structure-of-routes
  - https://api.drupal.org/api/drupal/core%21modules%21user%21src%21PermissionHandler.php/class/PermissionHandler/11.x
  - https://api.drupal.org/api/drupal/core%21core.api.php/group/user_api/11.x
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
Declare static permissions in `mymodule.permissions.yml`, and use `permission_callbacks` when permissions must be generated dynamically. Mark dangerous administrative permissions with `restrict access: true` so the UI shows the appropriate warning.

On routes, `_permission` uses `+` for OR semantics and `,` for AND semantics inside one requirement. Separate route requirements are combined by the route access system. For programmatic checks, call `hasPermission()` on the current user account.
