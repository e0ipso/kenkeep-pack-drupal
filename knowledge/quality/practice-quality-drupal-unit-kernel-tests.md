---
type: practice
title: Use unit tests for pure logic and kernel tests for Drupal integration
description: >-
  UnitTestCase is the default for isolated logic, while KernelTestBase is
  appropriate when entities, config, services, schemas, or a database are part
  of the behavior.
tags:
  - quality
  - testing
  - drupal
  - kernel
kk_schema_version: 3
kk_id: practice-quality-drupal-unit-kernel-tests
kk_derived_from:
  - 'https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal'
  - >-
    https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/unit-tests
  - >-
    https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/kernel-tests
kk_relates_to:
  - practice-quality-choose-lightest-drupal-test-type
  - practice-quality-drupal-functional-browser-tests
  - practice-quality-drupal-coding-standards
kk_depends_on: []
kk_confidence: high
---
Use `UnitTestCase` for fast tests of pure logic that do not need Drupal bootstrap, database access, or real services. Mock dependencies such as config factories when isolated logic needs collaborators. Use `KernelTestBase` when the behavior interacts with Drupal services, entities, configuration, or the database; declare the required modules, call `parent::setUp()`, install needed entity schemas with `installEntitySchema()`, and install module configuration with `installConfig()`. Data providers are appropriate for compactly covering state transitions or other input matrices. During development, `--stop-on-failure` is useful for quick feedback.

<!-- kk:related:start -->
# Related

- Related: [practice-quality-choose-lightest-drupal-test-type](/drupal/quality/practice-quality-choose-lightest-drupal-test-type.md)
- Related: [practice-quality-drupal-functional-browser-tests](/drupal/quality/practice-quality-drupal-functional-browser-tests.md)
- Related: [practice-quality-drupal-coding-standards](/drupal/quality/practice-quality-drupal-coding-standards.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal)
[2] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/unit-tests](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/unit-tests)
[3] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/kernel-tests](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/kernel-tests)
<!-- kk:citations:end -->
