---
schema_version: 2
id: practice-processing-queue-api-operations
title: Delete queue items only after successful processing
kind: practice
tags:
  - drupal
  - queue
  - api
derived_from: []
relates_to:
  - map-search-api-concepts-and-extension-points
  - practice-match-queue-worker-id-to-queue-name
  - practice-processing-cron-basic-patterns
depends_on: []
confidence: high
summary: >-
  Manual Drupal queue code must explicitly create, claim, delete, release, and
  count items; claimed items remain until deleted or released.
---
Create queues through QueueFactory injection rather than static access in services, then add work with createItem(). Manual processors should claim an item with a lease time, process $item->data, delete the item only after success, and release it on retryable exceptions. claimItem() returns FALSE when the queue is empty, numberOfItems() provides a count, and reliable queues can be requested with the reliable flag when persistence and stronger delivery semantics are needed.
