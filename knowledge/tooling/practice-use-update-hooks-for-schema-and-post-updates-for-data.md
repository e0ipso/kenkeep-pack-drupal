---
schema_version: 2
id: practice-use-update-hooks-for-schema-and-post-updates-for-data
title: Use update hooks for schema and post updates for data
kind: practice
tags:
  - drupal
  - updates
  - schema
derived_from: []
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
Use numbered `hook_update_N()` implementations for schema or configuration updates, and increment update numbers in sequence. Use named `hook_post_update_NAME()` implementations for data migrations that run once.

For long-running post updates, use the `$sandbox` array to track progress and set `$sandbox['#finished']`. Run updates with `ddev drush updatedb` and inspect pending updates with `ddev drush updatedb:status`.
