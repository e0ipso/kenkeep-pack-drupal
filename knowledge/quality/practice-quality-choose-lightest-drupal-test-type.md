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
derived_from: []
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
Drupal offers four test types with increasing integration cost: `UnitTestCase` is fast and does not use a database, `KernelTestBase` is medium speed and uses a database, `BrowserTestBase` is slow and uses a database, and `WebDriverTestBase`/FunctionalJS is slowest and also uses a database. Prefer the lightest type that can cover the behavior under test. Run all module tests with `vendor/bin/phpunit web/modules/custom/mymodule`, target individual tests with `--filter`, run suites such as `unit` or `kernel` with `--testsuite`, and generate coverage with `--coverage-html reports/` when needed.
