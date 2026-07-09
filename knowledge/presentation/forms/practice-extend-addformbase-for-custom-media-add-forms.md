---
type: practice
title: Extend AddFormBase for custom Media Library add forms
description: >-
  Custom Media Library add forms should extend AddFormBase and build their input
  UI through buildInputElement().
tags:
  - drupal
  - media
  - forms
kk_schema_version: 3
kk_id: practice-extend-addformbase-for-custom-media-add-forms
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21Form%21AddFormBase.php/class/AddFormBase/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryState.php/class/MediaLibraryState/11.x
kk_relates_to:
  - practice-entity-browser-integration-gotchas
  - map-drupal-entity-form-bases
  - map-drupal-form-building-patterns
kk_depends_on: []
kk_confidence: medium
---
Create custom Media Library upload or creation interfaces by extending `AddFormBase`.

Implement `buildInputElement()` for the custom input UI, use the add button submit handler to collect submitted source values, and call `processInputValues()` so the form creates media entities through the Media Library add-form flow.

<!-- kk:related:start -->
# Related

- Related: [practice-entity-browser-integration-gotchas](/drupal/presentation/forms/practice-entity-browser-integration-gotchas.md)
- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-drupal-form-building-patterns](/drupal/presentation/forms/map-drupal-form-building-patterns.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21Form%21AddFormBase.php/class/AddFormBase/11.x](https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21Form%21AddFormBase.php/class/AddFormBase/11.x)
[2] [https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryState.php/class/MediaLibraryState/11.x](https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryState.php/class/MediaLibraryState/11.x)
<!-- kk:citations:end -->
