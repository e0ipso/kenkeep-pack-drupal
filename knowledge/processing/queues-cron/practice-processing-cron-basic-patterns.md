---
schema_version: 2
id: practice-processing-cron-basic-patterns
title: Keep cron hooks bounded and state-gated
kind: practice
tags:
  - drupal
  - cron
  - queue
derived_from: []
relates_to:
  - practice-match-queue-worker-id-to-queue-name
  - practice-processing-cron-advanced-safety
  - practice-processing-queue-api-operations
depends_on: []
confidence: high
summary: >-
  Drupal cron work should be short, interval-gated with State API, and delegated
  to queue workers for long-running or high-volume processing.
---
Implement cron with an OOP #[Hook('cron')] class when possible. Use TimeInterface and StateInterface to enforce intervals, perform bounded work, and update the last-run state only after success so failures retry on the next cron. Direct hook_cron() work is appropriate for short operations under roughly 30 seconds. Use QueueWorker plugins for long-running work, many items, emails, API calls, or batch-style processing, and use the Lock API when concurrent cron runs must be prevented.
