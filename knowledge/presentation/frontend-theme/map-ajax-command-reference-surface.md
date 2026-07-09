---
type: map
title: AJAX command reference surface
description: >-
  Drupal AJAX responses are ordered command lists executed by Drupal.ajax on the
  client.
tags:
  - frontend
  - ajax
  - reference
  - drupal
kk_schema_version: 3
kk_id: map-ajax-command-reference-surface
kk_derived_from:
  - 'https://api.drupal.org/api/drupal/core%21core.api.php/group/ajax/11.x'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21CommandInterface.php/interface/CommandInterface/11.x
  - 'https://api.drupal.org/api/drupal/core%21misc%21ajax.js/11.x'
kk_relates_to:
  - practice-use-drupal-ajax-for-dynamic-interactions
  - practice-attach-frontend-assets-through-libraries
  - practice-modal-dialog-route-links
kk_depends_on: []
kk_confidence: medium
---
Server-side AJAX commands are PHP objects in Drupal\Core\Ajax that implement CommandInterface and are added to an AjaxResponse with addCommand(). The client-side Drupal.ajax framework executes the serialized commands in order.

The documented command surface covers stylesheet and script injection, DOM insertion and removal, jQuery invocation, CSS changes, drupalSettings updates, messages and announcements, dialogs, off-canvas trays, redirects, tabledrag warnings, and form build id updates.

Important behavior details: HtmlCommand replaces inner HTML while ReplaceCommand replaces the matched element itself; InvokeCommand calls jQuery methods; dialog commands require core/drupal.dialog.ajax; RedirectCommand sets window.location for a full page navigation, so do not rely on later commands after it.

<!-- kk:related:start -->
# Related

- Related: [practice-use-drupal-ajax-for-dynamic-interactions](/drupal/presentation/frontend-theme/practice-use-drupal-ajax-for-dynamic-interactions.md)
- Related: [practice-attach-frontend-assets-through-libraries](/drupal/presentation/frontend-theme/practice-attach-frontend-assets-through-libraries.md)
- Related: [practice-modal-dialog-route-links](/drupal/presentation/routing-navigation/practice-modal-dialog-route-links.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21core.api.php/group/ajax/11.x](https://api.drupal.org/api/drupal/core%21core.api.php/group/ajax/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21CommandInterface.php/interface/CommandInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21CommandInterface.php/interface/CommandInterface/11.x)
[3] [https://api.drupal.org/api/drupal/core%21misc%21ajax.js/11.x](https://api.drupal.org/api/drupal/core%21misc%21ajax.js/11.x)
<!-- kk:citations:end -->
