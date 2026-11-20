# kenkeep Index: drupal / quality

↑ Parent: [drupal](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Alter and debug plugin definitions through managers**](practice-alter-and-debug-plugin-definitions-through-managers.md) to learn about: Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work. #drupal #plugins #debugging
- Open [**Prefer Drupal integration tests**](practice-quality-prefer-drupal-integration-tests.md) to learn about: Test behavior the way a site uses it with Functional or FunctionalJavascript tests by default; use Unit or Kernel tests only when the behavior is well scoped to that tier. #quality #testing #drupal #phpunit
- Open [**Test JSON-RPC through handler and HTTP paths**](practice-test-jsonrpc-through-handler-and-http.md) to learn about: JSON-RPC testing covers kernel handler calls, functional HTTP calls, mocks, batch requests, and error responses. #http #jsonrpc #testing
- Open [**Use Drupal Functional tests as the default test tier**](practice-quality-drupal-functional-browser-tests.md) to learn about: BrowserTestBase is the default tier for routes, forms, access, rendered output, and subsystems that work together; use WebDriverTestBase only when the behavior needs JavaScript. #quality #testing #drupal #functional
- Open [**Use Drupal PHPCS and PHPStan for module quality**](practice-quality-drupal-coding-standards.md) to learn about: Custom and contrib Drupal module code should be checked with Drupal and DrupalPractice PHPCS standards plus PHPStan, preferably level 5 or higher for new code. #quality #drupal #phpcs #phpstan
- Open [**Use one test class with one test method per Drupal integration tier**](practice-quality-one-test-class-one-method-per-tier.md) to learn about: Kernel, Functional, and FunctionalJavascript tests set up a new Drupal environment for each test method and data provider row; use one class per tier and one method that calls a helper for each scenario. #quality #testing #drupal #phpunit #kernel #functional
- Open [**Use Unit and Kernel tests only for well-scoped behavior**](practice-quality-drupal-unit-kernel-tests.md) to learn about: UnitTestCase covers self-contained logic with mocked collaborators, and KernelTestBase covers a service that needs the database, entities, config schema, or the container; other behavior belongs in integration tests. #quality #testing #drupal #kernel
- Open [**Make every test assertion pay for itself**](practice-quality-budget-test-assertions.md) to learn about: Tests cost time and resources, so do not assert trivial behavior, behavior that another assertion already covers, or upstream behavior from Drupal core, PHP, or a dependency. #quality #testing #drupal #phpunit
- Open [**Keep debugging code out of commits**](practice-keep-debugging-code-out-of-commits.md) to learn about: Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing. #debugging #workflow #ddev
- Open [**Review and finish generated Drupal code**](practice-review-and-finish-generated-drupal-code.md) to learn about: After Drush generation, review files, add logic and dependencies, rebuild cache, add tests, and run quality tools. #drush #generators #workflow
- Open [**Scope tests to the module**](practice-scope-tests-to-the-module.md) to learn about: Run PHPUnit against the relevant module path and avoid running the entire test collection. #testing #phpunit #workflow

## Components (what exists)
_None yet._

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Drupal entity form bases**](../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
### #testing
- Open [**Prefer Drupal integration tests**](practice-quality-prefer-drupal-integration-tests.md) — Test behavior the way a site uses it with Functional or FunctionalJavascript tests by default; use Unit or Kernel tests only when the behavior is well scoped to that tier.
- Open [**Make every test assertion pay for itself**](practice-quality-budget-test-assertions.md) — Tests cost time and resources, so do not assert trivial behavior, behavior that another assertion already covers, or upstream behavior from Drupal core, PHP, or a dependency.
- Open [**Use one test class with one test method per Drupal integration tier**](practice-quality-one-test-class-one-method-per-tier.md) — Kernel, Functional, and FunctionalJavascript tests set up a new Drupal environment for each test method and data provider row; use one class per tier and one method that calls a helper for each scenario.
### #quality
- Open [**Prefer Drupal integration tests**](practice-quality-prefer-drupal-integration-tests.md) — Test behavior the way a site uses it with Functional or FunctionalJavascript tests by default; use Unit or Kernel tests only when the behavior is well scoped to that tier.
- Open [**Make every test assertion pay for itself**](practice-quality-budget-test-assertions.md) — Tests cost time and resources, so do not assert trivial behavior, behavior that another assertion already covers, or upstream behavior from Drupal core, PHP, or a dependency.
- Open [**Use one test class with one test method per Drupal integration tier**](practice-quality-one-test-class-one-method-per-tier.md) — Kernel, Functional, and FunctionalJavascript tests set up a new Drupal environment for each test method and data provider row; use one class per tier and one method that calls a helper for each scenario.
### #phpunit
- Open [**Prefer Drupal integration tests**](practice-quality-prefer-drupal-integration-tests.md) — Test behavior the way a site uses it with Functional or FunctionalJavascript tests by default; use Unit or Kernel tests only when the behavior is well scoped to that tier.
- Open [**Make every test assertion pay for itself**](practice-quality-budget-test-assertions.md) — Tests cost time and resources, so do not assert trivial behavior, behavior that another assertion already covers, or upstream behavior from Drupal core, PHP, or a dependency.
- Open [**Use one test class with one test method per Drupal integration tier**](practice-quality-one-test-class-one-method-per-tier.md) — Kernel, Functional, and FunctionalJavascript tests set up a new Drupal environment for each test method and data provider row; use one class per tier and one method that calls a helper for each scenario.
### #workflow
- Open [**Workflow API backs content moderation states and transitions**](../processing/workflows/map-processing-workflow-moderation-map.md) — Drupal workflows expose states, transitions, and custom workflow type plugins; Content Moderation uses them to model Draft, Review, Published, and permissioned transitions.
- Open [**Treat moderation_state as the source of truth for moderated content**](../processing/workflows/practice-processing-content-moderation-workflow-guidance.md) — Content Moderation extends Drupal publishing with workflow states and transitions; code should use moderation services and transition validation rather than setting status directly.
- Open [**Keep debugging code out of commits**](practice-keep-debugging-code-out-of-commits.md) — Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing.
### #debugging
- Open [**Alter and debug plugin definitions through managers**](practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.
- Open [**Keep debugging code out of commits**](practice-keep-debugging-code-out-of-commits.md) — Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing.
### #functional
- Open [**Use Drupal Functional tests as the default test tier**](practice-quality-drupal-functional-browser-tests.md) — BrowserTestBase is the default tier for routes, forms, access, rendered output, and subsystems that work together; use WebDriverTestBase only when the behavior needs JavaScript.
- Open [**Use one test class with one test method per Drupal integration tier**](practice-quality-one-test-class-one-method-per-tier.md) — Kernel, Functional, and FunctionalJavascript tests set up a new Drupal environment for each test method and data provider row; use one class per tier and one method that calls a helper for each scenario.
### #kernel
- Open [**Use one test class with one test method per Drupal integration tier**](practice-quality-one-test-class-one-method-per-tier.md) — Kernel, Functional, and FunctionalJavascript tests set up a new Drupal environment for each test method and data provider row; use one class per tier and one method that calls a helper for each scenario.
- Open [**Use Unit and Kernel tests only for well-scoped behavior**](practice-quality-drupal-unit-kernel-tests.md) — UnitTestCase covers self-contained logic with mocked collaborators, and KernelTestBase covers a service that needs the database, entities, config schema, or the container; other behavior belongs in integration tests.
### #ddev
- Open [**Develop contrib modules locally with ddev-drupal-contrib**](../contrib/practice-develop-contrib-modules-with-ddev-drupal-contrib.md) — The ddev-drupal-contrib add-on builds a Drupal site around a module checkout and runs many of the quality tools that drupal.org CI runs.
- Open [**Keep debugging code out of commits**](practice-keep-debugging-code-out-of-commits.md) — Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing.
### #drush
- Open [**Define Drush commands with attributes and autowiring**](../tooling/practice-define-drush-commands-with-attributes-and-autowiring.md) — Custom Drush commands should use Symfony Console command classes, AutowireTrait, constructor injection, and structured output helpers.
- Open [**Handle Drush command IO and failures explicitly**](../tooling/practice-handle-drush-command-io-and-failures-explicitly.md) — Use Symfony or Drush output helpers, confirmations, structured rows, batches, validation, and exit codes for CLI behavior.
- Open [**Use autowired Symfony Console Drush commands**](../tooling/practice-use-autowired-attribute-drush-commands.md) — Build Drush 13.7+/14 commands with Symfony Console attributes, AutowireTrait, and constructor injection.
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
### #phpcs
- Open [**Use Drupal PHPCS and PHPStan for module quality**](practice-quality-drupal-coding-standards.md) — Custom and contrib Drupal module code should be checked with Drupal and DrupalPractice PHPCS standards plus PHPStan, preferably level 5 or higher for new code.
### #phpstan
- Open [**Use Drupal PHPCS and PHPStan for module quality**](practice-quality-drupal-coding-standards.md) — Custom and contrib Drupal module code should be checked with Drupal and DrupalPractice PHPCS standards plus PHPStan, preferably level 5 or higher for new code.
### #plugins
- Open [**Derivative plugins generate dynamic plugin instances**](../architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md) — A deriver creates multiple plugin definitions from one base plugin using dynamic data.
- Open [**Drupal mail flow**](../architecture/services/map-drupal-mail-flow.md) — MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output.
- Open [**Alter and debug plugin definitions through managers**](practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.