---
type: practice
title: Use Drupal Functional tests as the default test tier
description: >-
  BrowserTestBase is the default tier for routes, forms, access, rendered
  output, and subsystems that work together; use WebDriverTestBase only when
  the behavior needs JavaScript.
tags:
  - quality
  - testing
  - drupal
  - functional
kk_schema_version: 3
kk_id: practice-quality-drupal-functional-browser-tests
kk_derived_from:
  - >-
    https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/functional-tests
  - >-
    https://api.drupal.org/api/drupal/core%21tests%21Drupal%21Tests%21BrowserTestBase.php/class/BrowserTestBase/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21tests%21Drupal%21FunctionalJavascriptTests%21WebDriverTestBase.php/class/WebDriverTestBase/11.x
kk_relates_to:
  - practice-quality-budget-test-assertions
  - practice-quality-one-test-class-one-method-per-tier
  - practice-quality-prefer-drupal-integration-tests
  - practice-quality-drupal-unit-kernel-tests
  - practice-quality-drupal-coding-standards
kk_depends_on: []
kk_confidence: high
---
Functional Drupal tests extend `BrowserTestBase` and install a full Drupal site in a test environment. They are the default tier: use them for behavior that a site exercises, such as routes, forms, access, rendered output, or subsystems that work together. Set `$defaultTheme`, list only the modules that the test needs, create and log in users with the necessary permissions, visit paths with `drupalGet()`, submit forms with `submitForm()`, and assert status codes, page text, elements, and field values through `assertSession()`.

Use `WebDriverTestBase` (FunctionalJavascript) only when the behavior needs JavaScript, such as AJAX forms, dynamic UI updates, or client-side validation. It adds the cost of a browser driver.

Both tiers install Drupal for each test method and each data provider row. Do not use data providers in these tiers, and follow the one-class, one-method rule. Scope Functional tests to the module during local iteration.

<!-- kk:related:start -->
# Related

- Related: [practice-quality-budget-test-assertions](/drupal/quality/practice-quality-budget-test-assertions.md)
- Related: [practice-quality-one-test-class-one-method-per-tier](/drupal/quality/practice-quality-one-test-class-one-method-per-tier.md)
- Related: [practice-quality-prefer-drupal-integration-tests](/drupal/quality/practice-quality-prefer-drupal-integration-tests.md)
- Related: [practice-quality-drupal-unit-kernel-tests](/drupal/quality/practice-quality-drupal-unit-kernel-tests.md)
- Related: [practice-quality-drupal-coding-standards](/drupal/quality/practice-quality-drupal-coding-standards.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/functional-tests](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/functional-tests)
[2] [https://api.drupal.org/api/drupal/core%21tests%21Drupal%21Tests%21BrowserTestBase.php/class/BrowserTestBase/11.x](https://api.drupal.org/api/drupal/core%21tests%21Drupal%21Tests%21BrowserTestBase.php/class/BrowserTestBase/11.x)
[3] [https://api.drupal.org/api/drupal/core%21tests%21Drupal%21FunctionalJavascriptTests%21WebDriverTestBase.php/class/WebDriverTestBase/11.x](https://api.drupal.org/api/drupal/core%21tests%21Drupal%21FunctionalJavascriptTests%21WebDriverTestBase.php/class/WebDriverTestBase/11.x)
<!-- kk:citations:end -->
