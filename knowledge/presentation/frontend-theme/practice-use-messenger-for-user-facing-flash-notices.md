---
type: practice
title: Use Messenger for user-facing flash notices
description: >-
  Use the messenger service for status, warning, and error notices; use logging
  for backend diagnostics.
tags:
  - drupal
  - messenger
  - ux
kk_schema_version: 3
kk_id: practice-use-messenger-for-user-facing-flash-notices
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Messenger%21MessengerInterface.php/interface/MessengerInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Messenger%21Messenger.php/class/Messenger/11.x
kk_relates_to:
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
  - map-derivative-plugins-generate-dynamic-plugin-instances
kk_depends_on: []
kk_confidence: high
---
Use `MessengerInterface` or `$this->messenger()` for one-time status, warning, and error messages shown to users. Messages are stored in the session flash bag, persist across redirects, render once, and are then cleared.

Do not use Messenger for backend audit or debug logging; use the Logger service for that audience. In object-oriented code, prefer dependency injection or existing framework traits, and reserve `\Drupal::messenger()` for procedural code.

<!-- kk:related:start -->
# Related

- Related: [map-advanced-drupal-service-patterns](/drupal/architecture/services/map-advanced-drupal-service-patterns.md)
- Related: [map-ajax-command-reference-surface](/drupal/presentation/frontend-theme/map-ajax-command-reference-surface.md)
- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Messenger%21MessengerInterface.php/interface/MessengerInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Messenger%21MessengerInterface.php/interface/MessengerInterface/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Messenger%21Messenger.php/class/Messenger/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Messenger%21Messenger.php/class/Messenger/11.x)
<!-- kk:citations:end -->
