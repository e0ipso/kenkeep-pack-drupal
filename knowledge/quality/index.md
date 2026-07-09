# kenkeep Index: drupal / quality

↑ Parent: [drupal](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Alter and debug plugin definitions through managers**](practice-alter-and-debug-plugin-definitions-through-managers.md) to learn about: Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work. #drupal #plugins #debugging
- Open [**Choose the lightest Drupal test type that covers the behavior**](practice-quality-choose-lightest-drupal-test-type.md) to learn about: Drupal tests range from fast isolated unit tests through kernel, functional, and FunctionalJS tests; select the least integrated option that still verifies the behavior. #quality #testing #drupal #phpunit
- Open [**Test JSON-RPC through handler and HTTP paths**](practice-test-jsonrpc-through-handler-and-http.md) to learn about: JSON-RPC testing covers kernel handler calls, functional HTTP calls, mocks, batch requests, and error responses. #http #jsonrpc #testing
- Open [**Use Drupal functional tests for browser-level behavior**](practice-quality-drupal-functional-browser-tests.md) to learn about: Functional tests should cover page rendering, form submissions, and access control with BrowserTestBase, reserving WebDriverTestBase for JavaScript-dependent behavior. #quality #testing #drupal #functional
- Open [**Use Drupal PHPCS and PHPStan for custom module quality**](practice-quality-drupal-coding-standards.md) to learn about: Custom Drupal module code should be checked with Drupal and DrupalPractice PHPCS standards plus PHPStan, with level 5 or higher preferred for new code. #quality #drupal #phpcs #phpstan
- Open [**Use unit tests for pure logic and kernel tests for Drupal integration**](practice-quality-drupal-unit-kernel-tests.md) to learn about: UnitTestCase is the default for isolated logic, while KernelTestBase is appropriate when entities, config, services, schemas, or a database are part of the behavior. #quality #testing #drupal #kernel
- Open [**Keep debugging code out of commits**](practice-keep-debugging-code-out-of-commits.md) to learn about: Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing. #debugging #workflow #ddev
- Open [**Review and finish generated Drupal code**](practice-review-and-finish-generated-drupal-code.md) to learn about: After Drush generation, review files, add logic and dependencies, rebuild cache, add tests, and run quality tools. #drush #generators #workflow
- Open [**Scope tests to the module**](practice-scope-tests-to-the-module.md) to learn about: Run PHPUnit against the relevant module path and avoid running the entire test collection. #testing #phpunit #workflow

## Components (what exists)
_None yet._

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #testing
- Open [**Choose the lightest Drupal test type that covers the behavior**](practice-quality-choose-lightest-drupal-test-type.md) — Drupal tests range from fast isolated unit tests through kernel, functional, and FunctionalJS tests; select the least integrated option that still verifies the behavior.
- Open [**Use Drupal functional tests for browser-level behavior**](practice-quality-drupal-functional-browser-tests.md) — Functional tests should cover page rendering, form submissions, and access control with BrowserTestBase, reserving WebDriverTestBase for JavaScript-dependent behavior.
- Open [**Use unit tests for pure logic and kernel tests for Drupal integration**](practice-quality-drupal-unit-kernel-tests.md) — UnitTestCase is the default for isolated logic, while KernelTestBase is appropriate when entities, config, services, schemas, or a database are part of the behavior.
### #quality
- Open [**Choose the lightest Drupal test type that covers the behavior**](practice-quality-choose-lightest-drupal-test-type.md) — Drupal tests range from fast isolated unit tests through kernel, functional, and FunctionalJS tests; select the least integrated option that still verifies the behavior.
- Open [**Use Drupal functional tests for browser-level behavior**](practice-quality-drupal-functional-browser-tests.md) — Functional tests should cover page rendering, form submissions, and access control with BrowserTestBase, reserving WebDriverTestBase for JavaScript-dependent behavior.
- Open [**Use unit tests for pure logic and kernel tests for Drupal integration**](practice-quality-drupal-unit-kernel-tests.md) — UnitTestCase is the default for isolated logic, while KernelTestBase is appropriate when entities, config, services, schemas, or a database are part of the behavior.
### #workflow
- Open [**Workflow API backs content moderation states and transitions**](../processing/workflows/map-processing-workflow-moderation-map.md) — Drupal workflows expose states, transitions, and custom workflow type plugins; Content Moderation uses them to model Draft, Review, Published, and permissioned transitions.
- Open [**Treat moderation_state as the source of truth for moderated content**](../processing/workflows/practice-processing-content-moderation-workflow-guidance.md) — Content Moderation extends Drupal publishing with workflow states and transitions; code should use moderation services and transition validation rather than setting status directly.
- Open [**Keep debugging code out of commits**](practice-keep-debugging-code-out-of-commits.md) — Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing.
### #debugging
- Open [**Alter and debug plugin definitions through managers**](practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.
- Open [**Keep debugging code out of commits**](practice-keep-debugging-code-out-of-commits.md) — Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing.
### #phpunit
- Open [**Choose the lightest Drupal test type that covers the behavior**](practice-quality-choose-lightest-drupal-test-type.md) — Drupal tests range from fast isolated unit tests through kernel, functional, and FunctionalJS tests; select the least integrated option that still verifies the behavior.
- Open [**Scope tests to the module**](practice-scope-tests-to-the-module.md) — Run PHPUnit against the relevant module path and avoid running the entire test collection.
### #ddev
- Open [**Keep debugging code out of commits**](practice-keep-debugging-code-out-of-commits.md) — Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing.
### #drush
- Open [**Define Drush commands with attributes and autowiring**](../tooling/practice-define-drush-commands-with-attributes-and-autowiring.md) — Custom Drush commands should use Symfony Console command classes, AutowireTrait, constructor injection, and structured output helpers.
- Open [**Handle Drush command IO and failures explicitly**](../tooling/practice-handle-drush-command-io-and-failures-explicitly.md) — Use Symfony or Drush output helpers, confirmations, structured rows, batches, validation, and exit codes for CLI behavior.
- Open [**Use autowired Symfony Console Drush commands**](../tooling/practice-use-autowired-attribute-drush-commands.md) — Build Drush 13.7+/14 commands with Symfony Console attributes, AutowireTrait, and constructor injection.
### #functional
- Open [**Use Drupal functional tests for browser-level behavior**](practice-quality-drupal-functional-browser-tests.md) — Functional tests should cover page rendering, form submissions, and access control with BrowserTestBase, reserving WebDriverTestBase for JavaScript-dependent behavior.
### #generators
- Open [**Review and finish generated Drupal code**](practice-review-and-finish-generated-drupal-code.md) — After Drush generation, review files, add logic and dependencies, rebuild cache, add tests, and run quality tools.
### #http
- Open [**JSON-RPC methods are attribute plugins**](../apis/map-jsonrpc-method-plugins.md) — The JSON-RPC API uses contrib method plugins declared with JsonRpcMethod and served through /jsonrpc.
- Open [**Test JSON-RPC through handler and HTTP paths**](practice-test-jsonrpc-through-handler-and-http.md) — JSON-RPC testing covers kernel handler calls, functional HTTP calls, mocks, batch requests, and error responses.
- Open [**Guard JSON-RPC entity CRUD access**](../apis/practice-guard-jsonrpc-entity-crud-access.md) — JSON-RPC CRUD methods should combine permission attributes, runtime entity checks, accessCheck, and current-user checks.
### #jsonrpc
- Open [**JSON-RPC methods are attribute plugins**](../apis/map-jsonrpc-method-plugins.md) — The JSON-RPC API uses contrib method plugins declared with JsonRpcMethod and served through /jsonrpc.
- Open [**Test JSON-RPC through handler and HTTP paths**](practice-test-jsonrpc-through-handler-and-http.md) — JSON-RPC testing covers kernel handler calls, functional HTTP calls, mocks, batch requests, and error responses.
- Open [**Guard JSON-RPC entity CRUD access**](../apis/practice-guard-jsonrpc-entity-crud-access.md) — JSON-RPC CRUD methods should combine permission attributes, runtime entity checks, accessCheck, and current-user checks.
### #kernel
- Open [**Use unit tests for pure logic and kernel tests for Drupal integration**](practice-quality-drupal-unit-kernel-tests.md) — UnitTestCase is the default for isolated logic, while KernelTestBase is appropriate when entities, config, services, schemas, or a database are part of the behavior.
### #phpcs
- Open [**Use Drupal PHPCS and PHPStan for custom module quality**](practice-quality-drupal-coding-standards.md) — Custom Drupal module code should be checked with Drupal and DrupalPractice PHPCS standards plus PHPStan, with level 5 or higher preferred for new code.
### #phpstan
- Open [**Use Drupal PHPCS and PHPStan for custom module quality**](practice-quality-drupal-coding-standards.md) — Custom Drupal module code should be checked with Drupal and DrupalPractice PHPCS standards plus PHPStan, with level 5 or higher preferred for new code.
### #plugins
- Open [**Derivative plugins generate dynamic plugin instances**](../architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md) — A deriver creates multiple plugin definitions from one base plugin using dynamic data.
- Open [**Drupal mail flow**](../architecture/services/map-drupal-mail-flow.md) — MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output.
- Open [**Alter and debug plugin definitions through managers**](practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.