---
type: practice
title: Choose the lightest Drupal test type that covers the behavior
description: >-
  Drupal tests range from fast isolated unit tests through kernel, functional,
  and FunctionalJS tests; select the least integrated option that still verifies
  the behavior.
tags:
  - quality
  - testing
  - drupal
  - phpunit
kk_schema_version: 3
kk_id: practice-quality-choose-lightest-drupal-test-type
kk_derived_from:
  - 'https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal'
  - >-
    https://www.drupal.org/docs/develop/automated-testing/types-of-tests-in-drupal
  - >-
    https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/running-phpunit-tests
kk_relates_to:
  - practice-quality-drupal-functional-browser-tests
  - practice-quality-drupal-unit-kernel-tests
  - practice-quality-drupal-coding-standards
kk_depends_on: []
kk_confidence: high
---
For module behavior, common Drupal test bases increase in integration cost: `UnitTestCase` is fast and does not use a database, `KernelTestBase` boots Drupal services and uses a database, `BrowserTestBase` installs Drupal for browser-level HTTP behavior, and `WebDriverTestBase`/FunctionalJS adds a JavaScript-capable browser. Prefer the lightest type that can cover the behavior under test. Run module tests with `vendor/bin/phpunit <module-path>`, where `<module-path>` is the module directory, such as `web/modules/custom/mymodule` or `web/modules/contrib/mymodule` on a site; in a contrib module checkout that uses ddev-drupal-contrib, run `ddev phpunit`. Target individual tests with `--filter`, run suites such as `unit` or `kernel` with `--testsuite`, and generate coverage with `--coverage-html reports/` when needed.

<!-- kk:related:start -->
# Related

- Related: [practice-quality-drupal-functional-browser-tests](/drupal/quality/practice-quality-drupal-functional-browser-tests.md)
- Related: [practice-quality-drupal-unit-kernel-tests](/drupal/quality/practice-quality-drupal-unit-kernel-tests.md)
- Related: [practice-quality-drupal-coding-standards](/drupal/quality/practice-quality-drupal-coding-standards.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal)
[2] [https://www.drupal.org/docs/develop/automated-testing/types-of-tests-in-drupal](https://www.drupal.org/docs/develop/automated-testing/types-of-tests-in-drupal)
[3] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/running-phpunit-tests](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/running-phpunit-tests)
<!-- kk:citations:end -->
