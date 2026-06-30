---
schema_version: 2
id: practice-extend-addformbase-for-custom-media-add-forms
title: Extend AddFormBase for custom Media Library add forms
kind: practice
tags:
  - drupal
  - media
  - forms
derived_from: []
relates_to:
  - practice-entity-browser-integration-gotchas
  - map-drupal-entity-form-bases
  - map-drupal-form-building-patterns
depends_on: []
confidence: medium
summary: >-
  Custom Media Library add forms should extend AddFormBase and build their input
  UI through buildInputElement().
---
Create custom Media Library upload or creation interfaces by extending `AddFormBase`.

Implement `buildInputElement()` for the custom input UI, use the add button submit handler to process submitted values, and call `processInputValues()` so the form creates media entities through the Media Library add-form flow.
