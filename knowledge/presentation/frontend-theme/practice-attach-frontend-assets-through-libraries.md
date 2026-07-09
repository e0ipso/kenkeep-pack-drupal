---
type: practice
title: Attach frontend assets through libraries
description: >-
  Define CSS and JS in libraries.yml and attach libraries where needed instead
  of loading assets globally.
tags:
  - frontend
  - assets
  - libraries
  - drupal
kk_schema_version: 3
kk_id: practice-attach-frontend-assets-through-libraries
kk_derived_from:
  - >-
    https://www.drupal.org/docs/develop/creating-modules/adding-assets-css-js-to-a-drupal-module-via-librariesyml
  - 'https://api.drupal.org/api/drupal/core%21core.libraries.yml/11.x'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Asset%21LibraryDiscoveryParser.php/class/LibraryDiscoveryParser/11.x
kk_relates_to:
  - map-ajax-command-reference-surface
  - practice-use-drupal-ajax-for-dynamic-interactions
  - map-advanced-drupal-service-patterns
kk_depends_on: []
kk_confidence: medium
---
Define frontend assets in extension `.libraries.yml` files, including CSS, JavaScript, versions, options, and fully qualified dependencies such as core/drupal, core/drupalSettings, and core/once.

Attach libraries at the point of use with #attached in render arrays or forms, or attach_library() in Twig. Prefer conditional attachment for feature-specific or permission-specific assets instead of global loading.

Use Drupal's CSS categories base, layout, component, state, and theme for ordering. Dependencies must be written as module/library, and common core libraries include core/drupal, core/once, core/jquery, core/drupal.ajax, and core/drupal.dialog.

<!-- kk:related:start -->
# Related

- Related: [map-ajax-command-reference-surface](/drupal/presentation/frontend-theme/map-ajax-command-reference-surface.md)
- Related: [practice-use-drupal-ajax-for-dynamic-interactions](/drupal/presentation/frontend-theme/practice-use-drupal-ajax-for-dynamic-interactions.md)
- Related: [map-advanced-drupal-service-patterns](/drupal/architecture/services/map-advanced-drupal-service-patterns.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/creating-modules/adding-assets-css-js-to-a-drupal-module-via-librariesyml](https://www.drupal.org/docs/develop/creating-modules/adding-assets-css-js-to-a-drupal-module-via-librariesyml)
[2] [https://api.drupal.org/api/drupal/core%21core.libraries.yml/11.x](https://api.drupal.org/api/drupal/core%21core.libraries.yml/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Asset%21LibraryDiscoveryParser.php/class/LibraryDiscoveryParser/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Asset%21LibraryDiscoveryParser.php/class/LibraryDiscoveryParser/11.x)
<!-- kk:citations:end -->
