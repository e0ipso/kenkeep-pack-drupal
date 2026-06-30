---
schema_version: 2
id: map-drupal-form-building-patterns
title: Drupal form building patterns
kind: map
tags:
  - forms
  - drupal
  - reference
derived_from: []
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

Settings forms can bind elements to configuration with #config_target, including nested keys and ConfigTarget transforms for values such as newline-separated textarea input to arrays. With #config_target, a submitForm() override is not needed for basic config saving.

The same reference lists common element types, common render properties such as #required, #default_value, #access, #states, #prefix/#suffix, and validation patterns for both form-level and element-level validators.
