# kenkeep Index: drupal / security / access

↑ Parent: [security](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Call accessCheck on entity queries**](practice-call-access-check-on-entity-queries.md) to learn about: Every entity query must set accessCheck explicitly in Drupal 10 and later. #drupal #entities #queries #access
- Open [**Include cache metadata in entity access handlers**](practice-include-cache-metadata-in-entity-access-handlers.md) to learn about: Entity access results need cache metadata such as permission, user, or entity cache contexts/tags. #drupal #entities #access #cache
- Open [**Define route access with explicit requirements and cache metadata**](practice-route-access-requirements-and-cacheability.md) to learn about: Use YAML requirements or tagged custom checkers, and always cache AccessResult decisions correctly. #drupal #routing #access #cache
- Open [**Define action plugins with access and type scope**](practice-define-action-plugins-with-access-and-type-scope.md) to learn about: Action plugins live under Plugin\\Action and should declare scope, access behavior, and configuration as needed. #drupal #plugins #actions
- Open [**Return cacheable AccessResult decisions**](practice-return-cacheable-access-results.md) to learn about: Drupal access checks must return AccessResult objects with the right cache metadata. #security #access #cache #drupal
- Open [**Target forms specifically and keep access neutral by default**](practice-prefer-specific-form-and-neutral-access-hooks.md) to learn about: Use specific form alter hooks for single forms, and have access hooks return neutral unless explicitly deciding access. #drupal #forms #access
- Open [**Declare and compose Drupal permissions explicitly**](practice-declare-and-compose-drupal-permissions-explicitly.md) to learn about: Define static or dynamic permissions and use route requirement syntax carefully for OR and AND checks. #drupal #permissions #access

## Components (what exists)
_None yet._

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #access
- Open [**Include cache metadata in entity access handlers**](practice-include-cache-metadata-in-entity-access-handlers.md) — Entity access results need cache metadata such as permission, user, or entity cache contexts/tags.
- Open [**Define route access with explicit requirements and cache metadata**](practice-route-access-requirements-and-cacheability.md) — Use YAML requirements or tagged custom checkers, and always cache AccessResult decisions correctly.
- Open [**Return cacheable AccessResult decisions**](practice-return-cacheable-access-results.md) — Drupal access checks must return AccessResult objects with the right cache metadata.
### #cache
- Open [**Use cacheable dependencies for render cache metadata**](../../data-cache/cache-render/practice-use-cacheable-dependencies-for-render-cache-metadata.md) — Attach cache metadata from entities/config with Drupal helpers instead of manually building cache tags.
- Open [**Vary render cache with cache contexts**](../../data-cache/cache-render/practice-vary-render-cache-with-cache-contexts.md) — Use cache contexts to vary rendered output by user, permissions, route, URL, language, theme, or query args.
- Open [**Build render arrays with cache metadata**](../../data-cache/cache-render/practice-build-render-arrays-with-cache-metadata.md) — Attach cache tags, contexts, max-age, libraries, and lazy builders directly to Drupal render arrays.
### #entities
- Open [**Use Database API only for custom tables**](../../data-cache/database/practice-use-database-api-only-for-custom-tables.md) — Use Entity API for content and reserve direct Database API queries for custom or audit tables.
- Open [**Use Database API sparingly for custom tables**](../../data-cache/database/practice-use-database-api-sparingly-for-custom-tables.md) — Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs.
- Open [**Typed Entity wrapper structure**](../../content-model/entities-fields/map-typed-entity-wrapper-structure.md) — Business wrappers live under WrappedEntities and typed repository plugins expose wrapped entity loading.
### #actions
- Open [**Define action plugins with access and type scope**](practice-define-action-plugins-with-access-and-type-scope.md) — Action plugins live under Plugin\\Action and should declare scope, access behavior, and configuration as needed.
### #forms
- Open [**Define schema for Drupal configuration**](../../data-cache/storage-config/practice-define-schema-for-drupal-configuration.md) — Every module configuration object needs schema; modern config forms can bind fields with #config_target.
- Open [**Prefer #config_target for settings forms**](../../data-cache/storage-config/practice-prefer-config-target-for-settings-forms.md) — Use #config_target on Drupal 10.2+ settings forms instead of manual config load/save boilerplate.
- Open [**Extend AddFormBase for custom Media Library add forms**](../../presentation/forms/practice-extend-addformbase-for-custom-media-add-forms.md) — Custom Media Library add forms should extend AddFormBase and build their input UI through buildInputElement().
### #permissions
- Open [**Declare and compose Drupal permissions explicitly**](practice-declare-and-compose-drupal-permissions-explicitly.md) — Define static or dynamic permissions and use route requirement syntax carefully for OR and AND checks.
### #plugins
- Open [**Derivative plugins generate dynamic plugin instances**](../../architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md) — A deriver creates multiple plugin definitions from one base plugin using dynamic data.
- Open [**Drupal mail flow**](../../architecture/services/map-drupal-mail-flow.md) — MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output.
- Open [**Alter and debug plugin definitions through managers**](../../quality/practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.
### #queries
- Open [**Call accessCheck on entity queries**](practice-call-access-check-on-entity-queries.md) — Every entity query must set accessCheck explicitly in Drupal 10 and later.
- Open [**Prefer Entity Query for entity retrieval**](../../content-model/entities-fields/practice-prefer-entity-query-for-entity-retrieval.md) — Use Entity Query for normal entity reads and avoid direct Database API for entity operations.
### #routing
- Open [**Use tagged breadcrumb builders for route-specific breadcrumb trails**](../../data-cache/cache-render/practice-custom-breadcrumb-builders.md) — Create a breadcrumb builder when the route needs a trail that differs from the URL-derived default.
- Open [**Drupal menu navigation uses separate YAML files by link type**](../../presentation/routing-navigation/map-drupal-menu-navigation-yaml-files.md) — Menu links, local tasks, and local actions are declared in dedicated YAML files with route-based keys.
- Open [**Drupal route definitions combine paths, defaults, requirements, and options**](../../presentation/routing-navigation/map-drupal-route-definition-structure.md) — Routes are declared with path patterns, controller/form defaults, access requirements, and optional parameter metadata.
### #security
- Open [**Secure custom table queries**](../input-output/practice-secure-custom-table-queries.md) — Use placeholders, escape LIKE patterns, and whitelist dynamic table names in custom SQL work.
- Open [**Drupal security patterns by context**](../input-output/map-drupal-security-patterns-by-context.md) — Security guidance is organized around common sequences and the context-specific docs to consult.
- Open [**Avoid common security vulnerability patterns**](../input-output/practice-avoid-common-security-vulnerabilities.md) — Prefer safe APIs, allowlists, generic errors, and cryptographic randomness for common risk areas.