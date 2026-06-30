---
schema_version: 2
id: practice-field-types-define-storage-and-typed-data
title: Define field type storage and typed data separately
kind: practice
tags:
  - drupal
  - fields
  - types
derived_from: []
relates_to:
  - practice-computed-fields-are-computed-on-access
  - practice-field-formatters-return-render-arrays
  - practice-field-widgets-build-form-elements
depends_on: []
confidence: medium
summary: >-
  Field types use schema() for database columns and propertyDefinitions() for
  typed data properties.
---
Drupal field types live under Plugin\Field\FieldType, use the FieldType attribute, and typically extend FieldItemBase. propertyDefinitions() defines typed data properties, while schema() defines database columns; keep those responsibilities separate.

Implement isEmpty() carefully because it determines whether the field has a value. Override mainPropertyName() when the field has a primary property for shorthand access, Views default rendering, and migration value mapping; return NULL when there is no single main property.

Use storage and field settings forms for configurable behavior, generateSampleValue() for devel_generate and tests, and getConstraints() or base field constraints for validation. preSave() returns no value, while postSave() returns a boolean to trigger a re-save of field values.
