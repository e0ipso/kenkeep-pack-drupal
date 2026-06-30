---
schema_version: 2
id: practice-translation-strings-must-be-extractable
title: Keep translation strings extractable and placeholder-safe
kind: practice
tags:
  - i18n
  - strings
  - javascript
derived_from: []
relates_to:
  - practice-content-translation-check-existing-translation-first
  - practice-use-drupal-ajax-for-dynamic-interactions
  - practice-write-idempotent-drupal-javascript-behaviors
depends_on: []
confidence: medium
summary: >-
  Use Drupal translation APIs with literal source strings, placeholders, and
  plural forms; do not concatenate translated text or pass variables as the
  source string.
---
For PHP UI text, use $this->t() with a literal first argument and placeholders for dynamic values. Use formatPlural() for count-dependent text. In attributes or standalone labels, use TranslatableMarkup where a translated object is required. In JavaScript, use Drupal.t() and Drupal.formatPlural(). Do not concatenate translated strings and do not call t($var), because variable source strings break extraction. Use @ placeholders for user input, % when escaped emphasized output is desired, and : placeholders for URLs.
