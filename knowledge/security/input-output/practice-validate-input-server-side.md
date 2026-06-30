---
schema_version: 2
id: practice-validate-input-server-side
title: Validate input server-side before use
kind: practice
tags:
  - security
  - validation
  - forms
  - drupal
derived_from:
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21FormInterface.php/function/FormInterface%3A%3AvalidateForm/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityInterface.php/function/EntityInterface%3A%3Avalidate/11.x
  - https://www.drupal.org/docs/drupal-apis/security-api
relates_to:
  - map-drupal-entity-form-bases
  - map-drupal-form-building-patterns
  - map-drupal-security-patterns-by-context
depends_on: []
confidence: high
summary: >-
  Validate request, entity, and form data for type, format, range, and length
  before processing.
---
Server-side code must validate input even when the client also validates it. Decode JSON with JSON_THROW_ON_ERROR, check required fields, validate types before using values, and enforce format, range, length, and allowlist constraints.

Prefer strict comparisons, including in_array(..., TRUE), and prefer allowlists over blacklists. Use mb_* functions for Unicode-aware length or normalization checks.

Use Drupal entity constraints and entity `validate()` for entity data, and Form API `validateForm()` for submitted forms. Validation is not output escaping; still use the appropriate escaping or sanitization helper for the output context, such as `Html::escape()` or `Xss::filter()`.
