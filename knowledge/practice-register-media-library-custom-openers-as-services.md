---
schema_version: 2
id: practice-register-media-library-custom-openers-as-services
title: Register custom Media Library openers as tagged services
kind: practice
tags:
  - drupal
  - media
  - services
derived_from: []
relates_to:
  - map-advanced-drupal-service-patterns
  - map-drupal-service-definitions-and-common-services
  - map-media-library-state-vocabulary
depends_on: []
confidence: medium
summary: >-
  Custom Media Library openers implement the opener interface and register with
  the media_library.opener tag.
---
For a custom Media Library opener, implement `MediaLibraryOpenerInterface`, including `checkAccess()` and `getSelectionResponse()`.

Register the opener in the module service file with the `media_library.opener` tag, then pass that opener service ID to `MediaLibraryState::create()` when launching the dialog.
