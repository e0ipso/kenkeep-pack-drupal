---
type: practice
title: Use one test class with one test method per Drupal integration tier
description: >-
  Kernel, Functional, and FunctionalJavascript tests set up a new Drupal
  environment for each test method and data provider row; use one class per
  tier and one method that calls a helper for each scenario.
tags:
  - quality
  - testing
  - drupal
  - phpunit
  - kernel
  - functional
kk_schema_version: 3
kk_id: practice-quality-one-test-class-one-method-per-tier
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21tests%21Drupal%21KernelTests%21KernelTestBase.php/class/KernelTestBase/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21tests%21Drupal%21Tests%21BrowserTestBase.php/class/BrowserTestBase/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21tests%21Drupal%21FunctionalJavascriptTests%21WebDriverTestBase.php/class/WebDriverTestBase/11.x
  - 'https://docs.phpunit.de/en/11.5/writing-tests-for-phpunit.html#data-providers'
kk_relates_to:
  - practice-quality-prefer-drupal-integration-tests
  - practice-quality-drupal-unit-kernel-tests
  - practice-quality-drupal-functional-browser-tests
  - practice-quality-budget-test-assertions
kk_depends_on: []
kk_confidence: high
---
Kernel (`KernelTestBase`), Functional (`BrowserTestBase`), and FunctionalJavascript (`WebDriverTestBase`) tests set up a new Drupal environment in `setUp()` for each test method. PHPUnit runs each data provider row as a separate test, so each row also gets a new environment. To set up the environment only once:

- Each module and sub-module has at most one test class per tier (Kernel, Functional, FunctionalJavascript).
- Each class has one test method. Add another only when it is exceptionally necessary. The test method only calls protected helper methods, one for each scenario. It never reinstalls or rebuilds the site.
- A helper can use state that earlier helpers left. Its docblock states what it needs and what it leaves.
- Do not use data providers in these tiers. Data providers are fine in Unit tests.

```php
final class MyModuleFunctionalTest extends BrowserTestBase {

  protected $defaultTheme = 'stark';

  protected static $modules = ['my_module'];

  public function testMyModule(): void {
    $this->doSettingsFormSavesValues();
    $this->doReportPageShowsSavedValues();
  }

  /**
   * Needs: a clean install. Leaves: an admin user logged in, settings saved.
   */
  protected function doSettingsFormSavesValues(): void {
    // ...
  }

  /**
   * Needs: the settings that doSettingsFormSavesValues() saved.
   * Leaves: the admin user logged in.
   */
  protected function doReportPageShowsSavedValues(): void {
    // ...
  }

}
```

<!-- kk:related:start -->
# Related

- Related: [practice-quality-prefer-drupal-integration-tests](/drupal/quality/practice-quality-prefer-drupal-integration-tests.md)
- Related: [practice-quality-drupal-unit-kernel-tests](/drupal/quality/practice-quality-drupal-unit-kernel-tests.md)
- Related: [practice-quality-drupal-functional-browser-tests](/drupal/quality/practice-quality-drupal-functional-browser-tests.md)
- Related: [practice-quality-budget-test-assertions](/drupal/quality/practice-quality-budget-test-assertions.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21tests%21Drupal%21KernelTests%21KernelTestBase.php/class/KernelTestBase/11.x](https://api.drupal.org/api/drupal/core%21tests%21Drupal%21KernelTests%21KernelTestBase.php/class/KernelTestBase/11.x)
[2] [https://api.drupal.org/api/drupal/core%21tests%21Drupal%21Tests%21BrowserTestBase.php/class/BrowserTestBase/11.x](https://api.drupal.org/api/drupal/core%21tests%21Drupal%21Tests%21BrowserTestBase.php/class/BrowserTestBase/11.x)
[3] [https://api.drupal.org/api/drupal/core%21tests%21Drupal%21FunctionalJavascriptTests%21WebDriverTestBase.php/class/WebDriverTestBase/11.x](https://api.drupal.org/api/drupal/core%21tests%21Drupal%21FunctionalJavascriptTests%21WebDriverTestBase.php/class/WebDriverTestBase/11.x)
[4] [https://docs.phpunit.de/en/11.5/writing-tests-for-phpunit.html#data-providers](https://docs.phpunit.de/en/11.5/writing-tests-for-phpunit.html#data-providers)
<!-- kk:citations:end -->
