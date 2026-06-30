---
schema_version: 2
id: practice-prefer-config-target-for-settings-forms
title: 'Prefer #config_target for settings forms'
kind: practice
tags:
  - forms
  - config
  - drupal
derived_from:
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21ConfigFormBase.php/class/ConfigFormBase/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21ConfigTarget.php/class/ConfigTarget/11.x
relates_to:
  - practice-define-schema-for-drupal-configuration
  - map-drupal-entity-form-bases
  - map-drupal-form-building-patterns
depends_on: []
confidence: high
summary: >-
  Use #config_target on Drupal 10.2+ settings forms instead of manual config
  load/save boilerplate.
---
For Drupal 10.2+ settings forms, prefer #config_target on form elements to bind values directly to configuration keys. This provides automatic config loading and saving, supports nested config keys, reduces boilerplate, and reduces error potential.

Avoid manually loading config in buildForm(), copying defaults into elements, then overriding submitForm() only to set values and save. With #config_target for simple settings fields, no submitForm() override is needed.
