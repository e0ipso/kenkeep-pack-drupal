---
schema_version: 2
id: practice-write-idempotent-drupal-javascript-behaviors
title: Write idempotent Drupal JavaScript behaviors
kind: practice
tags:
  - frontend
  - javascript
  - behaviors
  - security
derived_from: []
relates_to:
  - practice-use-drupal-ajax-for-dynamic-interactions
  - map-ajax-command-reference-surface
  - map-drupal-security-patterns-by-context
depends_on: []
confidence: medium
summary: >-
  Use drupalSettings, behaviors, once(), and narrow settings data for Drupal
  JavaScript integration.
---
Pass PHP data to JavaScript through #attached drupalSettings and attach the matching asset library on the render array. JavaScript should read those settings inside Drupal behaviors rather than relying on custom globals.

Use Drupal.behaviors with attach(context, settings), and wrap DOM initialization in once() so elements are not initialized again after AJAX responses or BigPipe placeholder replacement. Declare core/once as a library dependency when once() is used.

Use detach(context, settings, trigger) to clean up before elements are removed, moved, or serialized. Keep drupalSettings limited to what client-side code actually needs; do not expose sensitive user data such as email addresses.
