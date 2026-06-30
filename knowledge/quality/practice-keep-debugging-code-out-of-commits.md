---
schema_version: 2
id: practice-keep-debugging-code-out-of-commits
title: Keep debugging code out of commits
kind: practice
tags:
  - debugging
  - workflow
  - ddev
derived_from: []
relates_to:
  - map-processing-workflow-moderation-map
  - practice-alter-and-debug-plugin-definitions-through-managers
  - practice-processing-content-moderation-workflow-guidance
depends_on: []
confidence: high
summary: >-
  Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove
  debug code before committing.
---
The debugging docs allow local debugging with Devel helpers, Kint, Drupal logging, Xdebug in DDEV, and Web Profiler. Debugging helpers such as `dpm()`, `dsm()`, `dd()`, `kint()`, and `ksm()` are for local investigation only.

Never commit devel or debugging code. Remember that `dd()` stops execution, and disable Xdebug when it is not needed because it slows requests.
