---
schema_version: 2
id: practice-use-event-subscribers-for-events-not-entity-operations
title: 'Use subscribers for events, OOP hooks for entities'
kind: practice
tags:
  - drupal
  - events
  - hooks
derived_from: []
relates_to:
  - map-symfony-events-and-custom-events
  - practice-choose-entity-lifecycle-hooks-by-save-phase
  - practice-only-procedural-hooks-for-container-unavailable-cases
depends_on: []
confidence: high
summary: >-
  Event subscribers are documented for kernel, config, and custom events; entity
  operations should use OOP hooks instead.
---
Place Symfony event subscribers under `src/EventSubscriber/` and implement `EventSubscriberInterface` for kernel events, config events, HTTP exceptions, and custom events. Keep entity-operation behavior in OOP hooks instead of subscribers. Register subscriber services in the module services file with autowire/autoconfigure defaults so `EventSubscriberInterface` is detected without manual tags.
