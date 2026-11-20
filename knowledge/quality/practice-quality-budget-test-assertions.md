---
type: practice
title: Make every test assertion pay for itself
description: >-
  Tests cost time and resources, so do not assert trivial behavior, behavior
  that another assertion already covers, or upstream behavior from Drupal core,
  PHP, or a dependency.
tags:
  - quality
  - testing
  - drupal
  - phpunit
kk_schema_version: 3
kk_id: practice-quality-budget-test-assertions
kk_derived_from:
  - 'https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal'
kk_relates_to:
  - practice-quality-prefer-drupal-integration-tests
  - practice-quality-one-test-class-one-method-per-tier
kk_depends_on: []
kk_confidence: medium
---
Tests cost time and resources to write, run, and maintain, so every assertion must pay for itself. Assert the behavior that the project adds. Do not assert:

- trivial behavior, such as getters, setters, or constants;
- behavior that another assertion already covers;
- upstream behavior: Drupal core, PHP, or a dependency.

For example, a Functional test of a custom form asserts that the module's submit handler saves the value and shows the module's message. It does not assert that the Form API renders a text field or that core denies access to an anonymous user on a route that only uses a core permission.

<!-- kk:related:start -->
# Related

- Related: [practice-quality-prefer-drupal-integration-tests](/drupal/quality/practice-quality-prefer-drupal-integration-tests.md)
- Related: [practice-quality-one-test-class-one-method-per-tier](/drupal/quality/practice-quality-one-test-class-one-method-per-tier.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal)
<!-- kk:citations:end -->
