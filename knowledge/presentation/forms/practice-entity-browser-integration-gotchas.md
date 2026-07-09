---
type: practice
title: Handle Entity Browser integration gotchas
description: >-
  Entity Browser integrations need the right Views field, modal library,
  selection mode, access checks, and annotations.
tags:
  - drupal
  - media
  - entity-browser
  - forms
kk_schema_version: 3
kk_id: practice-entity-browser-integration-gotchas
kk_derived_from:
  - 'https://www.drupal.org/project/entity_browser'
  - >-
    https://git.drupalcode.org/project/entity_browser/-/blob/8.x-2.x/src/Annotation/EntityBrowserWidget.php
  - >-
    https://git.drupalcode.org/project/entity_browser/-/blob/8.x-2.x/entity_browser.views.inc
  - >-
    https://git.drupalcode.org/project/entity_browser/-/blob/8.x-2.x/src/Plugin/EntityBrowser/Widget/View.php
kk_relates_to:
  - practice-extend-addformbase-for-custom-media-add-forms
  - map-drupal-entity-form-bases
  - map-drupal-form-building-patterns
kk_depends_on: []
kk_confidence: medium
---
When building Entity Browser integrations, include the `Entity browser bulk select form` field on Views-based widgets; its Views field plugin ID is `entity_browser_select`. Attach `core/drupal.dialog.ajax` when using modal display.

Choose append versus replace selection mode deliberately, validate entity access in submit handlers, and remember that Entity Browser widgets use annotation discovery with `@EntityBrowserWidget` rather than PHP 8 attributes.

<!-- kk:related:start -->
# Related

- Related: [practice-extend-addformbase-for-custom-media-add-forms](/drupal/presentation/forms/practice-extend-addformbase-for-custom-media-add-forms.md)
- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-drupal-form-building-patterns](/drupal/presentation/forms/map-drupal-form-building-patterns.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/project/entity_browser](https://www.drupal.org/project/entity_browser)
[2] [https://git.drupalcode.org/project/entity_browser/-/blob/8.x-2.x/src/Annotation/EntityBrowserWidget.php](https://git.drupalcode.org/project/entity_browser/-/blob/8.x-2.x/src/Annotation/EntityBrowserWidget.php)
[3] [https://git.drupalcode.org/project/entity_browser/-/blob/8.x-2.x/entity_browser.views.inc](https://git.drupalcode.org/project/entity_browser/-/blob/8.x-2.x/entity_browser.views.inc)
[4] [https://git.drupalcode.org/project/entity_browser/-/blob/8.x-2.x/src/Plugin/EntityBrowser/Widget/View.php](https://git.drupalcode.org/project/entity_browser/-/blob/8.x-2.x/src/Plugin/EntityBrowser/Widget/View.php)
<!-- kk:citations:end -->
