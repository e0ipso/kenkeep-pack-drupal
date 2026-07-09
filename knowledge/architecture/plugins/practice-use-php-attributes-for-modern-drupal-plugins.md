---
type: practice
title: Use PHP attributes for modern Drupal plugins
description: >-
  Drupal 10.2+ plugin managers with attribute discovery should prefer PHP
  attributes and modern class conventions over legacy annotations.
tags:
  - drupal
  - plugins
  - attributes
kk_schema_version: 3
kk_id: practice-use-php-attributes-for-modern-drupal-plugins
kk_derived_from:
  - 'https://www.drupal.org/docs/drupal-apis/plugin-api/attribute-based-plugins'
  - 'https://www.drupal.org/docs/drupal-apis/plugin-api/annotations-based-plugins'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Component%21Plugin%21Discovery%21AttributeClassDiscovery.php/class/AttributeClassDiscovery/11.x
kk_relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-alter-and-debug-plugin-definitions-through-managers
kk_depends_on: []
kk_confidence: high
---
For Drupal 10.2 and later, prefer PHP attributes when the plugin manager supports attribute discovery. Annotations remain supported for backward compatibility, especially for plugin types that have not been updated.

Place plugins in the correct namespace and directory for their plugin type, such as `Drupal\mymodule\Plugin\Block` for blocks, `Drupal\mymodule\Plugin\Field\FieldWidget` for field widgets, and `Drupal\mymodule\Plugin\views\filter` for Views filters.

Use strict types, type hints, constructor property promotion, final plugin classes, and explicit cache metadata in build arrays.

<!-- kk:related:start -->
# Related

- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
- Related: [map-drupal-mail-flow](/drupal/architecture/services/map-drupal-mail-flow.md)
- Related: [practice-alter-and-debug-plugin-definitions-through-managers](/drupal/quality/practice-alter-and-debug-plugin-definitions-through-managers.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/plugin-api/attribute-based-plugins](https://www.drupal.org/docs/drupal-apis/plugin-api/attribute-based-plugins)
[2] [https://www.drupal.org/docs/drupal-apis/plugin-api/annotations-based-plugins](https://www.drupal.org/docs/drupal-apis/plugin-api/annotations-based-plugins)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Component%21Plugin%21Discovery%21AttributeClassDiscovery.php/class/AttributeClassDiscovery/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Component%21Plugin%21Discovery%21AttributeClassDiscovery.php/class/AttributeClassDiscovery/11.x)
<!-- kk:citations:end -->
