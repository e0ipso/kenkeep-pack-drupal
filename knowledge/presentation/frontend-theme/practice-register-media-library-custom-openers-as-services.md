---
type: practice
title: Register custom Media Library openers as tagged services
description: >-
  Custom Media Library openers implement the opener interface and register with
  the media_library.opener tag.
tags:
  - drupal
  - media
  - services
kk_schema_version: 3
kk_id: practice-register-media-library-custom-openers-as-services
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryOpenerInterface.php/interface/MediaLibraryOpenerInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryState.php/class/MediaLibraryState/11.x
  - >-
    https://git.drupalcode.org/project/drupal/-/blob/11.x/core/modules/media_library/media_library.services.yml
kk_relates_to:
  - map-advanced-drupal-service-patterns
  - map-drupal-service-definitions-and-common-services
  - map-media-library-state-vocabulary
kk_depends_on: []
kk_confidence: medium
---
For a custom Media Library opener, implement `MediaLibraryOpenerInterface`, including `checkAccess()` and `getSelectionResponse()`.

Register the opener in the module service file with the `media_library.opener` tag, then pass that opener service ID to `MediaLibraryState::create()` when launching the dialog.

<!-- kk:related:start -->
# Related

- Related: [map-advanced-drupal-service-patterns](/drupal/architecture/services/map-advanced-drupal-service-patterns.md)
- Related: [map-drupal-service-definitions-and-common-services](/drupal/architecture/services/map-drupal-service-definitions-and-common-services.md)
- Related: [map-media-library-state-vocabulary](/drupal/content-model/media-seo-search/map-media-library-state-vocabulary.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryOpenerInterface.php/interface/MediaLibraryOpenerInterface/11.x](https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryOpenerInterface.php/interface/MediaLibraryOpenerInterface/11.x)
[2] [https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryState.php/class/MediaLibraryState/11.x](https://api.drupal.org/api/drupal/core%21modules%21media_library%21src%21MediaLibraryState.php/class/MediaLibraryState/11.x)
[3] [https://git.drupalcode.org/project/drupal/-/blob/11.x/core/modules/media_library/media_library.services.yml](https://git.drupalcode.org/project/drupal/-/blob/11.x/core/modules/media_library/media_library.services.yml)
<!-- kk:citations:end -->
