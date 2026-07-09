---
type: practice
title: Delete queue items only after successful processing
description: >-
  Manual Drupal queue code must explicitly create, claim, delete, release, and
  count items; claimed items remain until deleted or released.
tags:
  - drupal
  - queue
  - api
kk_schema_version: 3
kk_id: practice-processing-queue-api-operations
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21QueueFactory.php/class/QueueFactory/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21QueueInterface.php/interface/QueueInterface/11.x
kk_relates_to:
  - map-search-api-concepts-and-extension-points
  - practice-match-queue-worker-id-to-queue-name
  - practice-processing-cron-basic-patterns
kk_depends_on: []
kk_confidence: high
---
Create queues through QueueFactory injection rather than static access in services, then add work with createItem(). Manual processors should claim an item with a lease time, process $item->data, delete the item only after success, and release it on retryable exceptions. claimItem() returns FALSE when the queue is empty or cannot claim an item, numberOfItems() provides a best-effort count, and reliable queues can be requested with the reliable flag when ordering and at-least-once execution are more important than scalability.

<!-- kk:related:start -->
# Related

- Related: [map-search-api-concepts-and-extension-points](/drupal/content-model/media-seo-search/map-search-api-concepts-and-extension-points.md)
- Related: [practice-match-queue-worker-id-to-queue-name](/drupal/processing/queues-cron/practice-match-queue-worker-id-to-queue-name.md)
- Related: [practice-processing-cron-basic-patterns](/drupal/processing/queues-cron/practice-processing-cron-basic-patterns.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21QueueFactory.php/class/QueueFactory/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21QueueFactory.php/class/QueueFactory/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21QueueInterface.php/interface/QueueInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21QueueInterface.php/interface/QueueInterface/11.x)
<!-- kk:citations:end -->
