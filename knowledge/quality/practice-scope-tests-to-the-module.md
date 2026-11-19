---
type: practice
title: Scope tests to the module
description: >-
  Run PHPUnit against the relevant module path and avoid running the entire test
  collection.
tags:
  - testing
  - phpunit
  - workflow
kk_schema_version: 3
kk_id: practice-scope-tests-to-the-module
kk_derived_from:
  - >-
    https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/running-phpunit-tests
  - 'https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal'
  - 'https://github.com/ddev/ddev-drupal-contrib'
kk_relates_to:
  - practice-quality-choose-lightest-drupal-test-type
  - map-processing-workflow-moderation-map
  - practice-keep-debugging-code-out-of-commits
kk_depends_on: []
kk_confidence: high
---
When running PHPUnit during local iteration, scope the command to the module under test, such as `web/modules/custom/mymodule` or `web/modules/contrib/mymodule` on a site, or use `ddev phpunit` in a contrib module checkout that uses ddev-drupal-contrib, and choose the relevant suite with `--testsuite=unit`, `--testsuite=kernel`, or `--testsuite=functional`.

Use `--filter` for a specific test or method and `--stop-on-failure` when iterating on failures. Full-suite runs still belong in CI, release validation, or core-wide regression checks.

<!-- kk:related:start -->
# Related

- Related: [practice-quality-choose-lightest-drupal-test-type](/drupal/quality/practice-quality-choose-lightest-drupal-test-type.md)
- Related: [map-processing-workflow-moderation-map](/drupal/processing/workflows/map-processing-workflow-moderation-map.md)
- Related: [practice-keep-debugging-code-out-of-commits](/drupal/quality/practice-keep-debugging-code-out-of-commits.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/running-phpunit-tests](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/running-phpunit-tests)
[2] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal)
[3] [https://github.com/ddev/ddev-drupal-contrib](https://github.com/ddev/ddev-drupal-contrib)
<!-- kk:citations:end -->
