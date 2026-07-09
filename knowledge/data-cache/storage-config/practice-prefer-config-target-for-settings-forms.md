---
type: practice
title: 'Prefer #config_target for settings forms'
description: >-
  Use #config_target on Drupal 10.2+ settings forms instead of manual config
  load/save boilerplate.
tags:
  - forms
  - config
  - drupal
kk_schema_version: 3
kk_id: practice-prefer-config-target-for-settings-forms
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21ConfigFormBase.php/class/ConfigFormBase/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21ConfigTarget.php/class/ConfigTarget/11.x
kk_relates_to:
  - practice-define-schema-for-drupal-configuration
  - map-drupal-entity-form-bases
  - map-drupal-form-building-patterns
kk_depends_on: []
kk_confidence: high
---
For Drupal 10.2+ settings forms, prefer #config_target on form elements to bind values directly to configuration keys. This provides automatic config loading and saving, supports nested config keys, reduces boilerplate, and reduces error potential.

Avoid manually loading config in buildForm(), copying defaults into elements, then overriding submitForm() only to set values and save. With #config_target for simple settings fields, no submitForm() override is needed.

<!-- kk:related:start -->
# Related

- Related: [practice-define-schema-for-drupal-configuration](/drupal/data-cache/storage-config/practice-define-schema-for-drupal-configuration.md)
- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-drupal-form-building-patterns](/drupal/presentation/forms/map-drupal-form-building-patterns.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21ConfigFormBase.php/class/ConfigFormBase/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21ConfigFormBase.php/class/ConfigFormBase/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21ConfigTarget.php/class/ConfigTarget/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21ConfigTarget.php/class/ConfigTarget/11.x)
<!-- kk:citations:end -->
