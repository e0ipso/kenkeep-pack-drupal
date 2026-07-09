---
type: practice
title: Use Drupal.ajax for dynamic interactions
description: >-
  Use Drupal.ajax and AjaxResponse commands for Drupal-rendered dynamic
  interactions.
tags:
  - frontend
  - ajax
  - javascript
  - drupal
kk_schema_version: 3
kk_id: practice-use-drupal-ajax-for-dynamic-interactions
kk_derived_from:
  - 'https://api.drupal.org/api/drupal/core%21core.api.php/group/ajax/11.x'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21AjaxResponse.php/class/AjaxResponse/11.x
  - 'https://api.drupal.org/api/drupal/core%21misc%21ajax.js/11.x'
kk_relates_to:
  - map-ajax-command-reference-surface
  - practice-attach-frontend-assets-through-libraries
  - practice-modal-dialog-route-links
kk_depends_on: []
kk_confidence: high
---
For JavaScript-driven Drupal UI updates where the server should return DOM, messages, settings, redirects, or dialogs, use Drupal.ajax() with server-side AjaxResponse commands.

This keeps standalone JavaScript on the same protocol as form #ajax and lets Drupal process built-in commands for DOM updates, messages, redirects, modals, settings, and errors. JSON endpoints and fetch are still valid for API-style data flows, but then custom client rendering, cacheability, access, and error handling are your responsibility.

For form AJAX, make the wrapper value match the target element id, return the wrapper element from callbacks rather than inner content, and use #limit_validation_errors => [] for add/remove buttons that should skip validation.

<!-- kk:related:start -->
# Related

- Related: [map-ajax-command-reference-surface](/drupal/presentation/frontend-theme/map-ajax-command-reference-surface.md)
- Related: [practice-attach-frontend-assets-through-libraries](/drupal/presentation/frontend-theme/practice-attach-frontend-assets-through-libraries.md)
- Related: [practice-modal-dialog-route-links](/drupal/presentation/routing-navigation/practice-modal-dialog-route-links.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21core.api.php/group/ajax/11.x](https://api.drupal.org/api/drupal/core%21core.api.php/group/ajax/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21AjaxResponse.php/class/AjaxResponse/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21AjaxResponse.php/class/AjaxResponse/11.x)
[3] [https://api.drupal.org/api/drupal/core%21misc%21ajax.js/11.x](https://api.drupal.org/api/drupal/core%21misc%21ajax.js/11.x)
<!-- kk:citations:end -->
