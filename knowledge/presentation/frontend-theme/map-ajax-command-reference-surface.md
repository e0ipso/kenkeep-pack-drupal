---
schema_version: 2
id: map-ajax-command-reference-surface
title: AJAX command reference surface
kind: map
tags:
  - frontend
  - ajax
  - reference
  - drupal
derived_from:
  - https://api.drupal.org/api/drupal/core%21core.api.php/group/ajax/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21CommandInterface.php/interface/CommandInterface/11.x
  - https://api.drupal.org/api/drupal/core%21misc%21ajax.js/11.x
relates_to:
  - practice-use-drupal-ajax-for-dynamic-interactions
  - practice-attach-frontend-assets-through-libraries
  - practice-modal-dialog-route-links
depends_on: []
confidence: medium
summary: >-
  Drupal AJAX responses are ordered command lists executed by Drupal.ajax on the
  client.
---
Server-side AJAX commands are PHP objects in Drupal\Core\Ajax that implement CommandInterface and are added to an AjaxResponse with addCommand(). The client-side Drupal.ajax framework executes the serialized commands in order.

The documented command surface covers stylesheet and script injection, DOM insertion and removal, jQuery invocation, CSS changes, drupalSettings updates, messages and announcements, dialogs, off-canvas trays, redirects, tabledrag warnings, and form build id updates.

Important behavior details: HtmlCommand replaces inner HTML while ReplaceCommand replaces the matched element itself; InvokeCommand calls jQuery methods; dialog commands require drupal.dialog.ajax; RedirectCommand sets window.location for a full page navigation, so do not rely on later commands after it.
