---
schema_version: 2
id: practice-align-content-entity-keys-with-base-fields
title: Align content entity keys with base fields
kind: practice
tags:
  - drupal
  - entities
  - content
derived_from: []
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
For content entities, entity_keys must match the entity's base field names. When enabling revisions or translations, add the corresponding revision and langcode keys and configure the revision/data tables in the ContentEntityType attribute.

Use EntityChangedTrait and EntityOwnerTrait where changed timestamps or ownership are part of the entity model. Set field_ui_base_route in the attribute when Field UI support is needed.
