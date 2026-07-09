---
type: practice
title: Alter and debug plugin definitions through managers
description: >-
  Use plugin alter hooks, Drush generators, and manager inspection commands for
  plugin definition work.
tags:
  - drupal
  - plugins
  - debugging
kk_schema_version: 3
kk_id: practice-alter-and-debug-plugin-definitions-through-managers
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Plugin%21Discovery%21AlterDecorator.php/class/AlterDecorator/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21block%21block.api.php/function/hook_block_alter/11.x
  - 'https://www.drush.org/latest/generators/'
kk_relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-build-configurable-and-context-aware-plugins-with-cache-contexts
kk_depends_on: []
kk_confidence: medium
---
Alter plugin definitions from other modules with the relevant plugin alter hook, such as `hook_block_alter()` or a type-specific alter hook like `hook_field_widget_info_alter()`.

For plugin types not covered by dedicated documentation, use Drush generators such as `vendor/bin/drush generate plugin:queue-worker`, `plugin:condition`, field plugin generators, migrate plugin generators, and related plugin generators. Confirm available generator names with `drush generate --list` because contrib and Drush versions can change the list.

Debug plugin discovery with manager services: inspect definition keys, fetch an individual definition, and clear plugin caches with `drush cr` after plugin definition changes.

<!-- kk:related:start -->
# Related

- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
- Related: [map-drupal-mail-flow](/drupal/architecture/services/map-drupal-mail-flow.md)
- Related: [practice-build-configurable-and-context-aware-plugins-with-cache-contexts](/drupal/data-cache/cache-render/practice-build-configurable-and-context-aware-plugins-with-cache-contexts.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Plugin%21Discovery%21AlterDecorator.php/class/AlterDecorator/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Plugin%21Discovery%21AlterDecorator.php/class/AlterDecorator/11.x)
[2] [https://api.drupal.org/api/drupal/core%21modules%21block%21block.api.php/function/hook_block_alter/11.x](https://api.drupal.org/api/drupal/core%21modules%21block%21block.api.php/function/hook_block_alter/11.x)
[3] [https://www.drush.org/latest/generators/](https://www.drush.org/latest/generators/)
<!-- kk:citations:end -->
