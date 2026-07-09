---
type: practice
title: Check content entity translations before loading them
description: >-
  When working with translated content entities, check translation availability
  before calling getTranslation(), use getUntranslated() for the default
  language, and remember that field translation is configured per field.
tags:
  - i18n
  - entities
  - translation
kk_schema_version: 3
kk_id: practice-content-translation-check-existing-translation-first
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21TranslatableInterface.php/interface/TranslatableInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityRepositoryInterface.php/interface/EntityRepositoryInterface/11.x
kk_relates_to:
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
  - practice-align-content-entity-keys-with-base-fields
kk_depends_on: []
kk_confidence: medium
---
Content translation work should treat translations as optional per entity and language. Use `hasTranslation($langcode)` before `getTranslation($langcode)`, because `getTranslation()` throws when the translation does not exist. Use `getTranslationLanguages()` to inspect available translations, `addTranslation()` plus `save()` to create one, and `getUntranslated()` when the default-language entity is needed.

Content language can come from `languageManager()->getCurrentLanguage(LanguageInterface::TYPE_CONTENT)`. Entity queries can filter on `langcode` when language-specific rows are required, but loaded entities still need the correct translation object; use `getTranslation()` after checking availability or `entity.repository` translation helpers for context-aware rendering. Field translatability is configured per field, so do not assume every field follows the entity's translation state.

<!-- kk:related:start -->
# Related

- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-typed-entity-wrapper-structure](/drupal/content-model/entities-fields/map-typed-entity-wrapper-structure.md)
- Related: [practice-align-content-entity-keys-with-base-fields](/drupal/content-model/layout-paragraphs/practice-align-content-entity-keys-with-base-fields.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21TranslatableInterface.php/interface/TranslatableInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21TranslatableInterface.php/interface/TranslatableInterface/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityRepositoryInterface.php/interface/EntityRepositoryInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityRepositoryInterface.php/interface/EntityRepositoryInterface/11.x)
<!-- kk:citations:end -->
