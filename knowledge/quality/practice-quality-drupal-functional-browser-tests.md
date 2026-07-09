---
type: practice
title: Use Drupal functional tests for browser-level behavior
description: >-
  Functional tests should cover page rendering, form submissions, and access
  control with BrowserTestBase, reserving WebDriverTestBase for
  JavaScript-dependent behavior.
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
  - practice-quality-choose-lightest-drupal-test-type
  - practice-quality-drupal-unit-kernel-tests
  - practice-quality-drupal-coding-standards
kk_depends_on: []
kk_confidence: high
---
Functional Drupal tests extend `BrowserTestBase` and run a full Drupal installation in a test environment. Use them for behavior that requires browser-level interaction, such as page rendering, form submissions, and access control. Set `$defaultTheme`, list only the modules needed by the test, create and log in users with appropriate permissions, visit paths with `drupalGet()`, submit forms with `submitForm()`, and assert status codes, page text, elements, and field values through `assertSession()`. Use `WebDriverTestBase` only for JavaScript-dependent behavior such as AJAX forms, dynamic UI updates, or client-side validation, because it adds browser-driver cost. Scope functional tests to the module during local iteration.

<!-- kk:related:start -->
# Related

- Related: [practice-quality-choose-lightest-drupal-test-type](/drupal/quality/practice-quality-choose-lightest-drupal-test-type.md)
- Related: [practice-quality-drupal-unit-kernel-tests](/drupal/quality/practice-quality-drupal-unit-kernel-tests.md)
- Related: [practice-quality-drupal-coding-standards](/drupal/quality/practice-quality-drupal-coding-standards.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/functional-tests](https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/functional-tests)
[2] [https://api.drupal.org/api/drupal/core%21tests%21Drupal%21Tests%21BrowserTestBase.php/class/BrowserTestBase/11.x](https://api.drupal.org/api/drupal/core%21tests%21Drupal%21Tests%21BrowserTestBase.php/class/BrowserTestBase/11.x)
[3] [https://api.drupal.org/api/drupal/core%21tests%21Drupal%21FunctionalJavascriptTests%21WebDriverTestBase.php/class/WebDriverTestBase/11.x](https://api.drupal.org/api/drupal/core%21tests%21Drupal%21FunctionalJavascriptTests%21WebDriverTestBase.php/class/WebDriverTestBase/11.x)
<!-- kk:citations:end -->
