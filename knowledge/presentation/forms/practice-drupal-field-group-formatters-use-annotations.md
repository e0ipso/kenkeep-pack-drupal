---
type: practice
title: Drupal Field Group custom formatters
description: >-
  Field Group extensions define formatter plugins with @FieldGroupFormatter
  annotations and store groups on entity form/view display configuration.
tags:
  - drupal
  - seo
  - field-group
  - plugins
kk_schema_version: 3
kk_id: practice-drupal-field-group-formatters-use-annotations
kk_derived_from:
  - 'https://www.drupal.org/project/field_group'
  - >-
    https://git.drupalcode.org/project/field_group/-/blob/4.x/src/Annotation/FieldGroupFormatter.php
  - 'https://git.drupalcode.org/project/field_group/-/blob/4.x/field_group.module'
kk_relates_to:
  - practice-drupal-metatag-plugins-use-annotated-tags-and-groups
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
kk_depends_on: []
kk_confidence: high
---
Use the drupal/field_group module when grouping fields on forms or view displays. Custom formatters live under src/Plugin/field_group/FieldGroupFormatter/ and are discovered with @FieldGroupFormatter annotations, not PHP 8 attributes. Set supported_contexts to form, view, or both. Formatter preRender() can alter the render element, for example converting a group to details and applying settings such as open. Programmatic groups are saved with field_group_group_save() and include entity_type, bundle, mode, context, parent_name, weight, format_type, children, and format_settings. Groups are stored as third-party settings on entity form or view display config, and nested groups are supported.

<!-- kk:related:start -->
# Related

- Related: [practice-drupal-metatag-plugins-use-annotated-tags-and-groups](/drupal/content-model/media-seo-search/practice-drupal-metatag-plugins-use-annotated-tags-and-groups.md)
- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
- Related: [map-drupal-mail-flow](/drupal/architecture/services/map-drupal-mail-flow.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/project/field_group](https://www.drupal.org/project/field_group)
[2] [https://git.drupalcode.org/project/field_group/-/blob/4.x/src/Annotation/FieldGroupFormatter.php](https://git.drupalcode.org/project/field_group/-/blob/4.x/src/Annotation/FieldGroupFormatter.php)
[3] [https://git.drupalcode.org/project/field_group/-/blob/4.x/field_group.module](https://git.drupalcode.org/project/field_group/-/blob/4.x/field_group.module)
<!-- kk:citations:end -->
