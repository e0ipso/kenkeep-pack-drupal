---
type: practice
title: Keep install hooks for install-time work
description: >-
  Use module install hooks for install/uninstall tasks, non-entity schemas, and
  requirements, not later schema updates.
tags:
  - drupal
  - install
  - modules
kk_schema_version: 3
kk_id: practice-keep-install-hooks-for-install-time-work
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_install/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Database%21database.api.php/function/hook_schema/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_requirements/11.x
kk_relates_to:
  - map-layout-builder-companion-modules
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
kk_depends_on: []
kk_confidence: medium
---
Use `hook_install()` and `hook_uninstall()` for install-time setup and cleanup, `hook_schema()` only for non-entity tables, and `hook_requirements()` for install/runtime requirements checks.

Place default config in `config/install/*.yml` so it is imported automatically, declare dependencies in the module `.info.yml`, and use `hook_update_N()` for schema updates instead of modifying install hooks after release.

<!-- kk:related:start -->
# Related

- Related: [map-layout-builder-companion-modules](/drupal/content-model/layout-paragraphs/map-layout-builder-companion-modules.md)
- Related: [map-advanced-drupal-service-patterns](/drupal/architecture/services/map-advanced-drupal-service-patterns.md)
- Related: [map-ajax-command-reference-surface](/drupal/presentation/frontend-theme/map-ajax-command-reference-surface.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_install/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_install/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Database%21database.api.php/function/hook_schema/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Database%21database.api.php/function/hook_schema/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_requirements/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_requirements/11.x)
<!-- kk:citations:end -->
