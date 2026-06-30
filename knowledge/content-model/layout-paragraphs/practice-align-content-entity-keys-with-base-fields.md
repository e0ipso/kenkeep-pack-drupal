---
schema_version: 2
id: practice-align-content-entity-keys-with-base-fields
title: Align content entity keys with base fields
kind: practice
tags:
  - drupal
  - entities
  - content
derived_from:
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21Attribute%21ContentEntityType.php/class/ContentEntityType/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21BaseFieldDefinition.php/class/BaseFieldDefinition/11.x"
relates_to:
  - map-drupal-entity-form-bases
  - map-layout-builder-page-assembly
  - map-paragraphs-structured-content-composition
depends_on: []
confidence: medium
summary: >-
  Content entity entity_keys must match base field names, with revision and
  langcode keys added when enabled.
---
For content entities, `entity_keys` must match the entity's defined base field names. When enabling revisions or translations, add the corresponding revision and langcode keys and configure the revision/data tables in the `ContentEntityType` definition.

Use `EntityChangedTrait` and `EntityOwnerTrait` where changed timestamps or ownership are part of the entity model. Set `field_ui_base_route` in the definition when Field UI support is needed.
