---
type: practice
title: Match queue worker ID to queue name
description: QueueWorker plugin IDs must match the queue names used when adding items.
tags:
  - drupal
  - plugins
  - queue
kk_schema_version: 3
kk_id: practice-match-queue-worker-id-to-queue-name
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21Attribute%21QueueWorker.php/class/QueueWorker/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21QueueWorkerManager.php/class/QueueWorkerManager/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cron.php/class/Cron/11.x
kk_relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-alter-and-debug-plugin-definitions-through-managers
kk_depends_on: []
kk_confidence: high
---
Queue workers live under `Plugin\QueueWorker` and use the `#[QueueWorker(...)]` attribute. The queue worker ID in the attribute must match the queue name used with `QueueFactory::get()` or `\Drupal::queue()` when adding items.

The `cron: ['time' => ...]` attribute value is the number of seconds allocated to that queue per cron run; an empty `cron` array uses core's default queue cron time, and omitting `cron` keeps the worker out of core cron processing.

Queue worker error behavior depends on exceptions: a generic exception leaves the item leased until retry, `RequeueException` explicitly requeues, `DelayedRequeueException` delays the item when the backend supports delayed queues, `SuspendQueueException` releases the item and stops processing that queue, and no exception deletes the item.

<!-- kk:related:start -->
# Related

- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
- Related: [map-drupal-mail-flow](/drupal/architecture/services/map-drupal-mail-flow.md)
- Related: [practice-alter-and-debug-plugin-definitions-through-managers](/drupal/quality/practice-alter-and-debug-plugin-definitions-through-managers.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21Attribute%21QueueWorker.php/class/QueueWorker/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21Attribute%21QueueWorker.php/class/QueueWorker/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21QueueWorkerManager.php/class/QueueWorkerManager/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21QueueWorkerManager.php/class/QueueWorkerManager/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cron.php/class/Cron/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cron.php/class/Cron/11.x)
<!-- kk:citations:end -->
