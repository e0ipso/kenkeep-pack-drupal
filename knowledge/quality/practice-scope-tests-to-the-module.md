---
schema_version: 2
id: practice-scope-tests-to-the-module
title: Scope tests to the module
kind: practice
tags:
  - testing
  - phpunit
  - workflow
derived_from: []
relates_to:
  - practice-quality-choose-lightest-drupal-test-type
  - map-processing-workflow-moderation-map
  - practice-keep-debugging-code-out-of-commits
depends_on: []
confidence: high
summary: >-
  Run PHPUnit against the relevant module path and avoid running the entire test
  collection.
---
When running PHPUnit, scope the command to the module under test, such as `web/modules/custom/mymodule`, and choose the relevant suite with `--testsuite=unit`, `--testsuite=kernel`, or `--testsuite=functional`.

The developer tools docs mark this as critical: always scope to the module and never run the entire test collection. Use `--filter` for a specific test or method and `--stop-on-failure` when iterating on failures.
