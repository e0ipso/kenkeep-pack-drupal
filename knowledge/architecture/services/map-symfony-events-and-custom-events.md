---
type: map
title: Symfony events and custom events
description: >-
  Drupal event subscribers listen to kernel or custom events through
  EventSubscriberInterface services.
tags:
  - drupal
  - events
  - services
kk_schema_version: 3
kk_id: map-symfony-events-and-custom-events
kk_derived_from:
  - 'https://api.drupal.org/api/drupal/core%21core.api.php/group/events/11.x'
  - 'https://www.drupal.org/node/3357408'
kk_relates_to:
  - practice-cache-computed-service-data-with-cachebackendinterface
  - practice-register-custom-plugin-managers-with-default-plugin-manager-parent
  - practice-register-media-library-custom-openers-as-services
kk_depends_on: []
kk_confidence: medium
---
Drupal event subscribers implement `EventSubscriberInterface` and declare event names, callbacks, and priorities from `getSubscribedEvents()`. With `autoconfigure: true`, services implementing the interface are tagged automatically; otherwise add the `event_subscriber` tag.

Custom events use a dedicated event object, define a stable event name, and are dispatched through the event dispatcher with the event object and name.

<!-- kk:related:start -->
# Related

- Related: [practice-cache-computed-service-data-with-cachebackendinterface](/drupal/data-cache/cache-render/practice-cache-computed-service-data-with-cachebackendinterface.md)
- Related: [practice-register-custom-plugin-managers-with-default-plugin-manager-parent](/drupal/architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md)
- Related: [practice-register-media-library-custom-openers-as-services](/drupal/presentation/frontend-theme/practice-register-media-library-custom-openers-as-services.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21core.api.php/group/events/11.x](https://api.drupal.org/api/drupal/core%21core.api.php/group/events/11.x)
[2] [https://www.drupal.org/node/3357408](https://www.drupal.org/node/3357408)
<!-- kk:citations:end -->
