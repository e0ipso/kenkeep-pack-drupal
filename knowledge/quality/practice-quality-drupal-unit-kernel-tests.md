---
type: practice
title: Use Unit and Kernel tests only for well-scoped behavior
description: >-
  UnitTestCase covers self-contained logic with mocked collaborators, and
  KernelTestBase covers a service that needs the database, entities, config
  schema, or the container; other behavior belongs in integration tests.
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
  - practice-quality-one-test-class-one-method-per-tier
  - practice-quality-prefer-drupal-integration-tests
  - practice-quality-drupal-functional-browser-tests
  - practice-quality-drupal-coding-standards
kk_depends_on: []
kk_confidence: high
---
Integration tests are the default (see the node on preferring Drupal integration tests). Use a Unit or Kernel test only when the behavior is well scoped to that tier.

Use `UnitTestCase` for self-contained logic that does not need a Drupal bootstrap, a database, or real services. Mock its collaborators, such as a config factory. Data providers are fine in Unit tests, for example to cover an input matrix or state transitions.

Use `KernelTestBase` for a service that needs the database, entities, config schema, or the container. Declare the required modules, call `parent::setUp()`, install entity schemas with `installEntitySchema()`, and install module configuration with `installConfig()`. Kernel tests set up a new Drupal environment for each test method and each data provider row, so do not use data providers in Kernel tests and follow the one-class, one-method rule.

During development, use `--stop-on-failure` for quick feedback.

<!-- kk:related:start -->
# Related

- Related: [practice-quality-one-test-class-one-method-per-tier](/drupal/quality/practice-quality-one-test-class-one-method-per-tier.md)
- Related: [practice-quality-prefer-drupal-integration-tests](/drupal/quality/practice-quality-prefer-drupal-integration-tests.md)
- Related: [practice-quality-drupal-functional-browser-tests](/drupal/quality/practice-quality-drupal-functional-browser-tests.md)
- Related: [practice-quality-drupal-coding-standards](/drupal/quality/practice-quality-drupal-coding-standards.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal)
[2] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/unit-tests](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/unit-tests)
[3] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/kernel-tests](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/kernel-tests)
<!-- kk:citations:end -->
