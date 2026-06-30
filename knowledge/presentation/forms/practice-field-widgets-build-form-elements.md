---
schema_version: 2
id: practice-field-widgets-build-form-elements
title: Build field widgets as field form elements
kind: practice
tags:
  - drupal
  - fields
  - widgets
derived_from: []
relates_to:
  - practice-computed-fields-are-computed-on-access
  - practice-field-formatters-return-render-arrays
  - practice-field-types-define-storage-and-typed-data
depends_on: []
confidence: medium
summary: >-
  Field widgets live under Plugin\Field\FieldWidget and add child form elements
  in formElement().
---
Drupal field widgets are FieldWidget plugins, typically extending WidgetBase and implementing formElement(FieldItemListInterface $items, $delta, array $element, array &$form, FormStateInterface $form_state): array.

The widget receives $element with base field properties; add the widget's field controls as child elements and return the modified element. Use defaultSettings(), settingsForm(), and settingsSummary() for widget configuration.

Use #element_validate for field-level validation. massageFormValues() transforms submitted widget values before entity validation runs.
