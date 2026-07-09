---
type: practice
title: Open Drupal modal routes with AJAX dialog links and commands
description: >-
  Attach the dialog AJAX library and use valid dialog attributes or AJAX
  commands for modal behavior.
tags:
  - drupal
  - routing
  - ajax
  - dialogs
kk_schema_version: 3
kk_id: practice-modal-dialog-route-links
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21OpenModalDialogCommand.php/class/OpenModalDialogCommand/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21OpenDialogCommand.php/class/OpenDialogCommand/11.x
  - 'https://www.drupal.org/node/3440844'
kk_relates_to:
  - map-ajax-command-reference-surface
  - map-drupal-menu-navigation-yaml-files
  - map-drupal-route-definition-structure
kk_depends_on: []
kk_confidence: high
---
A route can open in a modal without special route configuration when the link has the `use-ajax` class and `data-dialog-type="modal"`. Attach `core/drupal.dialog.ajax`; otherwise the AJAX dialog behavior will not load.

Build `data-dialog-options` as valid JSON, preferably with `json_encode()` when producing attributes in PHP. Modal forms need `#ajax` on the submit button or a controller returning `AjaxResponse` to stay in the modal flow.

Use `OpenModalDialogCommand` for modal AJAX responses; it targets `#drupal-modal` and sets the modal option. Use `CloseModalDialogCommand` and `RedirectCommand` when a modal form should close and navigate after submission. Since Drupal 10.3, use `classes` with a `ui-dialog` key instead of deprecated `dialogClass`.

<!-- kk:related:start -->
# Related

- Related: [map-ajax-command-reference-surface](/drupal/presentation/frontend-theme/map-ajax-command-reference-surface.md)
- Related: [map-drupal-menu-navigation-yaml-files](/drupal/presentation/routing-navigation/map-drupal-menu-navigation-yaml-files.md)
- Related: [map-drupal-route-definition-structure](/drupal/presentation/routing-navigation/map-drupal-route-definition-structure.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21OpenModalDialogCommand.php/class/OpenModalDialogCommand/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21OpenModalDialogCommand.php/class/OpenModalDialogCommand/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21OpenDialogCommand.php/class/OpenDialogCommand/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Ajax%21OpenDialogCommand.php/class/OpenDialogCommand/11.x)
[3] [https://www.drupal.org/node/3440844](https://www.drupal.org/node/3440844)
<!-- kk:citations:end -->
