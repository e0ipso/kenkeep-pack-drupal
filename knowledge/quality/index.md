---
schema_version: 2
summary: testing, code quality, debugging workflow, and generated-code review; read before adding test coverage or quality gates
---
# Quality Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Alter and debug plugin definitions through managers**](practice-alter-and-debug-plugin-definitions-through-managers.md) to learn about: Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work. #drupal #plugins #debugging
- Open [**Choose the lightest Drupal test type that covers the behavior**](practice-quality-choose-lightest-drupal-test-type.md) to learn about: Drupal tests range from fast isolated unit tests through kernel, functional, and FunctionalJS tests; select the least integrated option that still verifies the behavior. #quality #testing #drupal #phpunit
- Open [**Keep debugging code out of commits**](practice-keep-debugging-code-out-of-commits.md) to learn about: Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing. #debugging #workflow #ddev
- Open [**Review and finish generated Drupal code**](practice-review-and-finish-generated-drupal-code.md) to learn about: After Drush generation, review files, add logic and dependencies, rebuild cache, add tests, and run quality tools. #drush #generators #workflow
- Open [**Scope tests to the module**](practice-scope-tests-to-the-module.md) to learn about: Run PHPUnit against the relevant module path and avoid running the entire test collection. #testing #phpunit #workflow
- Open [**Test JSON-RPC through handler and HTTP paths**](practice-test-jsonrpc-through-handler-and-http.md) to learn about: JSON-RPC testing covers kernel handler calls, functional HTTP calls, mocks, batch requests, and error responses. #http #jsonrpc #testing
- Open [**Use Drupal functional tests for browser-level behavior**](practice-quality-drupal-functional-browser-tests.md) to learn about: Functional tests should cover page rendering, form submissions, and access control with BrowserTestBase, reserving WebDriverTestBase for JavaScript-dependent behavior. #quality #testing #drupal #functional
- Open [**Use Drupal PHPCS and PHPStan for custom module quality**](practice-quality-drupal-coding-standards.md) to learn about: Custom Drupal module code should be checked with Drupal and DrupalPractice PHPCS standards plus PHPStan, with level 5 or higher preferred for new code. #quality #drupal #phpcs #phpstan
- Open [**Use unit tests for pure logic and kernel tests for Drupal integration**](practice-quality-drupal-unit-kernel-tests.md) to learn about: UnitTestCase is the default for isolated logic, while KernelTestBase is appropriate when entities, config, services, schemas, or a database are part of the behavior. #quality #testing #drupal #kernel

## Components (what exists)
_None._

