---
schema_version: 2
id: practice-entity-browser-integration-gotchas
title: Handle Entity Browser integration gotchas
kind: practice
tags:
  - drupal
  - media
  - entity-browser
  - forms
derived_from:
  - https://www.drupal.org/project/entity_browser
  - https://git.drupalcode.org/project/entity_browser/-/blob/8.x-2.x/src/Annotation/EntityBrowserWidget.php
  - https://git.drupalcode.org/project/entity_browser/-/blob/8.x-2.x/entity_browser.views.inc
  - https://git.drupalcode.org/project/entity_browser/-/blob/8.x-2.x/src/Plugin/EntityBrowser/Widget/View.php
relates_to:
  - practice-extend-addformbase-for-custom-media-add-forms
  - map-drupal-entity-form-bases
  - map-drupal-form-building-patterns
depends_on: []
confidence: medium
summary: >-
  Entity Browser integrations need the right Views field, modal library,
  selection mode, access checks, and annotations.
---
When building Entity Browser integrations, include the `Entity browser bulk select form` field on Views-based widgets; its Views field plugin ID is `entity_browser_select`. Attach `core/drupal.dialog.ajax` when using modal display.

Choose append versus replace selection mode deliberately, validate entity access in submit handlers, and remember that Entity Browser widgets use annotation discovery with `@EntityBrowserWidget` rather than PHP 8 attributes.
