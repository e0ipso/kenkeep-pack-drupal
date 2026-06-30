---
schema_version: 2
id: practice-use-paragraphs-behaviors-for-type-configuration
title: Use Paragraphs Behaviors For Type-Level Configuration
kind: practice
tags:
  - drupal
  - paragraphs
  - plugins
derived_from: []
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
Use Paragraphs behavior plugins to extend paragraph functionality without subclassing. A behavior plugin can add configuration fields through `buildBehaviorForm()` and apply behavior during preprocessing.

Enable behaviors per paragraph type at `/admin/structure/paragraphs_type/{type}`. Behavior settings are stored on each paragraph entity in the serialized `behavior_settings` base field.

Read settings with `$paragraph->getBehaviorSetting($plugin_id, $key)` and write them with `$paragraph->setBehaviorSetting($plugin_id, $key, $value)` before saving the paragraph.
