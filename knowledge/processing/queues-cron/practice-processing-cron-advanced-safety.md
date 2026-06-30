---
schema_version: 2
id: practice-processing-cron-advanced-safety
title: 'Use locks, resumable state, and success-only timestamps for advanced cron work'
kind: practice
tags:
  - drupal
  - cron
  - locks
  - state
derived_from:
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Lock%21LockBackendInterface.php/interface/LockBackendInterface/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21State%21StateInterface.php/interface/StateInterface/11.x"
  - "https://www.drupal.org/project/ultimate_cron"
relates_to:
  - map-media-library-state-vocabulary
  - practice-processing-cron-basic-patterns
  - map-advanced-drupal-service-patterns
depends_on: []
confidence: high
summary: >-
  Advanced cron jobs should prevent overlap, preserve retry behavior, and save
  resumable progress for long operations.
---
For long-running cron tasks, acquire a named LockBackendInterface lock with a timeout and always release it in a finally block. Gate scheduled jobs with request time and State API intervals, but update the state timestamp only after the operation succeeds. For resumable processing, persist progress such as last_id and count, process bounded ranges, save progress periodically, and clear the progress key when the final range is complete. Consider Ultimate Cron only when core cron's global schedule is insufficient and per-job intervals, crontab expressions, history, or job-level controls are needed.
