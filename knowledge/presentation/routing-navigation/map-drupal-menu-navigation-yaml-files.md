---
schema_version: 2
id: map-drupal-menu-navigation-yaml-files
title: Drupal menu navigation uses separate YAML files by link type
kind: map
tags:
  - drupal
  - routing
  - menus
derived_from: []
relates_to:
  - practice-custom-breadcrumb-builders
  - practice-drupal-redirect-programmatic-redirects-and-events
  - practice-generate-drupal-urls-with-url-and-link-objects
depends_on: []
confidence: medium
summary: >-
  Menu links, local tasks, and local actions are declared in dedicated YAML
  files with route-based keys.
---
Drupal navigation entries are split by type. Menu links live in `mymodule.links.menu.yml`, local tasks or tabs in `mymodule.links.task.yml`, and local action buttons in `mymodule.links.action.yml`.

Menu links point to a `route_name` and can specify parent items such as `system.admin_config`, `system.admin_config_system`, `system.admin_content`, or `system.admin_structure`. Local task `base_route` values group tabs on the same page, while local action `appears_on` lists the routes where the button displays.

`weight` controls ordering with lower values first. Menu changes require a cache rebuild, commonly with `drush cr`.
