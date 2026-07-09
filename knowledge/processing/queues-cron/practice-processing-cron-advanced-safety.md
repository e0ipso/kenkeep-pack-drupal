---
type: practice
title: 'Use locks, resumable state, and success-only timestamps for advanced cron work'
description: >-
  Advanced cron jobs should prevent overlap, preserve retry behavior, and save
  resumable progress for long operations.
tags:
  - drupal
  - cron
  - locks
  - state
kk_schema_version: 3
kk_id: practice-processing-cron-advanced-safety
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Lock%21LockBackendInterface.php/interface/LockBackendInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21State%21StateInterface.php/interface/StateInterface/11.x
  - 'https://www.drupal.org/project/ultimate_cron'
kk_relates_to:
  - map-media-library-state-vocabulary
  - practice-processing-cron-basic-patterns
  - map-advanced-drupal-service-patterns
kk_depends_on: []
kk_confidence: high
---
For long-running cron tasks, acquire a named LockBackendInterface lock with a timeout and always release it in a finally block. Gate scheduled jobs with request time and State API intervals, but update the state timestamp only after the operation succeeds. For resumable processing, persist progress such as last_id and count, process bounded ranges, save progress periodically, and clear the progress key when the final range is complete. Consider Ultimate Cron only when core cron's global schedule is insufficient and per-job intervals, crontab expressions, history, or job-level controls are needed.

<!-- kk:related:start -->
# Related

- Related: [map-media-library-state-vocabulary](/drupal/content-model/media-seo-search/map-media-library-state-vocabulary.md)
- Related: [practice-processing-cron-basic-patterns](/drupal/processing/queues-cron/practice-processing-cron-basic-patterns.md)
- Related: [map-advanced-drupal-service-patterns](/drupal/architecture/services/map-advanced-drupal-service-patterns.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Lock%21LockBackendInterface.php/interface/LockBackendInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Lock%21LockBackendInterface.php/interface/LockBackendInterface/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21State%21StateInterface.php/interface/StateInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21State%21StateInterface.php/interface/StateInterface/11.x)
[3] [https://www.drupal.org/project/ultimate_cron](https://www.drupal.org/project/ultimate_cron)
<!-- kk:citations:end -->
