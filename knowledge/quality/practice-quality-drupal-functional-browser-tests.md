---
schema_version: 2
id: practice-quality-drupal-functional-browser-tests
title: Use Drupal functional tests for browser-level behavior
kind: practice
tags:
  - quality
  - testing
  - drupal
  - functional
derived_from:
  - https://www.drupal.org/docs/develop/automated-testing/phpunit-in-drupal/functional-tests
  - https://api.drupal.org/api/drupal/core%21tests%21Drupal%21Tests%21BrowserTestBase.php/class/BrowserTestBase/11.x
  - https://api.drupal.org/api/drupal/core%21tests%21Drupal%21FunctionalJavascriptTests%21WebDriverTestBase.php/class/WebDriverTestBase/11.x
relates_to:
  - practice-quality-choose-lightest-drupal-test-type
  - practice-quality-drupal-unit-kernel-tests
  - practice-quality-drupal-coding-standards
depends_on: []
confidence: high
summary: >-
  Functional tests should cover page rendering, form submissions, and access
  control with BrowserTestBase, reserving WebDriverTestBase for
  JavaScript-dependent behavior.
---
Functional Drupal tests extend `BrowserTestBase` and run a full Drupal installation in a test environment. Use them for behavior that requires browser-level interaction, such as page rendering, form submissions, and access control. Set `$defaultTheme`, list only the modules needed by the test, create and log in users with appropriate permissions, visit paths with `drupalGet()`, submit forms with `submitForm()`, and assert status codes, page text, elements, and field values through `assertSession()`. Use `WebDriverTestBase` only for JavaScript-dependent behavior such as AJAX forms, dynamic UI updates, or client-side validation, because it adds browser-driver cost. Scope functional tests to the module during local iteration.
