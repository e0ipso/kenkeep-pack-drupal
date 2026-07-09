---
type: practice
title: Use Drupal AJAX form patterns
description: >-
  Build Drupal form AJAX with #ajax callbacks, wrapper IDs, AjaxResponse
  commands, and rebuilds for dynamic items.
tags:
  - forms
  - ajax
  - drupal
kk_schema_version: 3
kk_id: practice-use-drupal-ajax-form-patterns
kk_derived_from:
  - 'https://api.drupal.org/api/drupal/core%21core.api.php/group/ajax/11.x'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21AjaxResponse.php/class/AjaxResponse/11.x
  - 'https://api.drupal.org/api/drupal/core%21misc%21ajax.js/11.x'
kk_relates_to:
  - map-ajax-command-reference-surface
  - map-drupal-entity-form-bases
  - map-drupal-form-building-patterns
kk_depends_on: []
kk_confidence: medium
---
For AJAX-enabled Drupal forms, attach #ajax to the triggering element, make its wrapper value match the rendered wrapper element id, and return the wrapper element from the callback rather than only its inner content.

Use AjaxResponse commands such as ReplaceCommand, HtmlCommand, InvokeCommand, AlertCommand, RedirectCommand, and modal commands when a callback needs multiple client-side effects. For add/remove controls, skip validation with #limit_validation_errors => [] when appropriate, update form state, and call setRebuild().

Outside forms, prefer Drupal.ajax() when the server should return Drupal AjaxResponse commands. Use JSON endpoints or fetch deliberately for API-style data flows where custom client rendering, cacheability, and error handling are part of the design.

<!-- kk:related:start -->
# Related

- Related: [map-ajax-command-reference-surface](/drupal/presentation/frontend-theme/map-ajax-command-reference-surface.md)
- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-drupal-form-building-patterns](/drupal/presentation/forms/map-drupal-form-building-patterns.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21core.api.php/group/ajax/11.x](https://api.drupal.org/api/drupal/core%21core.api.php/group/ajax/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21AjaxResponse.php/class/AjaxResponse/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21AjaxResponse.php/class/AjaxResponse/11.x)
[3] [https://api.drupal.org/api/drupal/core%21misc%21ajax.js/11.x](https://api.drupal.org/api/drupal/core%21misc%21ajax.js/11.x)
<!-- kk:citations:end -->
