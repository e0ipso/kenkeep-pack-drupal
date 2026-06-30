---
schema_version: 2
id: practice-use-messenger-for-user-facing-flash-notices
title: Use Messenger for user-facing flash notices
kind: practice
tags:
  - drupal
  - messenger
  - ux
derived_from:
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Messenger%21MessengerInterface.php/interface/MessengerInterface/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Messenger%21Messenger.php/class/Messenger/11.x
relates_to:
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
  - map-derivative-plugins-generate-dynamic-plugin-instances
depends_on: []
confidence: high
summary: >-
  Use the messenger service for status, warning, and error notices; use logging
  for backend diagnostics.
---
Use `MessengerInterface` or `$this->messenger()` for one-time status, warning, and error messages shown to users. Messages are stored in the session flash bag, persist across redirects, render once, and are then cleared.

Do not use Messenger for backend audit or debug logging; use the Logger service for that audience. In object-oriented code, prefer dependency injection or existing framework traits, and reserve `\Drupal::messenger()` for procedural code.
