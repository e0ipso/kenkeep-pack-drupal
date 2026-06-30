---
schema_version: 2
id: practice-use-paragraphs-behaviors-for-type-configuration
title: Use Paragraphs Behaviors For Type-Level Configuration
kind: practice
tags:
  - drupal
  - paragraphs
  - plugins
derived_from:
  - https://www.drupal.org/project/paragraphs
  - https://git.drupalcode.org/project/paragraphs/-/blob/8.x-1.x/src/ParagraphsBehaviorInterface.php
  - https://git.drupalcode.org/project/paragraphs/-/blob/8.x-1.x/src/Entity/Paragraph.php
relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - map-paragraphs-advanced-layout-library-performance
depends_on: []
confidence: high
summary: >-
  Behaviors add configurable paragraph functionality through plugins without
  subclassing paragraph entities.
---
Use Paragraphs behavior plugins to extend paragraph functionality without subclassing. A behavior plugin can add configuration fields through `buildBehaviorForm()` and apply behavior during render alteration or preprocessing.

Enable behaviors per paragraph type at `/admin/structure/paragraphs_type/{type}`. Behavior settings are stored on each paragraph entity in the serialized `behavior_settings` base field.

Read settings with `$paragraph->getBehaviorSetting($plugin_id, $key)` and write plugin settings with `$paragraph->setBehaviorSettings($plugin_id, $settings)` before saving the paragraph.
