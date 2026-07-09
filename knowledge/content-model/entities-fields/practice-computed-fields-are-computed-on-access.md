---
type: practice
title: Implement computed fields as access-time item lists
description: >-
  Computed Drupal fields use ComputedItemListTrait, setComputed(TRUE), and are
  not stored in the database.
tags:
  - drupal
  - fields
  - computed
kk_schema_version: 3
kk_id: practice-computed-fields-are-computed-on-access
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TypedData%21ComputedItemListTrait.php/trait/ComputedItemListTrait/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21BaseFieldDefinition.php/class/BaseFieldDefinition/11.x
kk_relates_to:
  - practice-field-formatters-return-render-arrays
  - practice-field-types-define-storage-and-typed-data
  - practice-field-widgets-build-form-elements
kk_depends_on: []
kk_confidence: medium
---
For computed fields, create a custom field item list class that extends `FieldItemList`, uses `ComputedItemListTrait`, and implements `computeValue()` to populate `$this->list` entries.

Register the field with `BaseFieldDefinition::create(...)`, `setComputed(TRUE)`, `setClass(<ItemList>::class)`, and display configuration as needed. Computed fields are not stored as normal field schema columns; their list values are computed lazily when accessed.

If the computed list needs injected services, use `DependencySerializationTrait`. For multi-value computed fields, set multiple `$this->list[$delta]` entries.

<!-- kk:related:start -->
# Related

- Related: [practice-field-formatters-return-render-arrays](/drupal/data-cache/cache-render/practice-field-formatters-return-render-arrays.md)
- Related: [practice-field-types-define-storage-and-typed-data](/drupal/data-cache/storage-config/practice-field-types-define-storage-and-typed-data.md)
- Related: [practice-field-widgets-build-form-elements](/drupal/presentation/forms/practice-field-widgets-build-form-elements.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TypedData%21ComputedItemListTrait.php/trait/ComputedItemListTrait/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TypedData%21ComputedItemListTrait.php/trait/ComputedItemListTrait/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21BaseFieldDefinition.php/class/BaseFieldDefinition/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21BaseFieldDefinition.php/class/BaseFieldDefinition/11.x)
<!-- kk:citations:end -->
