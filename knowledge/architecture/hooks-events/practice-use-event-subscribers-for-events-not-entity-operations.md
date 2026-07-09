---
type: practice
title: 'Use subscribers for events, entity hooks for entities'
description: >-
  Event subscribers are documented for kernel, config, and custom events; entity
  operations should use entity hooks instead.
tags:
  - drupal
  - events
  - hooks
kk_schema_version: 3
kk_id: practice-use-event-subscribers-for-events-not-entity-operations
kk_derived_from:
  - 'https://api.drupal.org/api/drupal/core%21core.api.php/group/events/11.x'
  - 'https://www.drupal.org/node/3357408'
  - 'https://api.drupal.org/api/drupal/core%21core.api.php/group/hooks/11.x'
kk_relates_to:
  - map-symfony-events-and-custom-events
  - practice-choose-entity-lifecycle-hooks-by-save-phase
  - practice-only-procedural-hooks-for-container-unavailable-cases
kk_depends_on: []
kk_confidence: high
---
Place Symfony event subscribers under `src/EventSubscriber/` and implement `EventSubscriberInterface` for kernel events, config events, HTTP exceptions, and custom events. Keep entity-operation behavior in entity hooks instead of subscribers: OOP hooks on Drupal 11.1+, or procedural hooks / legacy shims when supporting Drupal 10.x and 11.0. Register subscriber services with `autoconfigure: true` so `EventSubscriberInterface` is detected without manual tags, or add the `event_subscriber` tag explicitly.

<!-- kk:related:start -->
# Related

- Related: [map-symfony-events-and-custom-events](/drupal/architecture/services/map-symfony-events-and-custom-events.md)
- Related: [practice-choose-entity-lifecycle-hooks-by-save-phase](/drupal/content-model/entities-fields/practice-choose-entity-lifecycle-hooks-by-save-phase.md)
- Related: [practice-only-procedural-hooks-for-container-unavailable-cases](/drupal/architecture/hooks-events/practice-only-procedural-hooks-for-container-unavailable-cases.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21core.api.php/group/events/11.x](https://api.drupal.org/api/drupal/core%21core.api.php/group/events/11.x)
[2] [https://www.drupal.org/node/3357408](https://www.drupal.org/node/3357408)
[3] [https://api.drupal.org/api/drupal/core%21core.api.php/group/hooks/11.x](https://api.drupal.org/api/drupal/core%21core.api.php/group/hooks/11.x)
<!-- kk:citations:end -->
