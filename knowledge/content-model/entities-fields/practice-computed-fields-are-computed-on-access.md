---
schema_version: 2
id: practice-computed-fields-are-computed-on-access
title: Implement computed fields as access-time item lists
kind: practice
tags:
  - drupal
  - fields
  - computed
derived_from: []
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
For computed fields, create a custom field item list class that extends FieldItemList, uses ComputedItemListTrait, and implements computeValue() to populate $this->list entries.

Register the field with BaseFieldDefinition::create(...), setComputed(TRUE), setClass(<ItemList>::class), and display configuration as needed. Computed fields have no database storage and are computed on access.

If the computed list needs injected services, use DependencySerializationTrait. For multi-value computed fields, set multiple $this->list[$delta] entries.
