---
schema_version: 2
id: practice-quality-choose-lightest-drupal-test-type
title: Choose the lightest Drupal test type that covers the behavior
kind: practice
tags:
  - quality
  - testing
  - drupal
  - phpunit
derived_from:
  - https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal
  - https://www.drupal.org/docs/develop/automated-testing/types-of-tests-in-drupal
  - https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/running-phpunit-tests
relates_to:
  - practice-quality-drupal-functional-browser-tests
  - practice-quality-drupal-unit-kernel-tests
  - practice-quality-drupal-coding-standards
depends_on: []
confidence: high
summary: >-
  Drupal tests range from fast isolated unit tests through kernel, functional,
  and FunctionalJS tests; select the least integrated option that still verifies
  the behavior.
---
For module behavior, common Drupal test bases increase in integration cost: `UnitTestCase` is fast and does not use a database, `KernelTestBase` boots Drupal services and uses a database, `BrowserTestBase` installs Drupal for browser-level HTTP behavior, and `WebDriverTestBase`/FunctionalJS adds a JavaScript-capable browser. Prefer the lightest type that can cover the behavior under test. Run module tests with `vendor/bin/phpunit web/modules/custom/mymodule`, target individual tests with `--filter`, run suites such as `unit` or `kernel` with `--testsuite`, and generate coverage with `--coverage-html reports/` when needed.
