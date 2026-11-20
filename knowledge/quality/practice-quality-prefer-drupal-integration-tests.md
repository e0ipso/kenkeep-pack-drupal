---
type: practice
title: Prefer Drupal integration tests
description: >-
  Test behavior the way a site uses it with Functional or FunctionalJavascript
  tests by default; use Unit or Kernel tests only when the behavior is well
  scoped to that tier.
tags:
  - quality
  - testing
  - drupal
  - phpunit
kk_schema_version: 3
kk_id: practice-quality-prefer-drupal-integration-tests
kk_derived_from:
  - 'https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal'
  - >-
    https://www.drupal.org/docs/develop/automated-testing/types-of-tests-in-drupal
  - >-
    https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/running-phpunit-tests
  - 'https://github.com/ddev/ddev-drupal-contrib'
kk_relates_to:
  - practice-quality-drupal-functional-browser-tests
  - practice-quality-drupal-unit-kernel-tests
  - practice-quality-budget-test-assertions
  - practice-quality-one-test-class-one-method-per-tier
  - practice-quality-drupal-coding-standards
kk_depends_on: []
kk_confidence: high
---
Prefer integration tests. By default, write a Functional test (`BrowserTestBase`) that exercises the behavior the way a site uses it: routes, forms, access, rendered output, or subsystems that work together. Use a FunctionalJavascript test (`WebDriverTestBase`) only when the behavior needs JavaScript.

Use a lower tier only when the behavior is well scoped to that tier:

| Tier | Base class | Use it when |
| --- | --- | --- |
| Unit | `UnitTestCase` | Self-contained logic with mocked collaborators. |
| Kernel | `KernelTestBase` | A service that needs the database, entities, config schema, or the container. |
| Functional | `BrowserTestBase` | Default: routes, forms, access, rendered output, or subsystems that work together. |
| FunctionalJavascript | `WebDriverTestBase` | The behavior needs JavaScript. |

Integration tiers cost more to run, so keep each assertion useful and set up the Drupal environment once per class. See the assertion budget and the one-class, one-method nodes.

Run module tests with `vendor/bin/phpunit <module-path>`, where `<module-path>` is the module directory, such as `web/modules/custom/mymodule` or `web/modules/contrib/mymodule` on a site. In a contrib module checkout that uses ddev-drupal-contrib, run `ddev phpunit`. Target one test with `--filter`, run one suite with `--testsuite`, and generate coverage with `--coverage-html reports/` when you need it.

<!-- kk:related:start -->
# Related

- Related: [practice-quality-drupal-functional-browser-tests](/drupal/quality/practice-quality-drupal-functional-browser-tests.md)
- Related: [practice-quality-drupal-unit-kernel-tests](/drupal/quality/practice-quality-drupal-unit-kernel-tests.md)
- Related: [practice-quality-budget-test-assertions](/drupal/quality/practice-quality-budget-test-assertions.md)
- Related: [practice-quality-one-test-class-one-method-per-tier](/drupal/quality/practice-quality-one-test-class-one-method-per-tier.md)
- Related: [practice-quality-drupal-coding-standards](/drupal/quality/practice-quality-drupal-coding-standards.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal)
[2] [https://www.drupal.org/docs/develop/automated-testing/types-of-tests-in-drupal](https://www.drupal.org/docs/develop/automated-testing/types-of-tests-in-drupal)
[3] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/running-phpunit-tests](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/running-phpunit-tests)
[4] [https://github.com/ddev/ddev-drupal-contrib](https://github.com/ddev/ddev-drupal-contrib)
<!-- kk:citations:end -->
