---
type: practice
title: Build field widgets as field form elements
description: >-
  Field widgets live under Plugin\Field\FieldWidget and add child form elements
  in formElement().
tags:
  - drupal
  - fields
  - widgets
kk_schema_version: 3
kk_id: practice-field-widgets-build-form-elements
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21WidgetBase.php/class/WidgetBase/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21WidgetInterface.php/interface/WidgetInterface/11.x
kk_relates_to:
  - practice-computed-fields-are-computed-on-access
  - practice-field-formatters-return-render-arrays
  - practice-field-types-define-storage-and-typed-data
kk_depends_on: []
kk_confidence: medium
---
Drupal field widgets are FieldWidget plugins, typically extending WidgetBase and implementing formElement(FieldItemListInterface $items, $delta, array $element, array &$form, FormStateInterface $form_state): array.

The widget receives $element with base field properties; add the widget's field controls as child elements and return the modified element. Use defaultSettings(), settingsForm(), and settingsSummary() for widget configuration.

Use #element_validate for field-level validation. massageFormValues() transforms submitted widget values before entity validation runs.

<!-- kk:related:start -->
# Related

- Related: [practice-computed-fields-are-computed-on-access](/drupal/content-model/entities-fields/practice-computed-fields-are-computed-on-access.md)
- Related: [practice-field-formatters-return-render-arrays](/drupal/data-cache/cache-render/practice-field-formatters-return-render-arrays.md)
- Related: [practice-field-types-define-storage-and-typed-data](/drupal/data-cache/storage-config/practice-field-types-define-storage-and-typed-data.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21WidgetBase.php/class/WidgetBase/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21WidgetBase.php/class/WidgetBase/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21WidgetInterface.php/interface/WidgetInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21WidgetInterface.php/interface/WidgetInterface/11.x)
<!-- kk:citations:end -->
