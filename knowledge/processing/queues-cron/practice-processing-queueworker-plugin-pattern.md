---
type: practice
title: Use QueueWorker plugins for background processing and typed retry behavior
description: >-
  QueueWorker plugins are the preferred Drupal pattern for emails, API calls,
  synchronization, and other background work that should run through cron or
  manual queue runners.
tags:
  - drupal
  - queue
  - worker
kk_schema_version: 3
kk_id: practice-processing-queueworker-plugin-pattern
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21Attribute%21QueueWorker.php/class/QueueWorker/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cron.php/class/Cron/11.x
kk_relates_to:
  - practice-match-queue-worker-id-to-queue-name
  - practice-processing-cron-basic-patterns
  - practice-processing-queue-api-operations
kk_depends_on: []
kk_confidence: high
---
Define a QueueWorker attribute whose id matches the queue name and include `cron` metadata when the worker should run during core cron. In processItem(), validate data up front and return normally for invalid or permanently unprocessable items so they are deleted. Throw DelayedRequeueException for rate limits/backoff, RequeueException for temporary failures that should retry immediately, and SuspendQueueException when a dependency outage should stop processing the whole queue until a later run. Inject services through ContainerFactoryPluginInterface or the project standard for plugin autowiring.

<!-- kk:related:start -->
# Related

- Related: [practice-match-queue-worker-id-to-queue-name](/drupal/processing/queues-cron/practice-match-queue-worker-id-to-queue-name.md)
- Related: [practice-processing-cron-basic-patterns](/drupal/processing/queues-cron/practice-processing-cron-basic-patterns.md)
- Related: [practice-processing-queue-api-operations](/drupal/processing/queues-cron/practice-processing-queue-api-operations.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21Attribute%21QueueWorker.php/class/QueueWorker/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21Attribute%21QueueWorker.php/class/QueueWorker/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cron.php/class/Cron/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cron.php/class/Cron/11.x)
<!-- kk:citations:end -->
