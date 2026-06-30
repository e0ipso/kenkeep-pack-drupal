---
schema_version: 2
id: practice-use-update-hooks-for-schema-and-post-updates-for-data
title: Use update hooks for schema and post updates for data
kind: practice
tags:
  - drupal
  - updates
  - schema
derived_from:
  - "https://www.drupal.org/docs/drupal-apis/update-api"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_update_N/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Extension%21module.api.php/function/hook_post_update_NAME/11.x"
relates_to:
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
  - map-derivative-plugins-generate-dynamic-plugin-instances
depends_on: []
confidence: medium
summary: >-
  Schema changes belong in numbered hook_update_N functions; data changes belong
  in named post updates.
---
Use numbered `hook_update_N()` implementations for schema updates and necessary update-time configuration changes, and increment update numbers in sequence. Use named `hook_post_update_NAME()` implementations for data migrations that run once.

For long-running post updates, use the `$sandbox` array to track progress and set `$sandbox['#finished']`. Run updates with `drush updatedb` and inspect pending updates with `drush updatedb:status` (or `ddev drush ...` in DDEV).
