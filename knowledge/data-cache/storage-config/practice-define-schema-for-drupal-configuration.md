---
type: practice
title: Define schema for Drupal configuration
description: >-
  Every module configuration object needs schema; modern config forms can bind
  fields with #config_target.
tags:
  - drupal
  - config
  - forms
kk_schema_version: 3
kk_id: practice-define-schema-for-drupal-configuration
kk_derived_from:
  - >-
    https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-schemametadata
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21ConfigFormBase.php/class/ConfigFormBase/11.x
kk_relates_to:
  - practice-prefer-config-target-for-settings-forms
  - map-drupal-entity-form-bases
  - map-drupal-form-building-patterns
kk_depends_on: []
kk_confidence: high
---
Always define config schema for module configuration objects under `config/schema`. Schema is required for translation and validation, and default configuration belongs in `config/install/*.yml`.

For Drupal 10.2 and newer config forms, use `#config_target` to bind form elements directly to config keys and avoid boilerplate submit handling. Keep secrets out of committed configuration by using environment-backed overrides in `settings.php`.

<!-- kk:related:start -->
# Related

- Related: [practice-prefer-config-target-for-settings-forms](/drupal/data-cache/storage-config/practice-prefer-config-target-for-settings-forms.md)
- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-drupal-form-building-patterns](/drupal/presentation/forms/map-drupal-form-building-patterns.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-schemametadata](https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-schemametadata)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21ConfigFormBase.php/class/ConfigFormBase/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21ConfigFormBase.php/class/ConfigFormBase/11.x)
<!-- kk:citations:end -->
