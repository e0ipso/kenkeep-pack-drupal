---
type: practice
title: Align content entity keys with base fields
description: >-
  Content entity entity_keys must match base field names, with revision and
  langcode keys added when enabled.
tags:
  - drupal
  - entities
  - content
kk_schema_version: 3
kk_id: practice-align-content-entity-keys-with-base-fields
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21Attribute%21ContentEntityType.php/class/ContentEntityType/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21BaseFieldDefinition.php/class/BaseFieldDefinition/11.x
kk_relates_to:
  - map-drupal-entity-form-bases
  - map-layout-builder-page-assembly
  - map-paragraphs-structured-content-composition
kk_depends_on: []
kk_confidence: medium
---
For content entities, `entity_keys` must match the entity's defined base field names. When enabling revisions or translations, add the corresponding revision and langcode keys and configure the revision/data tables in the `ContentEntityType` definition.

Use `EntityChangedTrait` and `EntityOwnerTrait` where changed timestamps or ownership are part of the entity model. Set `field_ui_base_route` in the definition when Field UI support is needed.

<!-- kk:related:start -->
# Related

- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-layout-builder-page-assembly](/drupal/content-model/layout-paragraphs/map-layout-builder-page-assembly.md)
- Related: [map-paragraphs-structured-content-composition](/drupal/content-model/layout-paragraphs/map-paragraphs-structured-content-composition.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21Attribute%21ContentEntityType.php/class/ContentEntityType/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21Attribute%21ContentEntityType.php/class/ContentEntityType/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21BaseFieldDefinition.php/class/BaseFieldDefinition/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21BaseFieldDefinition.php/class/BaseFieldDefinition/11.x)
<!-- kk:citations:end -->
