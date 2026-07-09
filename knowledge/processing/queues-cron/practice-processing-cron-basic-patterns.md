---
type: practice
title: Keep cron hooks bounded and state-gated
description: >-
  Drupal cron work should be short, interval-gated with State API, and delegated
  to queue workers for long-running or high-volume processing.
tags:
  - drupal
  - cron
  - queue
kk_schema_version: 3
kk_id: practice-processing-cron-basic-patterns
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21core.api.php/function/hook_cron/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Hook%21Attribute%21Hook.php/class/Hook/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cron.php/class/Cron/11.x
kk_relates_to:
  - practice-match-queue-worker-id-to-queue-name
  - practice-processing-cron-advanced-safety
  - practice-processing-queue-api-operations
kk_depends_on: []
kk_confidence: high
---
In Drupal 11.1+, implement cron with an OOP `#[Hook('cron')]` class when possible; in Drupal 10, use procedural `hook_cron()`. Use TimeInterface and StateInterface to enforce intervals, perform bounded work, and update the last-run state only after success so failures retry on the next cron. Direct cron work is appropriate for short operations under roughly 30 seconds. Use QueueWorker plugins for long-running work, many items, emails, API calls, or batch-style processing, and use the Lock API when concurrent cron runs must be prevented.

<!-- kk:related:start -->
# Related

- Related: [practice-match-queue-worker-id-to-queue-name](/drupal/processing/queues-cron/practice-match-queue-worker-id-to-queue-name.md)
- Related: [practice-processing-cron-advanced-safety](/drupal/processing/queues-cron/practice-processing-cron-advanced-safety.md)
- Related: [practice-processing-queue-api-operations](/drupal/processing/queues-cron/practice-processing-queue-api-operations.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21core.api.php/function/hook_cron/11.x](https://api.drupal.org/api/drupal/core%21core.api.php/function/hook_cron/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Hook%21Attribute%21Hook.php/class/Hook/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Hook%21Attribute%21Hook.php/class/Hook/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cron.php/class/Cron/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cron.php/class/Cron/11.x)
<!-- kk:citations:end -->
