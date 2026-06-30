---
schema_version: 2
id: practice-processing-queue-error-handling-idempotency
title: Design reliable queue processing for at-least-once delivery
kind: practice
tags:
  - drupal
  - queue
  - reliability
derived_from: []
relates_to:
  - practice-match-queue-worker-id-to-queue-name
  - practice-processing-cron-basic-patterns
  - practice-processing-queue-api-operations
depends_on: []
confidence: high
summary: >-
  Reliable Drupal queues can duplicate work, so workers and manual processors
  should be idempotent and map queue exceptions to the intended retry behavior.
---
Reliable queues provide FIFO, at-least-once delivery, so processing may occur more than once. Design workers to detect already-processed items before doing irreversible work, then mark completion after success. Manual processors should instantiate the QueueWorker by queue name, process bounded item counts, delete successful items, release RequeueException items, release and stop on SuspendQueueException, and delete permanent failures. Configure queue backends in settings.php with queue_default, per-queue overrides, or reliable queue service overrides; use Drush queue commands to run, list, or clear queues operationally.
