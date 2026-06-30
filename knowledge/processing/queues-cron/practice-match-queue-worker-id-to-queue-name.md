---
schema_version: 2
id: practice-match-queue-worker-id-to-queue-name
title: Match queue worker ID to queue name
kind: practice
tags:
  - drupal
  - plugins
  - queue
derived_from:
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21Attribute%21QueueWorker.php/class/QueueWorker/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21QueueWorkerManager.php/class/QueueWorkerManager/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cron.php/class/Cron/11.x"
relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-alter-and-debug-plugin-definitions-through-managers
depends_on: []
confidence: high
summary: QueueWorker plugin IDs must match the queue names used when adding items.
---
Queue workers live under `Plugin\QueueWorker` and use the `#[QueueWorker(...)]` attribute. The queue worker ID in the attribute must match the queue name used with `QueueFactory::get()` or `\Drupal::queue()` when adding items.

The `cron: ['time' => ...]` attribute value is the number of seconds allocated to that queue per cron run; an empty `cron` array uses core's default queue cron time, and omitting `cron` keeps the worker out of core cron processing.

Queue worker error behavior depends on exceptions: a generic exception leaves the item leased until retry, `RequeueException` explicitly requeues, `DelayedRequeueException` delays the item when the backend supports delayed queues, `SuspendQueueException` releases the item and stops processing that queue, and no exception deletes the item.
