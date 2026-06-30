---
schema_version: 2
id: practice-drupal-field-group-formatters-use-annotations
title: Drupal Field Group custom formatters
kind: practice
tags:
  - drupal
  - seo
  - field-group
  - plugins
derived_from:
  - https://www.drupal.org/project/field_group
  - https://git.drupalcode.org/project/field_group/-/blob/4.x/src/Annotation/FieldGroupFormatter.php
  - https://git.drupalcode.org/project/field_group/-/blob/4.x/field_group.module
relates_to:
  - practice-drupal-metatag-plugins-use-annotated-tags-and-groups
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
depends_on: []
confidence: high
summary: >-
  Field Group extensions define formatter plugins with @FieldGroupFormatter
  annotations and store groups in entity display configuration.
---
Use the drupal/field_group module when grouping fields on forms or view displays. Custom formatters live under src/Plugin/field_group/FieldGroupFormatter/ and are discovered with @FieldGroupFormatter annotations, not PHP 8 attributes. Set supported_contexts to form, view, or both. Formatter preRender() can alter the render element, for example converting a group to details and applying settings such as open. Programmatic groups are saved with field_group_group_save() and include entity_type, bundle, mode, context, parent_name, weight, format_type, children, and format_settings. Groups are stored as third-party settings on entity form or view display config, and nested groups are supported.
