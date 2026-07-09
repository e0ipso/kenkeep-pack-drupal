---
type: practice
title: Define field type storage and typed data separately
description: >-
  Field types use schema() for database columns and propertyDefinitions() for
  typed data properties.
tags:
  - drupal
  - fields
  - types
kk_schema_version: 3
kk_id: practice-field-types-define-storage-and-typed-data
kk_derived_from:
  - >-
    https://www.drupal.org/docs/drupal-apis/entity-api/fieldtypes-fieldwidgets-and-fieldformatters
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21FieldItemInterface.php/interface/FieldItemInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21FieldItemBase.php/class/FieldItemBase/11.x
kk_relates_to:
  - practice-computed-fields-are-computed-on-access
  - practice-field-formatters-return-render-arrays
  - practice-field-widgets-build-form-elements
kk_depends_on: []
kk_confidence: medium
---
Drupal field types live under Plugin\Field\FieldType, use the FieldType attribute, and typically extend FieldItemBase. propertyDefinitions() defines typed data properties, while schema() defines database columns; keep those responsibilities separate.

Implement isEmpty() carefully because it determines whether the field has a value. Override mainPropertyName() when the field has a primary property for shorthand access; return NULL when there is no single main property.

Use storage and field settings forms for configurable behavior, generateSampleValue() for devel_generate and tests, and getConstraints() or base field constraints for validation. preSave() returns no value, while postSave() returns a boolean to trigger a re-save of field values.

<!-- kk:related:start -->
# Related

- Related: [practice-computed-fields-are-computed-on-access](/drupal/content-model/entities-fields/practice-computed-fields-are-computed-on-access.md)
- Related: [practice-field-formatters-return-render-arrays](/drupal/data-cache/cache-render/practice-field-formatters-return-render-arrays.md)
- Related: [practice-field-widgets-build-form-elements](/drupal/presentation/forms/practice-field-widgets-build-form-elements.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/entity-api/fieldtypes-fieldwidgets-and-fieldformatters](https://www.drupal.org/docs/drupal-apis/entity-api/fieldtypes-fieldwidgets-and-fieldformatters)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21FieldItemInterface.php/interface/FieldItemInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21FieldItemInterface.php/interface/FieldItemInterface/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21FieldItemBase.php/class/FieldItemBase/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21FieldItemBase.php/class/FieldItemBase/11.x)
<!-- kk:citations:end -->
