---
type: practice
title: Use Paragraphs Behaviors For Type-Level Configuration
description: >-
  Behaviors add configurable paragraph functionality through plugins without
  subclassing paragraph entities.
tags:
  - drupal
  - paragraphs
  - plugins
kk_schema_version: 3
kk_id: practice-use-paragraphs-behaviors-for-type-configuration
kk_derived_from:
  - 'https://www.drupal.org/project/paragraphs'
  - >-
    https://git.drupalcode.org/project/paragraphs/-/blob/8.x-1.x/src/ParagraphsBehaviorInterface.php
  - >-
    https://git.drupalcode.org/project/paragraphs/-/blob/8.x-1.x/src/Entity/Paragraph.php
kk_relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - map-paragraphs-advanced-layout-library-performance
kk_depends_on: []
kk_confidence: high
---
When the project uses Paragraphs, use behavior plugins to extend paragraph functionality without subclassing. Do not add a dependency on `paragraphs` only because this node recommends it. In a contrib module, add it only when the module's own feature cannot work without it. A behavior plugin can add configuration fields through `buildBehaviorForm()` and apply behavior during render alteration or preprocessing.

Enable behaviors per paragraph type at `/admin/structure/paragraphs_type/{type}`. Behavior settings are stored on each paragraph entity in the serialized `behavior_settings` base field.

Read settings with `$paragraph->getBehaviorSetting($plugin_id, $key)` and write plugin settings with `$paragraph->setBehaviorSettings($plugin_id, $settings)` before saving the paragraph.

<!-- kk:related:start -->
# Related

- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
- Related: [map-drupal-mail-flow](/drupal/architecture/services/map-drupal-mail-flow.md)
- Related: [map-paragraphs-advanced-layout-library-performance](/drupal/content-model/layout-paragraphs/map-paragraphs-advanced-layout-library-performance.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/project/paragraphs](https://www.drupal.org/project/paragraphs)
[2] [https://git.drupalcode.org/project/paragraphs/-/blob/8.x-1.x/src/ParagraphsBehaviorInterface.php](https://git.drupalcode.org/project/paragraphs/-/blob/8.x-1.x/src/ParagraphsBehaviorInterface.php)
[3] [https://git.drupalcode.org/project/paragraphs/-/blob/8.x-1.x/src/Entity/Paragraph.php](https://git.drupalcode.org/project/paragraphs/-/blob/8.x-1.x/src/Entity/Paragraph.php)
<!-- kk:citations:end -->
