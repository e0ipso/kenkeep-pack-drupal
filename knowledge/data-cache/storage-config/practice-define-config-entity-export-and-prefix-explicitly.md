---
type: practice
title: Define config entity export and prefix explicitly
description: >-
  Config entities need config_export for persisted properties and config_prefix
  for generated filenames.
tags:
  - drupal
  - entities
  - config
kk_schema_version: 3
kk_id: practice-define-config-entity-export-and-prefix-explicitly
kk_derived_from:
  - >-
    https://www.drupal.org/docs/drupal-apis/configuration-api/creating-a-configuration-entity-type
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Config%21Entity%21ConfigEntityType.php/class/ConfigEntityType/11.x
kk_relates_to:
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
  - practice-align-content-entity-keys-with-base-fields
kk_depends_on: []
kk_confidence: medium
---
Config entities should explicitly list exported properties in `config_export`. The `config_prefix` controls the generated filename pattern, such as `mymodule.type.{id}.yml`.

Config entities are often used as bundle entities for content entities, so keep their exported properties and schema aligned with the intended bundle configuration.

<!-- kk:related:start -->
# Related

- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-typed-entity-wrapper-structure](/drupal/content-model/entities-fields/map-typed-entity-wrapper-structure.md)
- Related: [practice-align-content-entity-keys-with-base-fields](/drupal/content-model/layout-paragraphs/practice-align-content-entity-keys-with-base-fields.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/configuration-api/creating-a-configuration-entity-type](https://www.drupal.org/docs/drupal-apis/configuration-api/creating-a-configuration-entity-type)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Config%21Entity%21ConfigEntityType.php/class/ConfigEntityType/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Config%21Entity%21ConfigEntityType.php/class/ConfigEntityType/11.x)
<!-- kk:citations:end -->
