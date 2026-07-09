---
type: practice
title: Register custom plugin managers with default_plugin_manager
description: >-
  Custom plugin manager services should use parent: default_plugin_manager, not
  plain autowiring.
tags:
  - drupal
  - plugins
  - services
kk_schema_version: 3
kk_id: practice-register-custom-plugin-managers-with-default-plugin-manager-parent
kk_derived_from:
  - >-
    https://www.drupal.org/docs/drupal-apis/plugin-api/creating-your-own-plugin-manager
  - 'https://www.drupal.org/docs/drupal-apis/plugin-api/attribute-based-plugins'
  - >-
    https://api.drupal.org/api/drupal/core%21core.services.yml/service/default_plugin_manager/11.x
kk_relates_to:
  - map-advanced-drupal-service-patterns
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
kk_depends_on: []
kk_confidence: high
---
Use existing plugin managers when possible. Common manager operations include `getDefinitions()`, `getSortedDefinitions()`, `getGroupedDefinitions()`, and `createInstance()`.

For a custom plugin type, extend `DefaultPluginManager`, point discovery at the plugin subdirectory, provide the plugin interface and attribute class, configure alter info if needed, and set a cache backend.

Register the manager service with `parent: default_plugin_manager`. The documentation explicitly notes that plugin managers need this parent because the required container arguments are not autowireable.

<!-- kk:related:start -->
# Related

- Related: [map-advanced-drupal-service-patterns](/drupal/architecture/services/map-advanced-drupal-service-patterns.md)
- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
- Related: [map-drupal-mail-flow](/drupal/architecture/services/map-drupal-mail-flow.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/plugin-api/creating-your-own-plugin-manager](https://www.drupal.org/docs/drupal-apis/plugin-api/creating-your-own-plugin-manager)
[2] [https://www.drupal.org/docs/drupal-apis/plugin-api/attribute-based-plugins](https://www.drupal.org/docs/drupal-apis/plugin-api/attribute-based-plugins)
[3] [https://api.drupal.org/api/drupal/core%21core.services.yml/service/default_plugin_manager/11.x](https://api.drupal.org/api/drupal/core%21core.services.yml/service/default_plugin_manager/11.x)
<!-- kk:citations:end -->
