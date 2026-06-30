---
schema_version: 2
id: practice-field-formatters-return-render-arrays
title: Build field formatters as render-array producers
kind: practice
tags:
  - drupal
  - fields
  - formatters
derived_from:
  - https://www.drupal.org/docs/drupal-apis/entity-api/fieldtypes-fieldwidgets-and-fieldformatters
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21FormatterBase.php/class/FormatterBase/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Field%21FormatterInterface.php/function/FormatterInterface%3A%3AviewElements/11.x
relates_to:
  - practice-computed-fields-are-computed-on-access
  - practice-field-types-define-storage-and-typed-data
  - practice-field-widgets-build-form-elements
depends_on: []
confidence: medium
summary: >-
  Field formatters live under Plugin\Field\FieldFormatter and return render
  arrays from viewElements().
---
Drupal field formatters are FieldFormatter plugins, typically extending FormatterBase and implementing viewElements(FieldItemListInterface $items, $langcode): array. Build one render-array element per field item delta.

Use defaultSettings(), settingsForm(), and settingsSummary() for formatter configuration. If formatter output depends on external data, add cache metadata with CacheableMetadata.

Access the parent entity through $items->getEntity(). Return an empty array for empty fields rather than NULL.
