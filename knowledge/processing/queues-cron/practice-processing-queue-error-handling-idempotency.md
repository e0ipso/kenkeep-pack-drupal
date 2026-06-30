---
schema_version: 2
id: practice-processing-queue-error-handling-idempotency
title: Design reliable queue processing for at-least-once delivery
kind: practice
tags:
  - drupal
  - queue
  - reliability
derived_from:
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21QueueInterface.php/interface/QueueInterface/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Queue%21QueueFactory.php/class/QueueFactory/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cron.php/class/Cron/11.x"
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
Reliable queues request best-effort ordering and at-least-once execution, so processing may occur more than once. Design workers to detect already-processed items before doing irreversible work, then mark completion after success. Manual processors should instantiate the QueueWorker by queue name, process bounded item counts, delete successful items, release RequeueException items, release and stop on SuspendQueueException, and delete only failures that are classified as permanent. Configure queue backends in settings.php with `queue_default`, `queue_service_$name`, or `queue_reliable_service_$name`; use Drush queue commands to run, list, or clear queues operationally.
