---
schema_version: 2
id: practice-computed-fields-are-computed-on-access
title: Implement computed fields as access-time item lists
kind: practice
tags:
  - drupal
  - fields
  - computed
derived_from:
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21TypedData%21ComputedItemListTrait.php/trait/ComputedItemListTrait/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21BaseFieldDefinition.php/class/BaseFieldDefinition/11.x"
relates_to:
  - practice-field-formatters-return-render-arrays
  - practice-field-types-define-storage-and-typed-data
  - practice-field-widgets-build-form-elements
depends_on: []
confidence: medium
summary: >-
  Computed Drupal fields use ComputedItemListTrait, setComputed(TRUE), and are
  not stored in the database.
---
For computed fields, create a custom field item list class that extends `FieldItemList`, uses `ComputedItemListTrait`, and implements `computeValue()` to populate `$this->list` entries.

Register the field with `BaseFieldDefinition::create(...)`, `setComputed(TRUE)`, `setClass(<ItemList>::class)`, and display configuration as needed. Computed fields are not stored as normal field schema columns; their list values are computed lazily when accessed.

If the computed list needs injected services, use `DependencySerializationTrait`. For multi-value computed fields, set multiple `$this->list[$delta]` entries.
