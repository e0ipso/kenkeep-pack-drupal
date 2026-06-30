---
schema_version: 2
id: practice-processing-queueworker-plugin-pattern
title: Use QueueWorker plugins for background processing and typed retry behavior
kind: practice
tags:
  - drupal
  - queue
  - worker
derived_from:
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21Attribute%21QueueWorker.php/class/QueueWorker/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cron.php/class/Cron/11.x"
relates_to:
  - practice-match-queue-worker-id-to-queue-name
  - practice-processing-cron-basic-patterns
  - practice-processing-queue-api-operations
depends_on: []
confidence: high
summary: >-
  QueueWorker plugins are the preferred Drupal pattern for emails, API calls,
  synchronization, and other background work that should run through cron or
  manual queue runners.
---
Define a QueueWorker attribute whose id matches the queue name and include `cron` metadata when the worker should run during core cron. In processItem(), validate data up front and return normally for invalid or permanently unprocessable items so they are deleted. Throw DelayedRequeueException for rate limits/backoff, RequeueException for temporary failures that should retry immediately, and SuspendQueueException when a dependency outage should stop processing the whole queue until a later run. Inject services through ContainerFactoryPluginInterface or the project standard for plugin autowiring.
