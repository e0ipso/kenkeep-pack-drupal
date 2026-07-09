---
type: map
title: 'Media Library uses state, openers, and add forms'
description: >-
  Media Library selection is organized around MediaLibraryState, opener
  services, and AddFormBase implementations.
tags:
  - drupal
  - media
  - architecture
kk_schema_version: 3
kk_id: map-media-library-three-component-architecture
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryState.php/class/MediaLibraryState/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryOpenerInterface.php/interface/MediaLibraryOpenerInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21Form%21AddFormBase.php/class/AddFormBase/11.x
kk_relates_to:
  - practice-entity-browser-integration-gotchas
  - practice-extend-addformbase-for-custom-media-add-forms
  - practice-keep-business-logic-out-of-entity-classes
kk_depends_on: []
kk_confidence: medium
---
The Media Library integration model has three named pieces: `MediaLibraryState` carries selection parameters, `MediaLibraryOpenerInterface` handles access and the selection response, and `AddFormBase` supplies media add-form interfaces.

Field widgets and CKEditor launch the media library through state parameters, then the opener returns the selected media IDs to the calling context.

<!-- kk:related:start -->
# Related

- Related: [practice-entity-browser-integration-gotchas](/drupal/presentation/forms/practice-entity-browser-integration-gotchas.md)
- Related: [practice-extend-addformbase-for-custom-media-add-forms](/drupal/presentation/forms/practice-extend-addformbase-for-custom-media-add-forms.md)
- Related: [practice-keep-business-logic-out-of-entity-classes](/drupal/content-model/entities-fields/practice-keep-business-logic-out-of-entity-classes.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryState.php/class/MediaLibraryState/11.x](https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryState.php/class/MediaLibraryState/11.x)
[2] [https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryOpenerInterface.php/interface/MediaLibraryOpenerInterface/11.x](https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryOpenerInterface.php/interface/MediaLibraryOpenerInterface/11.x)
[3] [https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21Form%21AddFormBase.php/class/AddFormBase/11.x](https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21Form%21AddFormBase.php/class/AddFormBase/11.x)
<!-- kk:citations:end -->
