---
type: practice
title: Build field formatters as render-array producers
description: >-
  Field formatters live under Plugin\Field\FieldFormatter and return render
  arrays from viewElements().
tags:
  - drupal
  - fields
  - formatters
kk_schema_version: 3
kk_id: practice-field-formatters-return-render-arrays
kk_derived_from:
  - >-
    https://www.drupal.org/docs/drupal-apis/entity-api/fieldtypes-fieldwidgets-and-fieldformatters
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21FormatterBase.php/class/FormatterBase/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21FormatterInterface.php/function/FormatterInterface%3A%3AviewElements/11.x
kk_relates_to:
  - practice-computed-fields-are-computed-on-access
  - practice-field-types-define-storage-and-typed-data
  - practice-field-widgets-build-form-elements
kk_depends_on: []
kk_confidence: medium
---
Drupal field formatters are FieldFormatter plugins, typically extending FormatterBase and implementing viewElements(FieldItemListInterface $items, $langcode): array. Build one render-array element per field item delta.

Use defaultSettings(), settingsForm(), and settingsSummary() for formatter configuration. If formatter output depends on external data, add cache metadata with CacheableMetadata.

Access the parent entity through $items->getEntity(). Return an empty array for empty fields rather than NULL.

<!-- kk:related:start -->
# Related

- Related: [practice-computed-fields-are-computed-on-access](/drupal/content-model/entities-fields/practice-computed-fields-are-computed-on-access.md)
- Related: [practice-field-types-define-storage-and-typed-data](/drupal/data-cache/storage-config/practice-field-types-define-storage-and-typed-data.md)
- Related: [practice-field-widgets-build-form-elements](/drupal/presentation/forms/practice-field-widgets-build-form-elements.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/entity-api/fieldtypes-fieldwidgets-and-fieldformatters](https://www.drupal.org/docs/drupal-apis/entity-api/fieldtypes-fieldwidgets-and-fieldformatters)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21FormatterBase.php/class/FormatterBase/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21FormatterBase.php/class/FormatterBase/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21FormatterInterface.php/function/FormatterInterface%3A%3AviewElements/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21FormatterInterface.php/function/FormatterInterface%3A%3AviewElements/11.x)
<!-- kk:citations:end -->
