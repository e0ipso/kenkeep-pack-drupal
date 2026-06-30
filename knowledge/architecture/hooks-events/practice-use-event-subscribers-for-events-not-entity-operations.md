---
schema_version: 2
id: practice-use-event-subscribers-for-events-not-entity-operations
title: 'Use subscribers for events, entity hooks for entities'
kind: practice
tags:
  - drupal
  - events
  - hooks
derived_from:
  - https://api.drupal.org/api/drupal/core%21core.api.php/group/events/11.x
  - https://www.drupal.org/node/3357408
  - https://api.drupal.org/api/drupal/core%21core.api.php/group/hooks/11.x
relates_to:
  - map-symfony-events-and-custom-events
  - practice-choose-entity-lifecycle-hooks-by-save-phase
  - practice-only-procedural-hooks-for-container-unavailable-cases
depends_on: []
confidence: high
summary: >-
  Event subscribers are documented for kernel, config, and custom events; entity
  operations should use entity hooks instead.
---
Place Symfony event subscribers under `src/EventSubscriber/` and implement `EventSubscriberInterface` for kernel events, config events, HTTP exceptions, and custom events. Keep entity-operation behavior in entity hooks instead of subscribers: OOP hooks on Drupal 11.1+, or procedural hooks / legacy shims when supporting Drupal 10.x and 11.0. Register subscriber services with `autoconfigure: true` so `EventSubscriberInterface` is detected without manual tags, or add the `event_subscriber` tag explicitly.
