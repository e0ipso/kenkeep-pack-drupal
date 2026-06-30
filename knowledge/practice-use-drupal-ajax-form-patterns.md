---
schema_version: 2
id: practice-use-drupal-ajax-form-patterns
title: Use Drupal AJAX form patterns
kind: practice
tags:
  - forms
  - ajax
  - drupal
derived_from: []
relates_to:
  - map-ajax-command-reference-surface
  - map-drupal-entity-form-bases
  - map-drupal-form-building-patterns
depends_on: []
confidence: medium
summary: >-
  Build Drupal form AJAX with #ajax callbacks, wrapper IDs, AjaxResponse
  commands, and rebuilds for dynamic items.
---
For AJAX-enabled Drupal forms, attach #ajax to the triggering element, make its wrapper value match the rendered wrapper element id, and return the wrapper element from the callback rather than only its inner content.

Use AjaxResponse commands such as ReplaceCommand, HtmlCommand, InvokeCommand, AlertCommand, RedirectCommand, and modal commands when a callback needs multiple client-side effects. For add/remove controls, skip validation with #limit_validation_errors => [] when appropriate, update form state, and call setRebuild().

Outside forms, use Drupal.ajax() for dynamic interactions instead of raw fetch() with custom JSON controllers.
