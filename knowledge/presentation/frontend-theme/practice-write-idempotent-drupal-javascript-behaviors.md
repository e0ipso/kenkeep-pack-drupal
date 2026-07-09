---
type: practice
title: Write idempotent Drupal JavaScript behaviors
description: >-
  Use drupalSettings, behaviors, once(), and narrow settings data for Drupal
  JavaScript integration.
tags:
  - frontend
  - javascript
  - behaviors
  - security
kk_schema_version: 3
kk_id: practice-write-idempotent-drupal-javascript-behaviors
kk_derived_from:
  - >-
    https://www.drupal.org/docs/drupal-apis/javascript-api/javascript-api-overview
  - 'https://api.drupal.org/api/drupal/core%21misc%21drupal.js/11.x'
  - >-
    https://git.drupalcode.org/project/drupal/-/blob/11.x/core/assets/vendor/once/once.js
kk_relates_to:
  - practice-use-drupal-ajax-for-dynamic-interactions
  - map-ajax-command-reference-surface
  - map-drupal-security-patterns-by-context
kk_depends_on: []
kk_confidence: medium
---
Pass PHP data to JavaScript through #attached drupalSettings and attach the matching asset library on the render array. JavaScript should read those settings inside Drupal behaviors rather than relying on custom globals.

Use Drupal.behaviors with attach(context, settings), and wrap DOM initialization in once() so elements are not initialized again after AJAX responses or BigPipe placeholder replacement. Declare core/once as a library dependency when once() is used.

Use detach(context, settings, trigger) to clean up before elements are removed, moved, or serialized. Keep drupalSettings limited to what client-side code actually needs; do not expose sensitive user data such as email addresses.

<!-- kk:related:start -->
# Related

- Related: [practice-use-drupal-ajax-for-dynamic-interactions](/drupal/presentation/frontend-theme/practice-use-drupal-ajax-for-dynamic-interactions.md)
- Related: [map-ajax-command-reference-surface](/drupal/presentation/frontend-theme/map-ajax-command-reference-surface.md)
- Related: [map-drupal-security-patterns-by-context](/drupal/security/input-output/map-drupal-security-patterns-by-context.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/javascript-api/javascript-api-overview](https://www.drupal.org/docs/drupal-apis/javascript-api/javascript-api-overview)
[2] [https://api.drupal.org/api/drupal/core%21misc%21drupal.js/11.x](https://api.drupal.org/api/drupal/core%21misc%21drupal.js/11.x)
[3] [https://git.drupalcode.org/project/drupal/-/blob/11.x/core/assets/vendor/once/once.js](https://git.drupalcode.org/project/drupal/-/blob/11.x/core/assets/vendor/once/once.js)
<!-- kk:citations:end -->
