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
derived_from: []
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

Use Drupal entity constraints and entity validate() for entity data, Form API validateForm() for submitted forms, and the appropriate sanitization helper for the output context, such as Html::escape() or Xss::filter().
