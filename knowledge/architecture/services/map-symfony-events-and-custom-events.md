---
schema_version: 2
id: map-symfony-events-and-custom-events
title: Symfony events and custom events
kind: map
tags:
  - drupal
  - events
  - services
derived_from:
  - https://api.drupal.org/api/drupal/core%21core.api.php/group/events/11.x
  - https://www.drupal.org/node/3357408
relates_to:
  - practice-cache-computed-service-data-with-cachebackendinterface
  - practice-register-custom-plugin-managers-with-default-plugin-manager-parent
  - practice-register-media-library-custom-openers-as-services
depends_on: []
confidence: medium
summary: >-
  Drupal event subscribers listen to kernel or custom events through
  EventSubscriberInterface services.
---
Drupal event subscribers implement `EventSubscriberInterface` and declare event names, callbacks, and priorities from `getSubscribedEvents()`. With `autoconfigure: true`, services implementing the interface are tagged automatically; otherwise add the `event_subscriber` tag.

Custom events use a dedicated event object, define a stable event name, and are dispatched through the event dispatcher with the event object and name.
