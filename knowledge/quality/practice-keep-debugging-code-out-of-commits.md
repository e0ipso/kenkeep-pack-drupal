---
type: practice
title: Keep debugging code out of commits
description: >-
  Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove
  debug code before committing.
tags:
  - debugging
  - workflow
  - ddev
kk_schema_version: 3
kk_id: practice-keep-debugging-code-out-of-commits
kk_derived_from:
  - 'https://www.drupal.org/project/devel'
  - 'https://www.drupal.org/project/webprofiler'
  - >-
    https://ddev.readthedocs.io/en/stable/users/debugging-profiling/step-debugging/
kk_relates_to:
  - map-processing-workflow-moderation-map
  - practice-alter-and-debug-plugin-definitions-through-managers
  - practice-processing-content-moderation-workflow-guidance
kk_depends_on: []
kk_confidence: high
---
Use local debugging with Devel helpers, Kint, Drupal logging, Xdebug in DDEV, and Web Profiler. Debugging helpers such as `dpm()`, `dsm()`, `dd()`, `kint()`, and `ksm()` are for local investigation only.

Never commit devel or debugging code. Remember that `dd()` stops execution, and disable Xdebug when it is not needed because it slows requests.

<!-- kk:related:start -->
# Related

- Related: [map-processing-workflow-moderation-map](/drupal/processing/workflows/map-processing-workflow-moderation-map.md)
- Related: [practice-alter-and-debug-plugin-definitions-through-managers](/drupal/quality/practice-alter-and-debug-plugin-definitions-through-managers.md)
- Related: [practice-processing-content-moderation-workflow-guidance](/drupal/processing/workflows/practice-processing-content-moderation-workflow-guidance.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/project/devel](https://www.drupal.org/project/devel)
[2] [https://www.drupal.org/project/webprofiler](https://www.drupal.org/project/webprofiler)
[3] [https://ddev.readthedocs.io/en/stable/users/debugging-profiling/step-debugging/](https://ddev.readthedocs.io/en/stable/users/debugging-profiling/step-debugging/)
<!-- kk:citations:end -->
