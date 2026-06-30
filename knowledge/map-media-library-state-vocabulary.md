---
schema_version: 2
id: map-media-library-state-vocabulary
title: MediaLibraryState defines dialog selection parameters
kind: map
tags:
  - drupal
  - media
  - state
derived_from: []
relates_to:
  - practice-entity-browser-integration-gotchas
  - practice-extend-addformbase-for-custom-media-add-forms
  - practice-processing-cron-advanced-safety
depends_on: []
confidence: medium
summary: >-
  MediaLibraryState carries opener ID, allowed types, selected type, remaining
  slots, and opener parameters.
---
`MediaLibraryState` is the value object used to configure a Media Library dialog. Its core parameters are `media_library_opener_id`, `media_library_allowed_types`, `media_library_selected_type`, `media_library_remaining`, and `media_library_opener_parameters`.

The field widget opener uses `media_library.opener.field_widget` and passes opener parameters such as `field_widget_id`, `field_name`, `entity_type_id`, and `bundle`.
