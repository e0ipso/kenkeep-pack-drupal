---
type: practice
title: Keep translation strings extractable and placeholder-safe
description: >-
  Use Drupal translation APIs with literal source strings, placeholders, and
  plural forms; do not concatenate translated text or pass variables as the
  source string.
tags:
  - i18n
  - strings
  - javascript
kk_schema_version: 3
kk_id: practice-translation-strings-must-be-extractable
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21StringTranslation%21StringTranslationTrait.php/trait/StringTranslationTrait/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21StringTranslation%21TranslatableMarkup.php/class/TranslatableMarkup/11.x
  - 'https://api.drupal.org/api/drupal/core%21misc%21drupal.js/11.x'
kk_relates_to:
  - practice-content-translation-check-existing-translation-first
  - practice-use-drupal-ajax-for-dynamic-interactions
  - practice-write-idempotent-drupal-javascript-behaviors
kk_depends_on: []
kk_confidence: medium
---
For PHP UI text, use $this->t() with a literal first argument and placeholders for dynamic values. Use formatPlural() for count-dependent text. In attributes or standalone labels, use TranslatableMarkup where a translated object is required. In JavaScript, use Drupal.t() and Drupal.formatPlural(). Do not concatenate translated strings and do not call t($var), because variable source strings break extraction. Use @ placeholders for user input, % when escaped emphasized output is desired, and : placeholders for URLs.

<!-- kk:related:start -->
# Related

- Related: [practice-content-translation-check-existing-translation-first](/drupal/content-model/entities-fields/practice-content-translation-check-existing-translation-first.md)
- Related: [practice-use-drupal-ajax-for-dynamic-interactions](/drupal/presentation/frontend-theme/practice-use-drupal-ajax-for-dynamic-interactions.md)
- Related: [practice-write-idempotent-drupal-javascript-behaviors](/drupal/presentation/frontend-theme/practice-write-idempotent-drupal-javascript-behaviors.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21StringTranslation%21StringTranslationTrait.php/trait/StringTranslationTrait/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21StringTranslation%21StringTranslationTrait.php/trait/StringTranslationTrait/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21StringTranslation%21TranslatableMarkup.php/class/TranslatableMarkup/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21StringTranslation%21TranslatableMarkup.php/class/TranslatableMarkup/11.x)
[3] [https://api.drupal.org/api/drupal/core%21misc%21drupal.js/11.x](https://api.drupal.org/api/drupal/core%21misc%21drupal.js/11.x)
<!-- kk:citations:end -->
