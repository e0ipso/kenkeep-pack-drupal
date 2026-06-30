---
schema_version: 2
id: practice-use-php-attributes-for-modern-drupal-plugins
title: Use PHP attributes for modern Drupal plugins
kind: practice
tags:
  - drupal
  - plugins
  - attributes
derived_from: []
relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-alter-and-debug-plugin-definitions-through-managers
depends_on: []
confidence: high
summary: >-
  Drupal 10.2+ plugins should prefer PHP attributes and modern class conventions
  over legacy annotations.
---
For Drupal 10.2 and later, define plugins with PHP attributes. The documentation marks attributes as recommended for Drupal 11 and legacy annotations as supported for backward compatibility.

Place plugins in the correct namespace and directory for their plugin type, such as `Drupal\mymodule\Plugin\Block` for blocks, `Drupal\mymodule\Plugin\Field\FieldWidget` for field widgets, and `Drupal\mymodule\Plugin\views\filter` for Views filters.

Use strict types, type hints, constructor property promotion, final plugin classes, and explicit cache metadata in build arrays.
