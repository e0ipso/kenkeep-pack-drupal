---
type: map
title: MediaLibraryState defines dialog selection parameters
description: >-
  MediaLibraryState carries opener ID, allowed types, selected type, remaining
  slots, and opener parameters.
tags:
  - drupal
  - media
  - state
kk_schema_version: 3
kk_id: map-media-library-state-vocabulary
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryState.php/class/MediaLibraryState/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21Plugin%21Field%21FieldWidget%21MediaLibraryWidget.php/class/MediaLibraryWidget/11.x
kk_relates_to:
  - practice-entity-browser-integration-gotchas
  - practice-extend-addformbase-for-custom-media-add-forms
  - practice-processing-cron-advanced-safety
kk_depends_on: []
kk_confidence: medium
---
`MediaLibraryState` is the value object used to configure a Media Library dialog. Its core parameters are `media_library_opener_id`, `media_library_allowed_types`, `media_library_selected_type`, `media_library_remaining`, and `media_library_opener_parameters`.

The field widget opener uses `media_library.opener.field_widget` and passes opener parameters such as `field_widget_id`, `field_name`, `entity_type_id`, and `bundle`.

<!-- kk:related:start -->
# Related

- Related: [practice-entity-browser-integration-gotchas](/drupal/presentation/forms/practice-entity-browser-integration-gotchas.md)
- Related: [practice-extend-addformbase-for-custom-media-add-forms](/drupal/presentation/forms/practice-extend-addformbase-for-custom-media-add-forms.md)
- Related: [practice-processing-cron-advanced-safety](/drupal/processing/queues-cron/practice-processing-cron-advanced-safety.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryState.php/class/MediaLibraryState/11.x](https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryState.php/class/MediaLibraryState/11.x)
[2] [https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21Plugin%21Field%21FieldWidget%21MediaLibraryWidget.php/class/MediaLibraryWidget/11.x](https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21Plugin%21Field%21FieldWidget%21MediaLibraryWidget.php/class/MediaLibraryWidget/11.x)
<!-- kk:citations:end -->
