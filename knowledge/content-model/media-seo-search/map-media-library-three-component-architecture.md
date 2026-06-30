---
schema_version: 2
id: map-media-library-three-component-architecture
title: 'Media Library uses state, openers, and add forms'
kind: map
tags:
  - drupal
  - media
  - architecture
derived_from:
  - "https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryState.php/class/MediaLibraryState/11.x"
  - "https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryOpenerInterface.php/interface/MediaLibraryOpenerInterface/11.x"
  - "https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21Form%21AddFormBase.php/class/AddFormBase/11.x"
relates_to:
  - practice-entity-browser-integration-gotchas
  - practice-extend-addformbase-for-custom-media-add-forms
  - practice-keep-business-logic-out-of-entity-classes
depends_on: []
confidence: medium
summary: >-
  Media Library selection is organized around MediaLibraryState, opener
  services, and AddFormBase implementations.
---
The Media Library integration model has three named pieces: `MediaLibraryState` carries selection parameters, `MediaLibraryOpenerInterface` handles access and the selection response, and `AddFormBase` supplies media add-form interfaces.

Field widgets and CKEditor launch the media library through state parameters, then the opener returns the selected media IDs to the calling context.
