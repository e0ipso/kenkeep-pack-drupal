---
schema_version: 2
id: practice-processing-queueworker-plugin-pattern
title: Use QueueWorker plugins for background processing and typed retry behavior
kind: practice
tags:
  - drupal
  - queue
  - worker
derived_from: []
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
Define a QueueWorker attribute whose id matches the queue name and include a cron time budget when the worker should run during cron. In processItem(), validate data up front and return normally for invalid or permanently unprocessable items so they are deleted. Throw DelayedRequeueException for rate limits/backoff, RequeueException for temporary failures that should retry immediately, and SuspendQueueException when a dependency outage should stop processing the whole queue until a later run. Inject services through ContainerFactoryPluginInterface or the project standard for plugin autowiring.
