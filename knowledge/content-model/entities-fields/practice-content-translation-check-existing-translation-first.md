---
schema_version: 2
id: practice-content-translation-check-existing-translation-first
title: Check content entity translations before loading them
kind: practice
tags:
  - i18n
  - entities
  - translation
derived_from: []
relates_to:
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
  - practice-align-content-entity-keys-with-base-fields
depends_on: []
confidence: medium
summary: >-
  When working with translated content entities, check translation availability
  before calling getTranslation(), use getUntranslated() for the default
  language, and remember that field translation is configured per field.
---
Content translation work should treat translations as optional per entity and language. Use hasTranslation($langcode) before getTranslation($langcode), because getTranslation() throws when the translation does not exist. Use getTranslationLanguages() to inspect available translations, addTranslation() plus save() to create one, and getUntranslated() when the default-language entity is needed. Content language can come from languageManager()->getCurrentLanguage(LanguageInterface::TYPE_CONTENT), and entity queries can filter on langcode when language-specific content is required. Field translatability is configured per field, so do not assume every field follows the entity's translation state.
