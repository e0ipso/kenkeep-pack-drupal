---
schema_version: 2
id: practice-use-php-attributes-for-modern-drupal-plugins
title: Use PHP attributes for modern Drupal plugins
kind: practice
tags:
  - drupal
  - plugins
  - attributes
derived_from:
  - https://www.drupal.org/docs/drupal-apis/plugin-api/attribute-based-plugins
  - https://www.drupal.org/docs/drupal-apis/plugin-api/annotations-based-plugins
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Component%21Plugin%21Discovery%21AttributeClassDiscovery.php/class/AttributeClassDiscovery/11.x
relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-alter-and-debug-plugin-definitions-through-managers
depends_on: []
confidence: high
summary: >-
  Drupal 10.2+ plugin managers with attribute discovery should prefer PHP
  attributes and modern class conventions over legacy annotations.
---
For Drupal 10.2 and later, prefer PHP attributes when the plugin manager supports attribute discovery. Annotations remain supported for backward compatibility, especially for plugin types that have not been updated.

Place plugins in the correct namespace and directory for their plugin type, such as `Drupal\mymodule\Plugin\Block` for blocks, `Drupal\mymodule\Plugin\Field\FieldWidget` for field widgets, and `Drupal\mymodule\Plugin\views\filter` for Views filters.

Use strict types, type hints, constructor property promotion, final plugin classes, and explicit cache metadata in build arrays.
