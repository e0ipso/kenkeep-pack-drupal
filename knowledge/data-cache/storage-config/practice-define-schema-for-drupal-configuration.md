---
schema_version: 2
id: practice-define-schema-for-drupal-configuration
title: Define schema for Drupal configuration
kind: practice
tags:
  - drupal
  - config
  - forms
derived_from:
  - https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-schemametadata
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21ConfigFormBase.php/class/ConfigFormBase/11.x
relates_to:
  - practice-prefer-config-target-for-settings-forms
  - map-drupal-entity-form-bases
  - map-drupal-form-building-patterns
depends_on: []
confidence: high
summary: >-
  Every module configuration object needs schema; modern config forms can bind
  fields with #config_target.
---
Always define config schema for module configuration objects under `config/schema`. Schema is required for translation and validation, and default configuration belongs in `config/install/*.yml`.

For Drupal 10.2 and newer config forms, use `#config_target` to bind form elements directly to config keys and avoid boilerplate submit handling. Keep secrets out of committed configuration by using environment-backed overrides in `settings.php`.
