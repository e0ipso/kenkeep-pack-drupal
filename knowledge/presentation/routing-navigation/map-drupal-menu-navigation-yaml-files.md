---
type: map
title: Drupal menu navigation uses separate YAML files by link type
description: >-
  Menu links, local tasks, and local actions are declared in dedicated YAML
  files with route-based keys.
tags:
  - drupal
  - routing
  - menus
kk_schema_version: 3
kk_id: map-drupal-menu-navigation-yaml-files
kk_derived_from:
  - >-
    https://www.drupal.org/docs/drupal-apis/menu-api/providing-module-defined-menu-links
  - >-
    https://www.drupal.org/docs/drupal-apis/menu-api/providing-module-defined-local-tasks
  - >-
    https://www.drupal.org/docs/drupal-apis/menu-api/providing-module-defined-local-actions
kk_relates_to:
  - practice-custom-breadcrumb-builders
  - practice-drupal-redirect-programmatic-redirects-and-events
  - practice-generate-drupal-urls-with-url-and-link-objects
kk_depends_on: []
kk_confidence: medium
---
Drupal navigation entries are split by type. Menu links live in `mymodule.links.menu.yml`, local tasks or tabs in `mymodule.links.task.yml`, and local action buttons in `mymodule.links.action.yml`.

Menu links point to a `route_name` and can specify parent items such as `system.admin_config`, `system.admin_config_system`, `system.admin_content`, or `system.admin_structure`. Local task `base_route` values group tabs on the same page, while local action `appears_on` lists the routes where the button displays.

`weight` controls ordering with lower values first. Menu changes require a cache rebuild, commonly with `drush cr`.

<!-- kk:related:start -->
# Related

- Related: [practice-custom-breadcrumb-builders](/drupal/data-cache/cache-render/practice-custom-breadcrumb-builders.md)
- Related: [practice-drupal-redirect-programmatic-redirects-and-events](/drupal/presentation/routing-navigation/practice-drupal-redirect-programmatic-redirects-and-events.md)
- Related: [practice-generate-drupal-urls-with-url-and-link-objects](/drupal/presentation/routing-navigation/practice-generate-drupal-urls-with-url-and-link-objects.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/menu-api/providing-module-defined-menu-links](https://www.drupal.org/docs/drupal-apis/menu-api/providing-module-defined-menu-links)
[2] [https://www.drupal.org/docs/drupal-apis/menu-api/providing-module-defined-local-tasks](https://www.drupal.org/docs/drupal-apis/menu-api/providing-module-defined-local-tasks)
[3] [https://www.drupal.org/docs/drupal-apis/menu-api/providing-module-defined-local-actions](https://www.drupal.org/docs/drupal-apis/menu-api/providing-module-defined-local-actions)
<!-- kk:citations:end -->
