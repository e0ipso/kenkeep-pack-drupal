---
schema_version: 2
id: practice-match-queue-worker-id-to-queue-name
title: Match queue worker ID to queue name
kind: practice
tags:
  - drupal
  - plugins
  - queue
derived_from: []
relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-alter-and-debug-plugin-definitions-through-managers
depends_on: []
confidence: high
summary: QueueWorker plugin IDs must match the queue names used when adding items.
---
Queue workers live under `Plugin\QueueWorker` and use the `#[QueueWorker(...)]` attribute. The queue worker ID in the attribute must match the queue name used with `\Drupal::queue()` when adding items.

The `cron.time` attribute value is the number of seconds allocated to that queue per cron run.

Queue worker error behavior depends on exceptions: a generic exception leaves the item for retry, `RequeueException` explicitly requeues, `DelayedRequeueException` requeues with delay, `SuspendQueueException` stops processing that queue, and no exception deletes the item.
