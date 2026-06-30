---
schema_version: 2
id: practice-alter-and-debug-plugin-definitions-through-managers
title: Alter and debug plugin definitions through managers
kind: practice
tags:
  - drupal
  - plugins
  - debugging
derived_from: []
relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-build-configurable-and-context-aware-plugins-with-cache-contexts
depends_on: []
confidence: medium
summary: >-
  Use plugin alter hooks, Drush generators, and manager inspection commands for
  plugin definition work.
---
Alter plugin definitions from other modules with the relevant plugin alteration hook, such as `block_alter` or a type-specific alter hook like `field_widget_info_alter`.

For plugin types not covered by dedicated documentation, use Drush generators such as `vendor/bin/drush generate plugin:queue-worker`, `plugin:condition`, field plugin generators, migrate plugin generators, and related plugin generators.

Debug plugin discovery with manager services: inspect definition keys, fetch an individual definition, and clear plugin caches with `drush cr` after plugin definition changes.
