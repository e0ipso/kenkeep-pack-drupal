---
schema_version: 2
id: practice-use-drupal-ajax-for-dynamic-interactions
title: Use Drupal.ajax for dynamic interactions
kind: practice
tags:
  - frontend
  - ajax
  - javascript
  - drupal
derived_from: []
relates_to:
  - map-ajax-command-reference-surface
  - practice-attach-frontend-assets-through-libraries
  - practice-modal-dialog-route-links
depends_on: []
confidence: high
summary: >-
  Use Drupal.ajax and AjaxResponse commands instead of raw fetch or custom JSON
  endpoints.
---
For JavaScript-driven server communication, use Drupal.ajax() with server-side AjaxResponse commands. Do not use raw fetch(), XMLHttpRequest, or custom JSON-returning controllers for this interaction pattern.

This keeps standalone JavaScript on the same protocol as form #ajax and lets Drupal process built-in commands for DOM updates, messages, redirects, modals, settings, and errors. It also avoids ad-hoc JSON payloads that bypass Drupal's render and cache pipeline.

For form AJAX, make the wrapper value match the target element id, return the wrapper element from callbacks rather than inner content, and use #limit_validation_errors => [] for add/remove buttons that should skip validation.
