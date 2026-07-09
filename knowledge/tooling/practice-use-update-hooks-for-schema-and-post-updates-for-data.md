---
type: practice
title: Use update hooks for schema and post updates for data
description: >-
  Schema changes belong in numbered hook_update_N functions; data changes belong
  in named post updates.
tags:
  - drupal
  - updates
  - schema
kk_schema_version: 3
kk_id: practice-use-update-hooks-for-schema-and-post-updates-for-data
kk_derived_from:
  - 'https://www.drupal.org/docs/drupal-apis/update-api'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_update_N/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_post_update_NAME/11.x
kk_relates_to:
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
  - map-derivative-plugins-generate-dynamic-plugin-instances
kk_depends_on: []
kk_confidence: medium
---
Use numbered `hook_update_N()` implementations for schema updates and necessary update-time configuration changes, and increment update numbers in sequence. Use named `hook_post_update_NAME()` implementations for data migrations that run once.

For long-running post updates, use the `$sandbox` array to track progress and set `$sandbox['#finished']`. Run updates with `drush updatedb` and inspect pending updates with `drush updatedb:status` (or `ddev drush ...` in DDEV).

<!-- kk:related:start -->
# Related

- Related: [map-advanced-drupal-service-patterns](/drupal/architecture/services/map-advanced-drupal-service-patterns.md)
- Related: [map-ajax-command-reference-surface](/drupal/presentation/frontend-theme/map-ajax-command-reference-surface.md)
- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/update-api](https://www.drupal.org/docs/drupal-apis/update-api)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_update_N/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_update_N/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_post_update_NAME/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_post_update_NAME/11.x)
<!-- kk:citations:end -->
