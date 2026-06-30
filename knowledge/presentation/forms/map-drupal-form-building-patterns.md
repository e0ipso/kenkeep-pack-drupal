---
schema_version: 2
id: map-drupal-form-building-patterns
title: Drupal form building patterns
kind: map
tags:
  - forms
  - drupal
  - reference
derived_from:
  - https://api.drupal.org/api/drupal/core%21core.api.php/group/form_api/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21ConfigFormBase.php/class/ConfigFormBase/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21ConfigTarget.php/class/ConfigTarget/11.x
relates_to:
  - practice-define-schema-for-drupal-configuration
  - practice-entity-browser-integration-gotchas
  - practice-extend-addformbase-for-custom-media-add-forms
depends_on: []
confidence: medium
summary: >-
  Drupal forms in these docs cover config, basic, confirm, multi-step,
  validation, elements, and common properties.
---
The forms documentation maps common Drupal form classes and patterns: ConfigFormBase for settings forms, FormBase for custom standalone forms, ConfirmFormBase for confirmation flows, and FormStateInterface for values, errors, redirects, and rebuild state.

Settings forms can bind elements to configuration with #config_target, including nested keys and ConfigTarget transforms for values such as newline-separated textarea input to arrays. With ConfigFormBase's default submit handling, a submitForm() override is not needed for basic #config_target saving.

The same reference lists common element types, common render properties such as #required, #default_value, #access, #states, #prefix/#suffix, and validation patterns for both form-level and element-level validators.
