---
schema_version: 2
nodes_hash: 'sha256:055c2da579617c512d8ae1b7906eece8a29b20a0da147597f43e635e86dd8406'
node_count: 141
---
# kenkeep Index

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Account For Layout Builder Override Side Effects**](practice-account-for-layout-builder-overrides.md) to learn about: Per-entity overrides, inline blocks, and override edits have cache, entity, and revision consequences. #drupal #layout #cache
- Open [**Align content entity keys with base fields**](practice-align-content-entity-keys-with-base-fields.md) to learn about: Content entity entity_keys must match base field names, with revision and langcode keys added when enabled. #drupal #entities #content
- Open [**Alter and debug plugin definitions through managers**](practice-alter-and-debug-plugin-definitions-through-managers.md) to learn about: Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work. #drupal #plugins #debugging
- Open [**Build configurable and context-aware plugins with cache contexts**](practice-build-configurable-and-context-aware-plugins-with-cache-contexts.md) to learn about: Plugin configuration forms and context-aware plugins should save settings and return context-sensitive cache metadata. #drupal #plugins #configuration #cache
- Open [**Avoid common security vulnerability patterns**](practice-avoid-common-security-vulnerabilities.md) to learn about: Prefer safe APIs, allowlists, generic errors, and cryptographic randomness for common risk areas. #security #vulnerabilities #drupal
- Open [**Build render arrays with cache metadata**](practice-build-render-arrays-with-cache-metadata.md) to learn about: Attach cache tags, contexts, max-age, libraries, and lazy builders directly to Drupal render arrays. #drupal #render #cache
- Open [**Use tagged breadcrumb builders for route-specific breadcrumb trails**](practice-custom-breadcrumb-builders.md) to learn about: Create a breadcrumb builder when the route needs a trail that differs from the URL-derived default. #drupal #routing #breadcrumbs #cache
- Open [**Call accessCheck on entity queries**](practice-call-access-check-on-entity-queries.md) to learn about: Every entity query must set accessCheck explicitly in Drupal 10 and later. #drupal #entities #queries #access
- Open [**Define layout plugins by complexity**](practice-define-layout-plugins-by-complexity.md) to learn about: Use YAML-only layout plugins for simple regions and PHP layout classes for configurable layouts. #drupal #layout #render
- Open [**Guard JSON-RPC entity CRUD access**](practice-guard-jsonrpc-entity-crud-access.md) to learn about: JSON-RPC CRUD methods should combine permission attributes, runtime entity checks, accessCheck, and current-user checks. #http #jsonrpc #crud #access
- Open [**Handle uploads and private files securely**](practice-handle-files-securely.md) to learn about: Validate uploads server-side, store sensitive files privately, and gate private downloads. #security #files #uploads #drupal
- Open [**Choose the lightest Drupal test type that covers the behavior**](practice-quality-choose-lightest-drupal-test-type.md) to learn about: Drupal tests range from fast isolated unit tests through kernel, functional, and FunctionalJS tests; select the least integrated option that still verifies the behavior. #quality #testing #drupal #phpunit
- Open [**Define Drush commands with attributes and autowiring**](practice-define-drush-commands-with-attributes-and-autowiring.md) to learn about: Custom Drush commands should use PHP attributes, AutowireTrait, constructor injection, and Symfony IO. #drupal #drush #commands
- Open [**Define schema for Drupal configuration**](practice-define-schema-for-drupal-configuration.md) to learn about: Every module configuration object needs schema; modern config forms can bind fields with #config_target. #drupal #config #forms
- Open [**Delete queue items only after successful processing**](practice-processing-queue-api-operations.md) to learn about: Manual Drupal queue code must explicitly create, claim, delete, release, and count items; claimed items remain until deleted or released. #drupal #queue #api
- Open [**Extend AddFormBase for custom Media Library add forms**](practice-extend-addformbase-for-custom-media-add-forms.md) to learn about: Custom Media Library add forms should extend AddFormBase and build their input UI through buildInputElement(). #drupal #media #forms
- Open [**Handle Entity Browser integration gotchas**](practice-entity-browser-integration-gotchas.md) to learn about: Entity Browser integrations need the right Views field, modal library, selection mode, access checks, and annotations. #drupal #media #entity-browser #forms
- Open [**Include cache metadata in entity access handlers**](practice-include-cache-metadata-in-entity-access-handlers.md) to learn about: Entity access results need cache metadata such as permission, user, or entity cache contexts/tags. #drupal #entities #access #cache
- Open [**Keep cron hooks bounded and state-gated**](practice-processing-cron-basic-patterns.md) to learn about: Drupal cron work should be short, interval-gated with State API, and delegated to queue workers for long-running or high-volume processing. #drupal #cron #queue
- Open [**Match queue worker ID to queue name**](practice-match-queue-worker-id-to-queue-name.md) to learn about: QueueWorker plugin IDs must match the queue names used when adding items. #drupal #plugins #queue
- Open [**Test JSON-RPC through handler and HTTP paths**](practice-test-jsonrpc-through-handler-and-http.md) to learn about: JSON-RPC testing covers kernel handler calls, functional HTTP calls, mocks, batch requests, and error responses. #http #jsonrpc #testing
- Open [**Use cacheable dependencies for render cache metadata**](practice-use-cacheable-dependencies-for-render-cache-metadata.md) to learn about: Attach cache metadata from entities/config with Drupal helpers instead of manually building cache tags. #cache #render #drupal
- Open [**Use Drupal.ajax for dynamic interactions**](practice-use-drupal-ajax-for-dynamic-interactions.md) to learn about: Use Drupal.ajax and AjaxResponse commands instead of raw fetch or custom JSON endpoints. #frontend #ajax #javascript #drupal
- Open [**Batch-load entities after querying IDs**](practice-batch-load-entities-after-querying-ids.md) to learn about: Query IDs first, then call loadMultiple instead of loading each entity one by one. #drupal #entities #performance
- Open [**Build field formatters as render-array producers**](practice-field-formatters-return-render-arrays.md) to learn about: Field formatters live under Plugin\\Field\\FieldFormatter and return render arrays from viewElements(). #drupal #fields #formatters
- Open [**Build field widgets as field form elements**](practice-field-widgets-build-form-elements.md) to learn about: Field widgets live under Plugin\\Field\\FieldWidget and add child form elements in formElement(). #drupal #fields #widgets
- Open [**Cache computed service data with CacheBackendInterface**](practice-cache-computed-service-data-with-cachebackendinterface.md) to learn about: Use CacheBackendInterface in services for computed data and attach tags for invalidation across bins. #drupal #services #cache
- Open [**Choose entity lifecycle hooks by save phase**](practice-choose-entity-lifecycle-hooks-by-save-phase.md) to learn about: Use the entity lifecycle hook that matches the phase: presave, insert/update, postsave, delete, load, or view. #drupal #entities #hooks
- Open [**Define field type storage and typed data separately**](practice-field-types-define-storage-and-typed-data.md) to learn about: Field types use schema() for database columns and propertyDefinitions() for typed data properties. #drupal #fields #types
- Open [**Define route access with explicit requirements and cache metadata**](practice-route-access-requirements-and-cacheability.md) to learn about: Use YAML requirements or tagged custom checkers, and always cache AccessResult decisions correctly. #drupal #routing #access #cache
- Open [**Do not write directly to the state key-value collection**](practice-do-not-write-directly-to-state-key-value-collection.md) to learn about: Use the State API for state data and reserve direct Key-Value access for separate collections. #state #keyvalue #storage
- Open [**Drupal Redirect entities and events**](practice-drupal-redirect-programmatic-redirects-and-events.md) to learn about: Redirect stores redirects as entities, expects slashless source paths, and exposes lookup and redirect-event extension points. #drupal #seo #redirects #routing
- Open [**Handle Drush command IO and failures explicitly**](practice-handle-drush-command-io-and-failures-explicitly.md) to learn about: Use Drush output helpers, confirmations, structured rows, batches, validation hooks, and exit codes for CLI behavior. #drush #commands #cli
- Open [**Implement computed fields as access-time item lists**](practice-computed-fields-are-computed-on-access.md) to learn about: Computed Drupal fields use ComputedItemListTrait, setComputed(TRUE), and are not stored in the database. #drupal #fields #computed
- Open [**Keep secrets out of code and exported config**](practice-keep-secrets-out-of-code-and-config.md) to learn about: Use environment variables, settings overrides, Key module, or Vault instead of committed secrets. #security #secrets #config #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) to learn about: Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring. #drupal #plugins #services
- Open [**Use Drupal functional tests for browser-level behavior**](practice-quality-drupal-functional-browser-tests.md) to learn about: Functional tests should cover page rendering, form submissions, and access control with BrowserTestBase, reserving WebDriverTestBase for JavaScript-dependent behavior. #quality #testing #drupal #functional
- Open [**Use Drupal PHPCS and PHPStan for custom module quality**](practice-quality-drupal-coding-standards.md) to learn about: Custom Drupal module code should be checked with Drupal and DrupalPractice PHPCS standards plus PHPStan, with level 5 or higher preferred for new code. #quality #drupal #phpcs #phpstan
- Open [**Use unit tests for pure logic and kernel tests for Drupal integration**](practice-quality-drupal-unit-kernel-tests.md) to learn about: UnitTestCase is the default for isolated logic, while KernelTestBase is appropriate when entities, config, services, schemas, or a database are part of the behavior. #quality #testing #drupal #kernel
- Open [**Vary render cache with cache contexts**](practice-vary-render-cache-with-cache-contexts.md) to learn about: Use cache contexts to vary rendered output by user, permissions, route, URL, language, theme, or query args. #drupal #cache #render
- Open [**Attach frontend assets through libraries**](practice-attach-frontend-assets-through-libraries.md) to learn about: Define CSS and JS in libraries.yml and attach libraries where needed instead of loading assets globally. #frontend #assets #libraries #drupal
- Open [**Clean up TempStore data after workflows**](practice-clean-up-tempstore-data-after-workflows.md) to learn about: Delete TempStore entries at the final form step or controller action and handle lock failures. #tempstore #forms #storage
- Open [**Define action plugins with access and type scope**](practice-define-action-plugins-with-access-and-type-scope.md) to learn about: Action plugins live under Plugin\\Action and should declare scope, access behavior, and configuration as needed. #drupal #plugins #actions
- Open [**Drupal Field Group custom formatters**](practice-drupal-field-group-formatters-use-annotations.md) to learn about: Field Group extensions define formatter plugins with @FieldGroupFormatter annotations and store groups in entity display configuration. #drupal #seo #field-group #plugins
- Open [**Drupal Metatag custom tags and groups**](practice-drupal-metatag-plugins-use-annotated-tags-and-groups.md) to learn about: Metatag extensions add annotated tag and group plugins, then read effective tags through the metatag.manager service. #drupal #seo #metatag #plugins
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](practice-extend-layout-builder-with-storage-hooks-events.md) to learn about: Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior. #drupal #layout #plugins
- Open [**Generate Drupal URLs with Url and Link APIs**](practice-generate-drupal-urls-with-url-and-link-objects.md) to learn about: Use Url, Link, entity helpers, or injected generators instead of bare path strings. #drupal #routing #urls #links
- Open [**Keep business logic out of entity classes**](practice-keep-business-logic-out-of-entity-classes.md) to learn about: Put entity behavior in Typed Entity wrappers, not in entity classes or direct field mutations. #drupal #entities #typed-entity #architecture
- Open [**Keep Paragraphs Depth And Revisions Under Control**](practice-keep-paragraphs-depth-and-revisions-under-control.md) to learn about: Limit nesting, manage ERR revision growth, and choose widget modes that keep large paragraph forms usable. #drupal #paragraphs #performance
- Open [**Keep runtime storage out of config export**](practice-keep-runtime-storage-out-of-config-export.md) to learn about: Store environment-specific runtime values in State or Key-Value, not exported Config. #state #config #storage
- Open [**Open Drupal modal routes with AJAX dialog links and commands**](practice-modal-dialog-route-links.md) to learn about: Attach the dialog AJAX library and use valid dialog attributes or AJAX commands for modal behavior. #drupal #routing #ajax #dialogs
- Open [**Prevent SQL injection with safe query APIs**](practice-prevent-sql-injection-with-safe-query-apis.md) to learn about: Prefer Entity Query and parameterized Database API calls; never concatenate user input into SQL. #security #sql #database #drupal
- Open [**Reserve procedural hooks for required cases**](practice-only-procedural-hooks-for-container-unavailable-cases.md) to learn about: Most hooks should be OOP, but install/update/schema/requirements/theme and a few early hooks remain procedural. #drupal #hooks #compatibility
- Open [**Return cacheable AccessResult decisions**](practice-return-cacheable-access-results.md) to learn about: Drupal access checks must return AccessResult objects with the right cache metadata. #security #access #cache #drupal
- Open [**Secure custom table queries**](practice-secure-custom-table-queries.md) to learn about: Use placeholders, escape LIKE patterns, and whitelist dynamic table names in custom SQL work. #drupal #database #security
- Open [**Treat moderation_state as the source of truth for moderated content**](practice-processing-content-moderation-workflow-guidance.md) to learn about: Content Moderation extends Drupal publishing with workflow states and transitions; code should use moderation services and transition validation rather than setting status directly. #drupal #moderation #workflow
- Open [**Use autowired PHP attribute Drush commands**](practice-use-autowired-attribute-drush-commands.md) to learn about: Build custom Drush 13 commands with PHP 8 attributes, AutowireTrait, and constructor injection. #drush #commands #php #di
- Open [**Use Database API only for custom tables**](practice-use-database-api-only-for-custom-tables.md) to learn about: Use Entity API for content and reserve direct Database API queries for custom or audit tables. #database #entities #drupal
- Open [**Use JSON-RPC for business logic**](practice-use-jsonrpc-for-business-logic.md) to learn about: JSON-RPC is the documented fit for actions, workflows, batch operations, and other non-REST business behavior. #http #jsonrpc #api #workflow
- Open [**Use locks, resumable state, and success-only timestamps for advanced cron work**](practice-processing-cron-advanced-safety.md) to learn about: Advanced cron jobs should prevent overlap, preserve retry behavior, and save resumable progress for long operations. #drupal #cron #locks #state
- Open [**Use subscribers for events, OOP hooks for entities**](practice-use-event-subscribers-for-events-not-entity-operations.md) to learn about: Event subscribers are documented for kernel, config, and custom events; entity operations should use OOP hooks instead. #drupal #events #hooks
- Open [**Validate input server-side before use**](practice-validate-input-server-side.md) to learn about: Validate request, entity, and form data for type, format, range, and length before processing. #security #validation #forms #drupal
- Open [**Account for render cache max-age gotchas**](practice-account-for-render-cache-max-age-gotchas.md) to learn about: Treat render cache max-age as restrictive and unreliable for some anonymous/page-cache cases. #cache #render #gotcha
- Open [**Carry cache metadata through token replacements**](practice-token-replacements-must-carry-cache-metadata.md) to learn about: Token replacement hooks and token service usage must attach bubbleable metadata for every data source used. #drupal #tokens #cache
- Open [**Check content entity translations before loading them**](practice-content-translation-check-existing-translation-first.md) to learn about: When working with translated content entities, check translation availability before calling getTranslation(), use getUntranslated() for the default language, and remember that field translation is configured per field. #i18n #entities #translation
- Open [**Define and replace custom tokens with bubbleable metadata**](practice-define-and-replace-custom-tokens-with-bubbleable-metadata.md) to learn about: Custom token types and replacements should declare token info, handle chained tokens, and add cache dependencies. #drupal #tokens #cache
- Open [**Define config entity export and prefix explicitly**](practice-define-config-entity-export-and-prefix-explicitly.md) to learn about: Config entities need config_export for persisted properties and config_prefix for generated filenames. #drupal #entities #config
- Open [**Handle Search API indexing gotchas**](practice-handle-search-api-indexing-gotchas.md) to learn about: Clear indexes after field changes, order processors carefully, and use Views for search pages. #search #drupal #gotcha
- Open [**Keep debugging code out of commits**](practice-keep-debugging-code-out-of-commits.md) to learn about: Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing. #debugging #workflow #ddev
- Open [**Prefer #config_target for settings forms**](practice-prefer-config-target-for-settings-forms.md) to learn about: Use #config_target on Drupal 10.2+ settings forms instead of manual config load/save boilerplate. #forms #config #drupal
- Open [**Prefer Entity Query for entity retrieval**](practice-prefer-entity-query-for-entity-retrieval.md) to learn about: Use Entity Query for normal entity reads and avoid direct Database API for entity operations. #drupal #entities #queries
- Open [**Register custom Media Library openers as tagged services**](practice-register-media-library-custom-openers-as-services.md) to learn about: Custom Media Library openers implement the opener interface and register with the media_library.opener tag. #drupal #media #services
- Open [**Register parameter converters and breadcrumb builders with explicit tags**](practice-parameter-converters-and-breadcrumb-priority.md) to learn about: Custom converters and breadcrumbs rely on explicit service tags, priority ordering, and cache metadata. #drupal #routing #parameters #breadcrumbs
- Open [**Review and finish generated Drupal code**](practice-review-and-finish-generated-drupal-code.md) to learn about: After Drush generation, review files, add logic and dependencies, rebuild cache, add tests, and run quality tools. #drush #generators #workflow
- Open [**Set cache metadata on block plugin builds**](practice-set-cache-metadata-on-block-plugin-builds.md) to learn about: Block plugin build arrays need explicit cache metadata because Drupal caches blocks aggressively. #drupal #plugins #blocks #cache
- Open [**Target forms specifically and keep access neutral by default**](practice-prefer-specific-form-and-neutral-access-hooks.md) to learn about: Use specific form alter hooks for single forms, and have access hooks return neutral unless explicitly deciding access. #drupal #forms #access
- Open [**Use Database API sparingly for custom tables**](practice-use-database-api-sparingly-for-custom-tables.md) to learn about: Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs. #drupal #database #entities
- Open [**Use Entity Reference Revisions For Paragraph Fields**](practice-use-entity-reference-revisions-for-paragraph-fields.md) to learn about: Paragraph fields should reference specific paragraph revisions so host revisions cascade to child revisions. #drupal #paragraphs #revisions
- Open [**Use JSON:API for entity CRUD**](practice-use-jsonapi-for-entity-crud.md) to learn about: JSON:API exposes entity collection, item, relationship, upload, filter, include, sort, and pagination endpoints. #http #jsonapi #entities #crud
- Open [**Use OOP hooks in src/Hook**](practice-prefer-oop-hooks-in-src-hook.md) to learn about: Drupal 11.1+ hook implementations should be PHP attribute based classes under a module's src/Hook directory. #drupal #hooks #oop
- Open [**Write idempotent Drupal JavaScript behaviors**](practice-write-idempotent-drupal-javascript-behaviors.md) to learn about: Use drupalSettings, behaviors, once(), and narrow settings data for Drupal JavaScript integration. #frontend #javascript #behaviors #security
- Open [**Declare and compose Drupal permissions explicitly**](practice-declare-and-compose-drupal-permissions-explicitly.md) to learn about: Define static or dynamic permissions and use route requirement syntax carefully for OR and AND checks. #drupal #permissions #access
- Open [**Design reliable queue processing for at-least-once delivery**](practice-processing-queue-error-handling-idempotency.md) to learn about: Reliable Drupal queues can duplicate work, so workers and manual processors should be idempotent and map queue exceptions to the intended retry behavior. #drupal #queue #reliability
- Open [**Drupal Pathauto alias generation**](practice-drupal-pathauto-alias-types-patterns-and-generation.md) to learn about: Pathauto provides annotated alias type plugins, tokenized alias patterns, and services for generating or updating entity aliases. #drupal #seo #pathauto #aliases
- Open [**Handle negation in condition plugins**](practice-handle-negation-in-condition-plugins.md) to learn about: Condition plugin evaluate methods should account for negation and return summaries as TranslatableMarkup. #drupal #plugins #conditions
- Open [**Inject services into plugins with ContainerFactoryPluginInterface**](practice-inject-services-into-plugins-with-container-factory.md) to learn about: Plugins that need services should use create() and constructor injection instead of static Drupal service calls. #drupal #plugins #dependency-injection
- Open [**Keep install hooks for install-time work**](practice-keep-install-hooks-for-install-time-work.md) to learn about: Use module install hooks for install/uninstall tasks, non-entity schemas, and requirements, not later schema updates. #drupal #install #modules
- Open [**Keep translation strings extractable and placeholder-safe**](practice-translation-strings-must-be-extractable.md) to learn about: Use Drupal translation APIs with literal source strings, placeholders, and plural forms; do not concatenate translated text or pass variables as the source string. #i18n #strings #javascript
- Open [**Place custom validation constraints by convention**](practice-place-custom-validation-constraints-by-convention.md) to learn about: Custom entity validation constraints and validators belong in Plugin/Validation/Constraint with matching names. #drupal #entities #validation
- Open [**Prefer final classes and promoted readonly dependencies**](practice-prefer-final-classes-and-promoted-readonly-dependencies.md) to learn about: Default Drupal classes to final and use constructor property promotion with readonly injected dependencies. #drupal #php #classes
- Open [**Prevent XSS with context-aware output**](practice-prevent-xss-with-context-aware-output.md) to learn about: Use render arrays, placeholders, URL helpers, drupalSettings, and Twig auto-escaping. #security #xss #rendering #drupal
- Open [**Register Views handlers in views data**](practice-register-views-handlers-in-views-data.md) to learn about: Views plugin handlers need attributes, correct directories, and hook_views_data registration. #drupal #plugins #views
- Open [**Run the Drupal security checklist before deploying**](practice-run-the-drupal-security-checklist-before-deploying.md) to learn about: Verify validation, database safety, escaping, access control, files, secrets, APIs, and infra. #security #deployment #checklist #drupal
- Open [**Scope tests to the module**](practice-scope-tests-to-the-module.md) to learn about: Run PHPUnit against the relevant module path and avoid running the entire test collection. #testing #phpunit #workflow
- Open [**Secure every API endpoint before processing**](practice-secure-api-endpoints.md) to learn about: Authenticate, authorize, validate, rate limit, and avoid exposing internals in API responses. #security #api #validation #auth
- Open [**Tag cache entries for targeted invalidation**](practice-tag-cache-entries-for-targeted-invalidation.md) to learn about: Attach cache tags that identify the data a cache item depends on so updates invalidate the right entries. #drupal #cache #invalidation
- Open [**Tag custom normalizers explicitly**](practice-tag-custom-normalizers-explicitly.md) to learn about: Custom serialization normalizers need an explicit normalizer service tag with priority. #http #serialization #services
- Open [**Target form alters precisely**](practice-target-form-alters-precisely.md) to learn about: Prefer specific or base form alter hooks, use #states only for client-side behavior, and validate on the server. #forms #hooks #validation
- Open [**Use dedicated PSR-3 logger channels**](practice-use-dedicated-psr3-logger-channels.md) to learn about: Define one logger channel per module and inject that channel as Psr\\Log\\LoggerInterface. #drupal #logging #services
- Open [**Use display modes for entity rendering**](practice-use-display-modes-for-entity-rendering.md) to learn about: Define Drupal view and form modes in config, then render entities through the view builder. #drupal #render #display
- Open [**Use Drupal AJAX form patterns**](practice-use-drupal-ajax-form-patterns.md) to learn about: Build Drupal form AJAX with #ajax callbacks, wrapper IDs, AjaxResponse commands, and rebuilds for dynamic items. #forms #ajax #drupal
- Open [**Use Drupal Batch API with sandbox progress and a finished callback**](practice-processing-batch-api-pattern.md) to learn about: Long-running browser-initiated processing should be modeled as a Drupal batch with chunked operations, sandbox progress, user-facing messages, and a final success/error callback. #drupal #batch #processing
- Open [**Use Messenger for user-facing flash notices**](practice-use-messenger-for-user-facing-flash-notices.md) to learn about: Use the messenger service for status, warning, and error notices; use logging for backend diagnostics. #drupal #messenger #ux
- Open [**Use Paragraphs Behaviors For Type-Level Configuration**](practice-use-paragraphs-behaviors-for-type-configuration.md) to learn about: Behaviors add configurable paragraph functionality through plugins without subclassing paragraph entities. #drupal #paragraphs #plugins
- Open [**Use PHP attributes for modern Drupal plugins**](practice-use-php-attributes-for-modern-drupal-plugins.md) to learn about: Drupal 10.2+ plugins should prefer PHP attributes and modern class conventions over legacy annotations. #drupal #plugins #attributes
- Open [**Use QueueWorker plugins for background processing and typed retry behavior**](practice-processing-queueworker-plugin-pattern.md) to learn about: QueueWorker plugins are the preferred Drupal pattern for emails, API calls, synchronization, and other background work that should run through cron or manual queue runners. #drupal #queue #worker
- Open [**Use stream wrappers for files**](practice-use-stream-wrappers-for-files.md) to learn about: Use Drupal file stream wrappers and explicit collision handling instead of absolute filesystem paths. #files #storage #drupal
- Open [**Use update hooks for schema and post updates for data**](practice-use-update-hooks-for-schema-and-post-updates-for-data.md) to learn about: Schema changes belong in numbered hook_update_N functions; data changes belong in named post updates. #drupal #updates #schema
- Open [**Validate JSON-RPC business methods**](practice-validate-jsonrpc-business-methods.md) to learn about: Advanced JSON-RPC methods should validate transitions, limits, file inputs, and storage errors explicitly. #http #jsonrpc #validation #errors
- Open [**Wrap atomic custom table operations in transactions**](practice-wrap-atomic-custom-table-operations-in-transactions.md) to learn about: Use transactions when multiple custom-table writes must succeed or fail together. #drupal #database #transactions

## Components (what exists)
- Open [**Drupal entity form bases**](map-drupal-entity-form-bases.md) to learn about: Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object. #forms #entities #drupal
- Open [**Derivative plugins generate dynamic plugin instances**](map-derivative-plugins-generate-dynamic-plugin-instances.md) to learn about: A deriver creates multiple plugin definitions from one base plugin using dynamic data. #drupal #plugins #derivatives
- Open [**Advanced Drupal service patterns**](map-advanced-drupal-service-patterns.md) to learn about: Advanced service definitions cover factories, decorators, tagged collectors, HTTP clients, and service providers. #drupal #services #di
- Open [**Drupal mail flow**](map-drupal-mail-flow.md) to learn about: MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output. #drupal #mail #plugins
- Open [**AJAX command reference surface**](map-ajax-command-reference-surface.md) to learn about: Drupal AJAX responses are ordered command lists executed by Drupal.ajax on the client. #frontend #ajax #reference #drupal
- Open [**Drupal security patterns by context**](map-drupal-security-patterns-by-context.md) to learn about: Security guidance is organized around common sequences and the context-specific docs to consult. #security #patterns #drupal
- Open [**Drupal form building patterns**](map-drupal-form-building-patterns.md) to learn about: Drupal forms in these docs cover config, basic, confirm, multi-step, validation, elements, and common properties. #forms #drupal #reference
- Open [**Typed Entity wrapper structure**](map-typed-entity-wrapper-structure.md) to learn about: Business wrappers live under WrappedEntities and typed repositories expose wrapped entity loading. #drupal #entities #typed-entity
- Open [**JSON-RPC methods are attribute plugins**](map-jsonrpc-method-plugins.md) to learn about: The JSON-RPC API uses contrib method plugins declared with JsonRpcMethod and served through POST /jsonrpc. #http #jsonrpc #plugins
- Open [**Drupal menu navigation uses separate YAML files by link type**](map-drupal-menu-navigation-yaml-files.md) to learn about: Menu links, local tasks, and local actions are declared in dedicated YAML files with route-based keys. #drupal #routing #menus
- Open [**Drupal service definitions and common services**](map-drupal-service-definitions-and-common-services.md) to learn about: Module services are PHP classes registered in services.yml with injected core services and optional parameters. #drupal #services #di
- Open [**Non-form render element types**](map-non-form-render-element-types.md) to learn about: Drupal provides non-form render elements for common output structures in controllers and preprocess code. #drupal #render #elements
- Open [**Advanced Paragraphs Integrations Cover Layouts, Library Items, And Performance**](map-paragraphs-advanced-layout-library-performance.md) to learn about: Layout Paragraphs, Paragraphs Library, and helper modules expand Paragraphs editing and reuse workflows. #drupal #paragraphs #layout
- Open [**Drupal route definitions combine paths, defaults, requirements, and options**](map-drupal-route-definition-structure.md) to learn about: Routes are declared with path patterns, controller/form defaults, access requirements, and optional parameter metadata. #drupal #routing #routes
- Open [**Layout Builder Companion Modules Cover Restrictions, Styles, And Attributes**](map-layout-builder-companion-modules.md) to learn about: Related modules constrain available blocks, add UI-managed CSS classes, and expose HTML attribute configuration. #drupal #layout #modules
- Open [**MediaLibraryState defines dialog selection parameters**](map-media-library-state-vocabulary.md) to learn about: MediaLibraryState carries opener ID, allowed types, selected type, remaining slots, and opener parameters. #drupal #media #state
- Open [**Workflow API backs content moderation states and transitions**](map-processing-workflow-moderation-map.md) to learn about: Drupal workflows expose states, transitions, and custom workflow type plugins; Content Moderation uses them to model Draft, Review, Published, and permissioned transitions. #drupal #workflow #moderation
- Open [**Data storage API purposes**](map-data-storage-api-purposes.md) to learn about: Key-Value, State, Config, Cache, and TempStore each serve distinct storage needs. #storage #state #cache
- Open [**Developer tools Drush docs map**](map-developer-tools-drush-docs-map.md) to learn about: The Drush developer docs are split into command patterns, generators, and command reference files. #docs #drush #developer-tools
- Open [**Layout Builder Assembles Pages From Sections And Components**](map-layout-builder-page-assembly.md) to learn about: Layout Builder manages visual page assembly with sections, components, defaults, and optional per-entity overrides. #drupal #layout #content
- Open [**Paragraphs Provide Structured Reusable Content Components**](map-paragraphs-structured-content-composition.md) to learn about: Paragraphs use Entity Reference Revisions to compose structured components with revision-aware parent tracking. #drupal #paragraphs #content
- Open [**Search API concepts and extension points**](map-search-api-concepts-and-extension-points.md) to learn about: Search API indexes content through indexes, servers, datasources, and processors. #search #drupal #api
- Open [**Symfony events and custom events**](map-symfony-events-and-custom-events.md) to learn about: Drupal event subscribers listen to kernel or custom events through EventSubscriberInterface services. #drupal #events #services
- Open [**Drupal Migrate API Reference**](map-drupal-migrate-api-reference.md) to learn about: Use migration YAML, process plugins, source plugins, and Drush commands to define and run Drupal migrations. #drupal #migration #migrate #drush
- Open [**Media Library uses state, openers, and add forms**](map-media-library-three-component-architecture.md) to learn about: Media Library selection is organized around MediaLibraryState, opener services, and AddFormBase implementations. #drupal #media #architecture
- Open [**Private and Shared TempStore roles**](map-private-and-shared-tempstore-roles.md) to learn about: PrivateTempStore isolates per-user drafts; SharedTempStore supports shared keys with ownership metadata. #tempstore #storage #forms
- Open [**Drupal form element types reference**](map-drupal-form-element-types-reference.md) to learn about: Form API element types map #type values to render element classes, key properties, defaults, and gotchas. #forms #elements #reference
- Open [**Drupal theme system entry points**](map-drupal-theme-system-entry-points.md) to learn about: Theme hooks, templates, preprocess functions, suggestions, and Twig helpers shape Drupal output. #drupal #theme #twig
- Open [**Extensibility docs cover hooks, events, tokens, and updates**](map-extensibility-docs-map.md) to learn about: The docs/extensibility folder is organized around Drupal extension mechanisms and links related detail pages together. #docs #extensibility #map
- Open [**REST resources are ResourceBase plugins**](map-rest-resource-plugins.md) to learn about: Custom REST endpoints live as Plugin\\rest\\resource classes with RestResource attributes and resource config. #http #rest #plugins
- Open [**Single Directory Components structure**](map-single-directory-components-structure.md) to learn about: Drupal SDC components group metadata, Twig, CSS, and JavaScript in one component directory. #drupal #sdc #components

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #plugins
- Open [**Derivative plugins generate dynamic plugin instances**](map-derivative-plugins-generate-dynamic-plugin-instances.md) — A deriver creates multiple plugin definitions from one base plugin using dynamic data.
- Open [**Drupal mail flow**](map-drupal-mail-flow.md) — MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output.
- Open [**Alter and debug plugin definitions through managers**](practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.
### #cache
- Open [**Use cacheable dependencies for render cache metadata**](practice-use-cacheable-dependencies-for-render-cache-metadata.md) — Attach cache metadata from entities/config with Drupal helpers instead of manually building cache tags.
- Open [**Vary render cache with cache contexts**](practice-vary-render-cache-with-cache-contexts.md) — Use cache contexts to vary rendered output by user, permissions, route, URL, language, theme, or query args.
- Open [**Build render arrays with cache metadata**](practice-build-render-arrays-with-cache-metadata.md) — Attach cache tags, contexts, max-age, libraries, and lazy builders directly to Drupal render arrays.
### #entities
- Open [**Use Database API only for custom tables**](practice-use-database-api-only-for-custom-tables.md) — Use Entity API for content and reserve direct Database API queries for custom or audit tables.
- Open [**Use Database API sparingly for custom tables**](practice-use-database-api-sparingly-for-custom-tables.md) — Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs.
- Open [**Prefer Entity Query for entity retrieval**](practice-prefer-entity-query-for-entity-retrieval.md) — Use Entity Query for normal entity reads and avoid direct Database API for entity operations.
### #forms
- Open [**Define schema for Drupal configuration**](practice-define-schema-for-drupal-configuration.md) — Every module configuration object needs schema; modern config forms can bind fields with #config_target.
- Open [**Prefer #config_target for settings forms**](practice-prefer-config-target-for-settings-forms.md) — Use #config_target on Drupal 10.2+ settings forms instead of manual config load/save boilerplate.
- Open [**Extend AddFormBase for custom Media Library add forms**](practice-extend-addformbase-for-custom-media-add-forms.md) — Custom Media Library add forms should extend AddFormBase and build their input UI through buildInputElement().
### #security
- Open [**Secure custom table queries**](practice-secure-custom-table-queries.md) — Use placeholders, escape LIKE patterns, and whitelist dynamic table names in custom SQL work.
- Open [**Drupal security patterns by context**](map-drupal-security-patterns-by-context.md) — Security guidance is organized around common sequences and the context-specific docs to consult.
- Open [**Avoid common security vulnerability patterns**](practice-avoid-common-security-vulnerabilities.md) — Prefer safe APIs, allowlists, generic errors, and cryptographic randomness for common risk areas.
### #http
- Open [**JSON-RPC methods are attribute plugins**](map-jsonrpc-method-plugins.md) — The JSON-RPC API uses contrib method plugins declared with JsonRpcMethod and served through POST /jsonrpc.
- Open [**Test JSON-RPC through handler and HTTP paths**](practice-test-jsonrpc-through-handler-and-http.md) — JSON-RPC testing covers kernel handler calls, functional HTTP calls, mocks, batch requests, and error responses.
- Open [**Guard JSON-RPC entity CRUD access**](practice-guard-jsonrpc-entity-crud-access.md) — JSON-RPC CRUD methods should combine permission attributes, runtime entity checks, accessCheck, and current-user checks.
### #routing
- Open [**Use tagged breadcrumb builders for route-specific breadcrumb trails**](practice-custom-breadcrumb-builders.md) — Create a breadcrumb builder when the route needs a trail that differs from the URL-derived default.
- Open [**Drupal menu navigation uses separate YAML files by link type**](map-drupal-menu-navigation-yaml-files.md) — Menu links, local tasks, and local actions are declared in dedicated YAML files with route-based keys.
- Open [**Drupal route definitions combine paths, defaults, requirements, and options**](map-drupal-route-definition-structure.md) — Routes are declared with path patterns, controller/form defaults, access requirements, and optional parameter metadata.
### #services
- Open [**Advanced Drupal service patterns**](map-advanced-drupal-service-patterns.md) — Advanced service definitions cover factories, decorators, tagged collectors, HTTP clients, and service providers.
- Open [**Drupal service definitions and common services**](map-drupal-service-definitions-and-common-services.md) — Module services are PHP classes registered in services.yml with injected core services and optional parameters.
- Open [**Cache computed service data with CacheBackendInterface**](practice-cache-computed-service-data-with-cachebackendinterface.md) — Use CacheBackendInterface in services for computed data and attach tags for invalidation across bins.
### #access
- Open [**Include cache metadata in entity access handlers**](practice-include-cache-metadata-in-entity-access-handlers.md) — Entity access results need cache metadata such as permission, user, or entity cache contexts/tags.
- Open [**Define route access with explicit requirements and cache metadata**](practice-route-access-requirements-and-cacheability.md) — Use YAML requirements or tagged custom checkers, and always cache AccessResult decisions correctly.
- Open [**Return cacheable AccessResult decisions**](practice-return-cacheable-access-results.md) — Drupal access checks must return AccessResult objects with the right cache metadata.
### #render
- Open [**Build render arrays with cache metadata**](practice-build-render-arrays-with-cache-metadata.md) — Attach cache tags, contexts, max-age, libraries, and lazy builders directly to Drupal render arrays.
- Open [**Use cacheable dependencies for render cache metadata**](practice-use-cacheable-dependencies-for-render-cache-metadata.md) — Attach cache metadata from entities/config with Drupal helpers instead of manually building cache tags.
- Open [**Vary render cache with cache contexts**](practice-vary-render-cache-with-cache-contexts.md) — Use cache contexts to vary rendered output by user, permissions, route, URL, language, theme, or query args.
### #drush
- Open [**Define Drush commands with attributes and autowiring**](practice-define-drush-commands-with-attributes-and-autowiring.md) — Custom Drush commands should use PHP attributes, AutowireTrait, constructor injection, and Symfony IO.
- Open [**Handle Drush command IO and failures explicitly**](practice-handle-drush-command-io-and-failures-explicitly.md) — Use Drush output helpers, confirmations, structured rows, batches, validation hooks, and exit codes for CLI behavior.
- Open [**Use autowired PHP attribute Drush commands**](practice-use-autowired-attribute-drush-commands.md) — Build custom Drush 13 commands with PHP 8 attributes, AutowireTrait, and constructor injection.
### #layout
- Open [**Account For Layout Builder Override Side Effects**](practice-account-for-layout-builder-overrides.md) — Per-entity overrides, inline blocks, and override edits have cache, entity, and revision consequences.
- Open [**Define layout plugins by complexity**](practice-define-layout-plugins-by-complexity.md) — Use YAML-only layout plugins for simple regions and PHP layout classes for configurable layouts.
- Open [**Advanced Paragraphs Integrations Cover Layouts, Library Items, And Performance**](map-paragraphs-advanced-layout-library-performance.md) — Layout Paragraphs, Paragraphs Library, and helper modules expand Paragraphs editing and reuse workflows.
### #storage
- Open [**Clean up TempStore data after workflows**](practice-clean-up-tempstore-data-after-workflows.md) — Delete TempStore entries at the final form step or controller action and handle lock failures.
- Open [**Private and Shared TempStore roles**](map-private-and-shared-tempstore-roles.md) — PrivateTempStore isolates per-user drafts; SharedTempStore supports shared keys with ownership metadata.
- Open [**Data storage API purposes**](map-data-storage-api-purposes.md) — Key-Value, State, Config, Cache, and TempStore each serve distinct storage needs.
### #workflow
- Open [**Workflow API backs content moderation states and transitions**](map-processing-workflow-moderation-map.md) — Drupal workflows expose states, transitions, and custom workflow type plugins; Content Moderation uses them to model Draft, Review, Published, and permissioned transitions.
- Open [**Treat moderation_state as the source of truth for moderated content**](practice-processing-content-moderation-workflow-guidance.md) — Content Moderation extends Drupal publishing with workflow states and transitions; code should use moderation services and transition validation rather than setting status directly.
- Open [**Keep debugging code out of commits**](practice-keep-debugging-code-out-of-commits.md) — Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing.
### #config
- Open [**Define schema for Drupal configuration**](practice-define-schema-for-drupal-configuration.md) — Every module configuration object needs schema; modern config forms can bind fields with #config_target.
- Open [**Prefer #config_target for settings forms**](practice-prefer-config-target-for-settings-forms.md) — Use #config_target on Drupal 10.2+ settings forms instead of manual config load/save boilerplate.
- Open [**Define config entity export and prefix explicitly**](practice-define-config-entity-export-and-prefix-explicitly.md) — Config entities need config_export for persisted properties and config_prefix for generated filenames.
### #database
- Open [**Use Database API only for custom tables**](practice-use-database-api-only-for-custom-tables.md) — Use Entity API for content and reserve direct Database API queries for custom or audit tables.
- Open [**Use Database API sparingly for custom tables**](practice-use-database-api-sparingly-for-custom-tables.md) — Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs.
- Open [**Secure custom table queries**](practice-secure-custom-table-queries.md) — Use placeholders, escape LIKE patterns, and whitelist dynamic table names in custom SQL work.
### #hooks
- Open [**Choose entity lifecycle hooks by save phase**](practice-choose-entity-lifecycle-hooks-by-save-phase.md) — Use the entity lifecycle hook that matches the phase: presave, insert/update, postsave, delete, load, or view.
- Open [**Reserve procedural hooks for required cases**](practice-only-procedural-hooks-for-container-unavailable-cases.md) — Most hooks should be OOP, but install/update/schema/requirements/theme and a few early hooks remain procedural.
- Open [**Use subscribers for events, OOP hooks for entities**](practice-use-event-subscribers-for-events-not-entity-operations.md) — Event subscribers are documented for kernel, config, and custom events; entity operations should use OOP hooks instead.
### #jsonrpc
- Open [**JSON-RPC methods are attribute plugins**](map-jsonrpc-method-plugins.md) — The JSON-RPC API uses contrib method plugins declared with JsonRpcMethod and served through POST /jsonrpc.
- Open [**Test JSON-RPC through handler and HTTP paths**](practice-test-jsonrpc-through-handler-and-http.md) — JSON-RPC testing covers kernel handler calls, functional HTTP calls, mocks, batch requests, and error responses.
- Open [**Guard JSON-RPC entity CRUD access**](practice-guard-jsonrpc-entity-crud-access.md) — JSON-RPC CRUD methods should combine permission attributes, runtime entity checks, accessCheck, and current-user checks.
### #media
- Open [**Extend AddFormBase for custom Media Library add forms**](practice-extend-addformbase-for-custom-media-add-forms.md) — Custom Media Library add forms should extend AddFormBase and build their input UI through buildInputElement().
- Open [**Handle Entity Browser integration gotchas**](practice-entity-browser-integration-gotchas.md) — Entity Browser integrations need the right Views field, modal library, selection mode, access checks, and annotations.
- Open [**MediaLibraryState defines dialog selection parameters**](map-media-library-state-vocabulary.md) — MediaLibraryState carries opener ID, allowed types, selected type, remaining slots, and opener parameters.
### #paragraphs
- Open [**Advanced Paragraphs Integrations Cover Layouts, Library Items, And Performance**](map-paragraphs-advanced-layout-library-performance.md) — Layout Paragraphs, Paragraphs Library, and helper modules expand Paragraphs editing and reuse workflows.
- Open [**Paragraphs Provide Structured Reusable Content Components**](map-paragraphs-structured-content-composition.md) — Paragraphs use Entity Reference Revisions to compose structured components with revision-aware parent tracking.
- Open [**Keep Paragraphs Depth And Revisions Under Control**](practice-keep-paragraphs-depth-and-revisions-under-control.md) — Limit nesting, manage ERR revision growth, and choose widget modes that keep large paragraph forms usable.
### #queue
- Open [**Delete queue items only after successful processing**](practice-processing-queue-api-operations.md) — Manual Drupal queue code must explicitly create, claim, delete, release, and count items; claimed items remain until deleted or released.
- Open [**Keep cron hooks bounded and state-gated**](practice-processing-cron-basic-patterns.md) — Drupal cron work should be short, interval-gated with State API, and delegated to queue workers for long-running or high-volume processing.
- Open [**Match queue worker ID to queue name**](practice-match-queue-worker-id-to-queue-name.md) — QueueWorker plugin IDs must match the queue names used when adding items.
### #state
- Open [**Data storage API purposes**](map-data-storage-api-purposes.md) — Key-Value, State, Config, Cache, and TempStore each serve distinct storage needs.
- Open [**Do not write directly to the state key-value collection**](practice-do-not-write-directly-to-state-key-value-collection.md) — Use the State API for state data and reserve direct Key-Value access for separate collections.
- Open [**Keep runtime storage out of config export**](practice-keep-runtime-storage-out-of-config-export.md) — Store environment-specific runtime values in State or Key-Value, not exported Config.
### #testing
- Open [**Choose the lightest Drupal test type that covers the behavior**](practice-quality-choose-lightest-drupal-test-type.md) — Drupal tests range from fast isolated unit tests through kernel, functional, and FunctionalJS tests; select the least integrated option that still verifies the behavior.
- Open [**Use Drupal functional tests for browser-level behavior**](practice-quality-drupal-functional-browser-tests.md) — Functional tests should cover page rendering, form submissions, and access control with BrowserTestBase, reserving WebDriverTestBase for JavaScript-dependent behavior.
- Open [**Use unit tests for pure logic and kernel tests for Drupal integration**](practice-quality-drupal-unit-kernel-tests.md) — UnitTestCase is the default for isolated logic, while KernelTestBase is appropriate when entities, config, services, schemas, or a database are part of the behavior.
### #validation
- Open [**Validate input server-side before use**](practice-validate-input-server-side.md) — Validate request, entity, and form data for type, format, range, and length before processing.
- Open [**Place custom validation constraints by convention**](practice-place-custom-validation-constraints-by-convention.md) — Custom entity validation constraints and validators belong in Plugin/Validation/Constraint with matching names.
- Open [**Target form alters precisely**](practice-target-form-alters-precisely.md) — Prefer specific or base form alter hooks, use #states only for client-side behavior, and validate on the server.
### #ajax
- Open [**AJAX command reference surface**](map-ajax-command-reference-surface.md) — Drupal AJAX responses are ordered command lists executed by Drupal.ajax on the client.
- Open [**Use Drupal.ajax for dynamic interactions**](practice-use-drupal-ajax-for-dynamic-interactions.md) — Use Drupal.ajax and AjaxResponse commands instead of raw fetch or custom JSON endpoints.
- Open [**Use Drupal AJAX form patterns**](practice-use-drupal-ajax-form-patterns.md) — Build Drupal form AJAX with #ajax callbacks, wrapper IDs, AjaxResponse commands, and rebuilds for dynamic items.
### #api
- Open [**Delete queue items only after successful processing**](practice-processing-queue-api-operations.md) — Manual Drupal queue code must explicitly create, claim, delete, release, and count items; claimed items remain until deleted or released.
- Open [**Search API concepts and extension points**](map-search-api-concepts-and-extension-points.md) — Search API indexes content through indexes, servers, datasources, and processors.
- Open [**Use JSON-RPC for business logic**](practice-use-jsonrpc-for-business-logic.md) — JSON-RPC is the documented fit for actions, workflows, batch operations, and other non-REST business behavior.
### #fields
- Open [**Build field formatters as render-array producers**](practice-field-formatters-return-render-arrays.md) — Field formatters live under Plugin\\Field\\FieldFormatter and return render arrays from viewElements().
- Open [**Build field widgets as field form elements**](practice-field-widgets-build-form-elements.md) — Field widgets live under Plugin\\Field\\FieldWidget and add child form elements in formElement().
- Open [**Define field type storage and typed data separately**](practice-field-types-define-storage-and-typed-data.md) — Field types use schema() for database columns and propertyDefinitions() for typed data properties.
### #frontend
- Open [**Use Drupal.ajax for dynamic interactions**](practice-use-drupal-ajax-for-dynamic-interactions.md) — Use Drupal.ajax and AjaxResponse commands instead of raw fetch or custom JSON endpoints.
- Open [**AJAX command reference surface**](map-ajax-command-reference-surface.md) — Drupal AJAX responses are ordered command lists executed by Drupal.ajax on the client.
- Open [**Attach frontend assets through libraries**](practice-attach-frontend-assets-through-libraries.md) — Define CSS and JS in libraries.yml and attach libraries where needed instead of loading assets globally.
### #quality
- Open [**Choose the lightest Drupal test type that covers the behavior**](practice-quality-choose-lightest-drupal-test-type.md) — Drupal tests range from fast isolated unit tests through kernel, functional, and FunctionalJS tests; select the least integrated option that still verifies the behavior.
- Open [**Use Drupal functional tests for browser-level behavior**](practice-quality-drupal-functional-browser-tests.md) — Functional tests should cover page rendering, form submissions, and access control with BrowserTestBase, reserving WebDriverTestBase for JavaScript-dependent behavior.
- Open [**Use unit tests for pure logic and kernel tests for Drupal integration**](practice-quality-drupal-unit-kernel-tests.md) — UnitTestCase is the default for isolated logic, while KernelTestBase is appropriate when entities, config, services, schemas, or a database are part of the behavior.
### #seo
- Open [**Drupal Field Group custom formatters**](practice-drupal-field-group-formatters-use-annotations.md) — Field Group extensions define formatter plugins with @FieldGroupFormatter annotations and store groups in entity display configuration.
- Open [**Drupal Metatag custom tags and groups**](practice-drupal-metatag-plugins-use-annotated-tags-and-groups.md) — Metatag extensions add annotated tag and group plugins, then read effective tags through the metatag.manager service.
- Open [**Drupal Redirect entities and events**](practice-drupal-redirect-programmatic-redirects-and-events.md) — Redirect stores redirects as entities, expects slashless source paths, and exposes lookup and redirect-event extension points.
### #commands
- Open [**Define Drush commands with attributes and autowiring**](practice-define-drush-commands-with-attributes-and-autowiring.md) — Custom Drush commands should use PHP attributes, AutowireTrait, constructor injection, and Symfony IO.
- Open [**Handle Drush command IO and failures explicitly**](practice-handle-drush-command-io-and-failures-explicitly.md) — Use Drush output helpers, confirmations, structured rows, batches, validation hooks, and exit codes for CLI behavior.
- Open [**Use autowired PHP attribute Drush commands**](practice-use-autowired-attribute-drush-commands.md) — Build custom Drush 13 commands with PHP 8 attributes, AutowireTrait, and constructor injection.
### #content
- Open [**Align content entity keys with base fields**](practice-align-content-entity-keys-with-base-fields.md) — Content entity entity_keys must match base field names, with revision and langcode keys added when enabled.
- Open [**Layout Builder Assembles Pages From Sections And Components**](map-layout-builder-page-assembly.md) — Layout Builder manages visual page assembly with sections, components, defaults, and optional per-entity overrides.
- Open [**Paragraphs Provide Structured Reusable Content Components**](map-paragraphs-structured-content-composition.md) — Paragraphs use Entity Reference Revisions to compose structured components with revision-aware parent tracking.
### #di
- Open [**Advanced Drupal service patterns**](map-advanced-drupal-service-patterns.md) — Advanced service definitions cover factories, decorators, tagged collectors, HTTP clients, and service providers.
- Open [**Drupal service definitions and common services**](map-drupal-service-definitions-and-common-services.md) — Module services are PHP classes registered in services.yml with injected core services and optional parameters.
- Open [**Use autowired PHP attribute Drush commands**](practice-use-autowired-attribute-drush-commands.md) — Build custom Drush 13 commands with PHP 8 attributes, AutowireTrait, and constructor injection.
### #javascript
- Open [**Use Drupal.ajax for dynamic interactions**](practice-use-drupal-ajax-for-dynamic-interactions.md) — Use Drupal.ajax and AjaxResponse commands instead of raw fetch or custom JSON endpoints.
- Open [**Write idempotent Drupal JavaScript behaviors**](practice-write-idempotent-drupal-javascript-behaviors.md) — Use drupalSettings, behaviors, once(), and narrow settings data for Drupal JavaScript integration.
- Open [**Keep translation strings extractable and placeholder-safe**](practice-translation-strings-must-be-extractable.md) — Use Drupal translation APIs with literal source strings, placeholders, and plural forms; do not concatenate translated text or pass variables as the source string.
### #reference
- Open [**Drupal form building patterns**](map-drupal-form-building-patterns.md) — Drupal forms in these docs cover config, basic, confirm, multi-step, validation, elements, and common properties.
- Open [**Drupal form element types reference**](map-drupal-form-element-types-reference.md) — Form API element types map #type values to render element classes, key properties, defaults, and gotchas.
- Open [**AJAX command reference surface**](map-ajax-command-reference-surface.md) — Drupal AJAX responses are ordered command lists executed by Drupal.ajax on the client.
### #architecture
- Open [**Keep business logic out of entity classes**](practice-keep-business-logic-out-of-entity-classes.md) — Put entity behavior in Typed Entity wrappers, not in entity classes or direct field mutations.
- Open [**Media Library uses state, openers, and add forms**](map-media-library-three-component-architecture.md) — Media Library selection is organized around MediaLibraryState, opener services, and AddFormBase implementations.
### #breadcrumbs
- Open [**Use tagged breadcrumb builders for route-specific breadcrumb trails**](practice-custom-breadcrumb-builders.md) — Create a breadcrumb builder when the route needs a trail that differs from the URL-derived default.
- Open [**Register parameter converters and breadcrumb builders with explicit tags**](practice-parameter-converters-and-breadcrumb-priority.md) — Custom converters and breadcrumbs rely on explicit service tags, priority ordering, and cache metadata.
### #cron
- Open [**Keep cron hooks bounded and state-gated**](practice-processing-cron-basic-patterns.md) — Drupal cron work should be short, interval-gated with State API, and delegated to queue workers for long-running or high-volume processing.
- Open [**Use locks, resumable state, and success-only timestamps for advanced cron work**](practice-processing-cron-advanced-safety.md) — Advanced cron jobs should prevent overlap, preserve retry behavior, and save resumable progress for long operations.
### #crud
- Open [**Guard JSON-RPC entity CRUD access**](practice-guard-jsonrpc-entity-crud-access.md) — JSON-RPC CRUD methods should combine permission attributes, runtime entity checks, accessCheck, and current-user checks.
- Open [**Use JSON:API for entity CRUD**](practice-use-jsonapi-for-entity-crud.md) — JSON:API exposes entity collection, item, relationship, upload, filter, include, sort, and pagination endpoints.
### #debugging
- Open [**Alter and debug plugin definitions through managers**](practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.
- Open [**Keep debugging code out of commits**](practice-keep-debugging-code-out-of-commits.md) — Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing.
### #docs
- Open [**Developer tools Drush docs map**](map-developer-tools-drush-docs-map.md) — The Drush developer docs are split into command patterns, generators, and command reference files.
- Open [**Extensibility docs cover hooks, events, tokens, and updates**](map-extensibility-docs-map.md) — The docs/extensibility folder is organized around Drupal extension mechanisms and links related detail pages together.
### #elements
- Open [**Non-form render element types**](map-non-form-render-element-types.md) — Drupal provides non-form render elements for common output structures in controllers and preprocess code.
- Open [**Drupal form element types reference**](map-drupal-form-element-types-reference.md) — Form API element types map #type values to render element classes, key properties, defaults, and gotchas.
### #events
- Open [**Symfony events and custom events**](map-symfony-events-and-custom-events.md) — Drupal event subscribers listen to kernel or custom events through EventSubscriberInterface services.
- Open [**Use subscribers for events, OOP hooks for entities**](practice-use-event-subscribers-for-events-not-entity-operations.md) — Event subscribers are documented for kernel, config, and custom events; entity operations should use OOP hooks instead.
### #files
- Open [**Handle uploads and private files securely**](practice-handle-files-securely.md) — Validate uploads server-side, store sensitive files privately, and gate private downloads.
- Open [**Use stream wrappers for files**](practice-use-stream-wrappers-for-files.md) — Use Drupal file stream wrappers and explicit collision handling instead of absolute filesystem paths.
### #gotcha
- Open [**Account for render cache max-age gotchas**](practice-account-for-render-cache-max-age-gotchas.md) — Treat render cache max-age as restrictive and unreliable for some anonymous/page-cache cases.
- Open [**Handle Search API indexing gotchas**](practice-handle-search-api-indexing-gotchas.md) — Clear indexes after field changes, order processors carefully, and use Views for search pages.
### #i18n
- Open [**Check content entity translations before loading them**](practice-content-translation-check-existing-translation-first.md) — When working with translated content entities, check translation availability before calling getTranslation(), use getUntranslated() for the default language, and remember that field translation is configured per field.
- Open [**Keep translation strings extractable and placeholder-safe**](practice-translation-strings-must-be-extractable.md) — Use Drupal translation APIs with literal source strings, placeholders, and plural forms; do not concatenate translated text or pass variables as the source string.
### #moderation
- Open [**Workflow API backs content moderation states and transitions**](map-processing-workflow-moderation-map.md) — Drupal workflows expose states, transitions, and custom workflow type plugins; Content Moderation uses them to model Draft, Review, Published, and permissioned transitions.
- Open [**Treat moderation_state as the source of truth for moderated content**](practice-processing-content-moderation-workflow-guidance.md) — Content Moderation extends Drupal publishing with workflow states and transitions; code should use moderation services and transition validation rather than setting status directly.
### #modules
- Open [**Layout Builder Companion Modules Cover Restrictions, Styles, And Attributes**](map-layout-builder-companion-modules.md) — Related modules constrain available blocks, add UI-managed CSS classes, and expose HTML attribute configuration.
- Open [**Keep install hooks for install-time work**](practice-keep-install-hooks-for-install-time-work.md) — Use module install hooks for install/uninstall tasks, non-entity schemas, and requirements, not later schema updates.
### #performance
- Open [**Batch-load entities after querying IDs**](practice-batch-load-entities-after-querying-ids.md) — Query IDs first, then call loadMultiple instead of loading each entity one by one.
- Open [**Keep Paragraphs Depth And Revisions Under Control**](practice-keep-paragraphs-depth-and-revisions-under-control.md) — Limit nesting, manage ERR revision growth, and choose widget modes that keep large paragraph forms usable.
### #php
- Open [**Use autowired PHP attribute Drush commands**](practice-use-autowired-attribute-drush-commands.md) — Build custom Drush 13 commands with PHP 8 attributes, AutowireTrait, and constructor injection.
- Open [**Prefer final classes and promoted readonly dependencies**](practice-prefer-final-classes-and-promoted-readonly-dependencies.md) — Default Drupal classes to final and use constructor property promotion with readonly injected dependencies.
### #phpunit
- Open [**Choose the lightest Drupal test type that covers the behavior**](practice-quality-choose-lightest-drupal-test-type.md) — Drupal tests range from fast isolated unit tests through kernel, functional, and FunctionalJS tests; select the least integrated option that still verifies the behavior.
- Open [**Scope tests to the module**](practice-scope-tests-to-the-module.md) — Run PHPUnit against the relevant module path and avoid running the entire test collection.
### #queries
- Open [**Call accessCheck on entity queries**](practice-call-access-check-on-entity-queries.md) — Every entity query must set accessCheck explicitly in Drupal 10 and later.
- Open [**Prefer Entity Query for entity retrieval**](practice-prefer-entity-query-for-entity-retrieval.md) — Use Entity Query for normal entity reads and avoid direct Database API for entity operations.
### #search
- Open [**Search API concepts and extension points**](map-search-api-concepts-and-extension-points.md) — Search API indexes content through indexes, servers, datasources, and processors.
- Open [**Handle Search API indexing gotchas**](practice-handle-search-api-indexing-gotchas.md) — Clear indexes after field changes, order processors carefully, and use Views for search pages.
### #tempstore
- Open [**Clean up TempStore data after workflows**](practice-clean-up-tempstore-data-after-workflows.md) — Delete TempStore entries at the final form step or controller action and handle lock failures.
- Open [**Private and Shared TempStore roles**](map-private-and-shared-tempstore-roles.md) — PrivateTempStore isolates per-user drafts; SharedTempStore supports shared keys with ownership metadata.
### #tokens
- Open [**Carry cache metadata through token replacements**](practice-token-replacements-must-carry-cache-metadata.md) — Token replacement hooks and token service usage must attach bubbleable metadata for every data source used.
- Open [**Define and replace custom tokens with bubbleable metadata**](practice-define-and-replace-custom-tokens-with-bubbleable-metadata.md) — Custom token types and replacements should declare token info, handle chained tokens, and add cache dependencies.
### #typed-entity
- Open [**Typed Entity wrapper structure**](map-typed-entity-wrapper-structure.md) — Business wrappers live under WrappedEntities and typed repositories expose wrapped entity loading.
- Open [**Keep business logic out of entity classes**](practice-keep-business-logic-out-of-entity-classes.md) — Put entity behavior in Typed Entity wrappers, not in entity classes or direct field mutations.
### #actions
- Open [**Define action plugins with access and type scope**](practice-define-action-plugins-with-access-and-type-scope.md) — Action plugins live under Plugin\\Action and should declare scope, access behavior, and configuration as needed.
### #aliases
- Open [**Drupal Pathauto alias generation**](practice-drupal-pathauto-alias-types-patterns-and-generation.md) — Pathauto provides annotated alias type plugins, tokenized alias patterns, and services for generating or updating entity aliases.
### #assets
- Open [**Attach frontend assets through libraries**](practice-attach-frontend-assets-through-libraries.md) — Define CSS and JS in libraries.yml and attach libraries where needed instead of loading assets globally.
### #attributes
- Open [**Use PHP attributes for modern Drupal plugins**](practice-use-php-attributes-for-modern-drupal-plugins.md) — Drupal 10.2+ plugins should prefer PHP attributes and modern class conventions over legacy annotations.
### #auth
- Open [**Secure every API endpoint before processing**](practice-secure-api-endpoints.md) — Authenticate, authorize, validate, rate limit, and avoid exposing internals in API responses.
### #batch
- Open [**Use Drupal Batch API with sandbox progress and a finished callback**](practice-processing-batch-api-pattern.md) — Long-running browser-initiated processing should be modeled as a Drupal batch with chunked operations, sandbox progress, user-facing messages, and a final success/error callback.
### #behaviors
- Open [**Write idempotent Drupal JavaScript behaviors**](practice-write-idempotent-drupal-javascript-behaviors.md) — Use drupalSettings, behaviors, once(), and narrow settings data for Drupal JavaScript integration.
### #blocks
- Open [**Set cache metadata on block plugin builds**](practice-set-cache-metadata-on-block-plugin-builds.md) — Block plugin build arrays need explicit cache metadata because Drupal caches blocks aggressively.
### #checklist
- Open [**Run the Drupal security checklist before deploying**](practice-run-the-drupal-security-checklist-before-deploying.md) — Verify validation, database safety, escaping, access control, files, secrets, APIs, and infra.
### #classes
- Open [**Prefer final classes and promoted readonly dependencies**](practice-prefer-final-classes-and-promoted-readonly-dependencies.md) — Default Drupal classes to final and use constructor property promotion with readonly injected dependencies.
### #cli
- Open [**Handle Drush command IO and failures explicitly**](practice-handle-drush-command-io-and-failures-explicitly.md) — Use Drush output helpers, confirmations, structured rows, batches, validation hooks, and exit codes for CLI behavior.
### #compatibility
- Open [**Reserve procedural hooks for required cases**](practice-only-procedural-hooks-for-container-unavailable-cases.md) — Most hooks should be OOP, but install/update/schema/requirements/theme and a few early hooks remain procedural.
### #components
- Open [**Single Directory Components structure**](map-single-directory-components-structure.md) — Drupal SDC components group metadata, Twig, CSS, and JavaScript in one component directory.
### #computed
- Open [**Implement computed fields as access-time item lists**](practice-computed-fields-are-computed-on-access.md) — Computed Drupal fields use ComputedItemListTrait, setComputed(TRUE), and are not stored in the database.
### #conditions
- Open [**Handle negation in condition plugins**](practice-handle-negation-in-condition-plugins.md) — Condition plugin evaluate methods should account for negation and return summaries as TranslatableMarkup.
### #configuration
- Open [**Build configurable and context-aware plugins with cache contexts**](practice-build-configurable-and-context-aware-plugins-with-cache-contexts.md) — Plugin configuration forms and context-aware plugins should save settings and return context-sensitive cache metadata.
### #ddev
- Open [**Keep debugging code out of commits**](practice-keep-debugging-code-out-of-commits.md) — Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing.
### #dependency-injection
- Open [**Inject services into plugins with ContainerFactoryPluginInterface**](practice-inject-services-into-plugins-with-container-factory.md) — Plugins that need services should use create() and constructor injection instead of static Drupal service calls.
### #deployment
- Open [**Run the Drupal security checklist before deploying**](practice-run-the-drupal-security-checklist-before-deploying.md) — Verify validation, database safety, escaping, access control, files, secrets, APIs, and infra.
### #derivatives
- Open [**Derivative plugins generate dynamic plugin instances**](map-derivative-plugins-generate-dynamic-plugin-instances.md) — A deriver creates multiple plugin definitions from one base plugin using dynamic data.
### #developer-tools
- Open [**Developer tools Drush docs map**](map-developer-tools-drush-docs-map.md) — The Drush developer docs are split into command patterns, generators, and command reference files.
### #dialogs
- Open [**Open Drupal modal routes with AJAX dialog links and commands**](practice-modal-dialog-route-links.md) — Attach the dialog AJAX library and use valid dialog attributes or AJAX commands for modal behavior.
### #display
- Open [**Use display modes for entity rendering**](practice-use-display-modes-for-entity-rendering.md) — Define Drupal view and form modes in config, then render entities through the view builder.
### #entity-browser
- Open [**Handle Entity Browser integration gotchas**](practice-entity-browser-integration-gotchas.md) — Entity Browser integrations need the right Views field, modal library, selection mode, access checks, and annotations.
### #errors
- Open [**Validate JSON-RPC business methods**](practice-validate-jsonrpc-business-methods.md) — Advanced JSON-RPC methods should validate transitions, limits, file inputs, and storage errors explicitly.
### #extensibility
- Open [**Extensibility docs cover hooks, events, tokens, and updates**](map-extensibility-docs-map.md) — The docs/extensibility folder is organized around Drupal extension mechanisms and links related detail pages together.
### #field-group
- Open [**Drupal Field Group custom formatters**](practice-drupal-field-group-formatters-use-annotations.md) — Field Group extensions define formatter plugins with @FieldGroupFormatter annotations and store groups in entity display configuration.
### #formatters
- Open [**Build field formatters as render-array producers**](practice-field-formatters-return-render-arrays.md) — Field formatters live under Plugin\\Field\\FieldFormatter and return render arrays from viewElements().
### #functional
- Open [**Use Drupal functional tests for browser-level behavior**](practice-quality-drupal-functional-browser-tests.md) — Functional tests should cover page rendering, form submissions, and access control with BrowserTestBase, reserving WebDriverTestBase for JavaScript-dependent behavior.
### #generators
- Open [**Review and finish generated Drupal code**](practice-review-and-finish-generated-drupal-code.md) — After Drush generation, review files, add logic and dependencies, rebuild cache, add tests, and run quality tools.
### #install
- Open [**Keep install hooks for install-time work**](practice-keep-install-hooks-for-install-time-work.md) — Use module install hooks for install/uninstall tasks, non-entity schemas, and requirements, not later schema updates.
### #invalidation
- Open [**Tag cache entries for targeted invalidation**](practice-tag-cache-entries-for-targeted-invalidation.md) — Attach cache tags that identify the data a cache item depends on so updates invalidate the right entries.
### #jsonapi
- Open [**Use JSON:API for entity CRUD**](practice-use-jsonapi-for-entity-crud.md) — JSON:API exposes entity collection, item, relationship, upload, filter, include, sort, and pagination endpoints.
### #kernel
- Open [**Use unit tests for pure logic and kernel tests for Drupal integration**](practice-quality-drupal-unit-kernel-tests.md) — UnitTestCase is the default for isolated logic, while KernelTestBase is appropriate when entities, config, services, schemas, or a database are part of the behavior.
### #keyvalue
- Open [**Do not write directly to the state key-value collection**](practice-do-not-write-directly-to-state-key-value-collection.md) — Use the State API for state data and reserve direct Key-Value access for separate collections.
### #libraries
- Open [**Attach frontend assets through libraries**](practice-attach-frontend-assets-through-libraries.md) — Define CSS and JS in libraries.yml and attach libraries where needed instead of loading assets globally.
### #links
- Open [**Generate Drupal URLs with Url and Link APIs**](practice-generate-drupal-urls-with-url-and-link-objects.md) — Use Url, Link, entity helpers, or injected generators instead of bare path strings.
### #locks
- Open [**Use locks, resumable state, and success-only timestamps for advanced cron work**](practice-processing-cron-advanced-safety.md) — Advanced cron jobs should prevent overlap, preserve retry behavior, and save resumable progress for long operations.
### #logging
- Open [**Use dedicated PSR-3 logger channels**](practice-use-dedicated-psr3-logger-channels.md) — Define one logger channel per module and inject that channel as Psr\\Log\\LoggerInterface.
### #mail
- Open [**Drupal mail flow**](map-drupal-mail-flow.md) — MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output.
### #map
- Open [**Extensibility docs cover hooks, events, tokens, and updates**](map-extensibility-docs-map.md) — The docs/extensibility folder is organized around Drupal extension mechanisms and links related detail pages together.
### #menus
- Open [**Drupal menu navigation uses separate YAML files by link type**](map-drupal-menu-navigation-yaml-files.md) — Menu links, local tasks, and local actions are declared in dedicated YAML files with route-based keys.
### #messenger
- Open [**Use Messenger for user-facing flash notices**](practice-use-messenger-for-user-facing-flash-notices.md) — Use the messenger service for status, warning, and error notices; use logging for backend diagnostics.
### #metatag
- Open [**Drupal Metatag custom tags and groups**](practice-drupal-metatag-plugins-use-annotated-tags-and-groups.md) — Metatag extensions add annotated tag and group plugins, then read effective tags through the metatag.manager service.
### #migrate
- Open [**Drupal Migrate API Reference**](map-drupal-migrate-api-reference.md) — Use migration YAML, process plugins, source plugins, and Drush commands to define and run Drupal migrations.
### #migration
- Open [**Drupal Migrate API Reference**](map-drupal-migrate-api-reference.md) — Use migration YAML, process plugins, source plugins, and Drush commands to define and run Drupal migrations.
### #oop
- Open [**Use OOP hooks in src/Hook**](practice-prefer-oop-hooks-in-src-hook.md) — Drupal 11.1+ hook implementations should be PHP attribute based classes under a module's src/Hook directory.
### #parameters
- Open [**Register parameter converters and breadcrumb builders with explicit tags**](practice-parameter-converters-and-breadcrumb-priority.md) — Custom converters and breadcrumbs rely on explicit service tags, priority ordering, and cache metadata.
### #pathauto
- Open [**Drupal Pathauto alias generation**](practice-drupal-pathauto-alias-types-patterns-and-generation.md) — Pathauto provides annotated alias type plugins, tokenized alias patterns, and services for generating or updating entity aliases.
### #patterns
- Open [**Drupal security patterns by context**](map-drupal-security-patterns-by-context.md) — Security guidance is organized around common sequences and the context-specific docs to consult.
### #permissions
- Open [**Declare and compose Drupal permissions explicitly**](practice-declare-and-compose-drupal-permissions-explicitly.md) — Define static or dynamic permissions and use route requirement syntax carefully for OR and AND checks.
### #phpcs
- Open [**Use Drupal PHPCS and PHPStan for custom module quality**](practice-quality-drupal-coding-standards.md) — Custom Drupal module code should be checked with Drupal and DrupalPractice PHPCS standards plus PHPStan, with level 5 or higher preferred for new code.
### #phpstan
- Open [**Use Drupal PHPCS and PHPStan for custom module quality**](practice-quality-drupal-coding-standards.md) — Custom Drupal module code should be checked with Drupal and DrupalPractice PHPCS standards plus PHPStan, with level 5 or higher preferred for new code.
### #processing
- Open [**Use Drupal Batch API with sandbox progress and a finished callback**](practice-processing-batch-api-pattern.md) — Long-running browser-initiated processing should be modeled as a Drupal batch with chunked operations, sandbox progress, user-facing messages, and a final success/error callback.
### #redirects
- Open [**Drupal Redirect entities and events**](practice-drupal-redirect-programmatic-redirects-and-events.md) — Redirect stores redirects as entities, expects slashless source paths, and exposes lookup and redirect-event extension points.
### #reliability
- Open [**Design reliable queue processing for at-least-once delivery**](practice-processing-queue-error-handling-idempotency.md) — Reliable Drupal queues can duplicate work, so workers and manual processors should be idempotent and map queue exceptions to the intended retry behavior.
### #rendering
- Open [**Prevent XSS with context-aware output**](practice-prevent-xss-with-context-aware-output.md) — Use render arrays, placeholders, URL helpers, drupalSettings, and Twig auto-escaping.
### #rest
- Open [**REST resources are ResourceBase plugins**](map-rest-resource-plugins.md) — Custom REST endpoints live as Plugin\\rest\\resource classes with RestResource attributes and resource config.
### #revisions
- Open [**Use Entity Reference Revisions For Paragraph Fields**](practice-use-entity-reference-revisions-for-paragraph-fields.md) — Paragraph fields should reference specific paragraph revisions so host revisions cascade to child revisions.
### #routes
- Open [**Drupal route definitions combine paths, defaults, requirements, and options**](map-drupal-route-definition-structure.md) — Routes are declared with path patterns, controller/form defaults, access requirements, and optional parameter metadata.
### #schema
- Open [**Use update hooks for schema and post updates for data**](practice-use-update-hooks-for-schema-and-post-updates-for-data.md) — Schema changes belong in numbered hook_update_N functions; data changes belong in named post updates.
### #sdc
- Open [**Single Directory Components structure**](map-single-directory-components-structure.md) — Drupal SDC components group metadata, Twig, CSS, and JavaScript in one component directory.
### #secrets
- Open [**Keep secrets out of code and exported config**](practice-keep-secrets-out-of-code-and-config.md) — Use environment variables, settings overrides, Key module, or Vault instead of committed secrets.
### #serialization
- Open [**Tag custom normalizers explicitly**](practice-tag-custom-normalizers-explicitly.md) — Custom serialization normalizers need an explicit normalizer service tag with priority.
### #sql
- Open [**Prevent SQL injection with safe query APIs**](practice-prevent-sql-injection-with-safe-query-apis.md) — Prefer Entity Query and parameterized Database API calls; never concatenate user input into SQL.
### #strings
- Open [**Keep translation strings extractable and placeholder-safe**](practice-translation-strings-must-be-extractable.md) — Use Drupal translation APIs with literal source strings, placeholders, and plural forms; do not concatenate translated text or pass variables as the source string.
### #theme
- Open [**Drupal theme system entry points**](map-drupal-theme-system-entry-points.md) — Theme hooks, templates, preprocess functions, suggestions, and Twig helpers shape Drupal output.
### #transactions
- Open [**Wrap atomic custom table operations in transactions**](practice-wrap-atomic-custom-table-operations-in-transactions.md) — Use transactions when multiple custom-table writes must succeed or fail together.
### #translation
- Open [**Check content entity translations before loading them**](practice-content-translation-check-existing-translation-first.md) — When working with translated content entities, check translation availability before calling getTranslation(), use getUntranslated() for the default language, and remember that field translation is configured per field.
### #twig
- Open [**Drupal theme system entry points**](map-drupal-theme-system-entry-points.md) — Theme hooks, templates, preprocess functions, suggestions, and Twig helpers shape Drupal output.
### #types
- Open [**Define field type storage and typed data separately**](practice-field-types-define-storage-and-typed-data.md) — Field types use schema() for database columns and propertyDefinitions() for typed data properties.
### #updates
- Open [**Use update hooks for schema and post updates for data**](practice-use-update-hooks-for-schema-and-post-updates-for-data.md) — Schema changes belong in numbered hook_update_N functions; data changes belong in named post updates.
### #uploads
- Open [**Handle uploads and private files securely**](practice-handle-files-securely.md) — Validate uploads server-side, store sensitive files privately, and gate private downloads.
### #urls
- Open [**Generate Drupal URLs with Url and Link APIs**](practice-generate-drupal-urls-with-url-and-link-objects.md) — Use Url, Link, entity helpers, or injected generators instead of bare path strings.
### #ux
- Open [**Use Messenger for user-facing flash notices**](practice-use-messenger-for-user-facing-flash-notices.md) — Use the messenger service for status, warning, and error notices; use logging for backend diagnostics.
### #views
- Open [**Register Views handlers in views data**](practice-register-views-handlers-in-views-data.md) — Views plugin handlers need attributes, correct directories, and hook_views_data registration.
### #vulnerabilities
- Open [**Avoid common security vulnerability patterns**](practice-avoid-common-security-vulnerabilities.md) — Prefer safe APIs, allowlists, generic errors, and cryptographic randomness for common risk areas.
### #widgets
- Open [**Build field widgets as field form elements**](practice-field-widgets-build-form-elements.md) — Field widgets live under Plugin\\Field\\FieldWidget and add child form elements in formElement().
### #worker
- Open [**Use QueueWorker plugins for background processing and typed retry behavior**](practice-processing-queueworker-plugin-pattern.md) — QueueWorker plugins are the preferred Drupal pattern for emails, API calls, synchronization, and other background work that should run through cron or manual queue runners.
### #xss
- Open [**Prevent XSS with context-aware output**](practice-prevent-xss-with-context-aware-output.md) — Use render arrays, placeholders, URL helpers, drupalSettings, and Twig auto-escaping.
