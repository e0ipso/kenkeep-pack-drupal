---
schema_version: 2
id: practice-register-custom-plugin-managers-with-default-plugin-manager-parent
title: Register custom plugin managers with default_plugin_manager
kind: practice
tags:
  - drupal
  - plugins
  - services
derived_from: []
relates_to:
  - map-advanced-drupal-service-patterns
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
depends_on: []
confidence: high
summary: >-
  Custom plugin manager services should use parent: default_plugin_manager, not
  plain autowiring.
---
Use existing plugin managers when possible. Common manager operations include `getDefinitions()`, `getSortedDefinitions()`, `getGroupedDefinitions()`, and `createInstance()`.

For a custom plugin type, extend `DefaultPluginManager`, point discovery at the plugin subdirectory, provide the plugin interface and attribute class, configure alter info if needed, and set a cache backend.

Register the manager service with `parent: default_plugin_manager`. The documentation explicitly notes that plugin managers need this parent because the required container arguments are not autowireable.
