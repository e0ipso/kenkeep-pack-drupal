# kenkeep Index: drupal / data-cache / cache-render

↑ Parent: [data-cache](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Account For Layout Builder Override Side Effects**](practice-account-for-layout-builder-overrides.md) to learn about: Per-entity overrides, inline blocks, and override edits have cache, entity, and revision consequences. #drupal #layout #cache
- Open [**Build configurable and context-aware plugins with cache contexts**](practice-build-configurable-and-context-aware-plugins-with-cache-contexts.md) to learn about: Plugin configuration forms and context-aware plugins should save settings and return context-sensitive cache metadata. #drupal #plugins #configuration #cache
- Open [**Build render arrays with cache metadata**](practice-build-render-arrays-with-cache-metadata.md) to learn about: Attach cache tags, contexts, max-age, libraries, and lazy builders directly to Drupal render arrays. #drupal #render #cache
- Open [**Use tagged breadcrumb builders for route-specific breadcrumb trails**](practice-custom-breadcrumb-builders.md) to learn about: Create a breadcrumb builder when the route needs a trail that differs from the URL-derived default. #drupal #routing #breadcrumbs #cache
- Open [**Use cacheable dependencies for render cache metadata**](practice-use-cacheable-dependencies-for-render-cache-metadata.md) to learn about: Attach cache metadata from entities/config with Drupal helpers instead of manually building cache tags. #cache #render #drupal
- Open [**Build field formatters as render-array producers**](practice-field-formatters-return-render-arrays.md) to learn about: Field formatters live under Plugin\\Field\\FieldFormatter and return render arrays from viewElements(). #drupal #fields #formatters
- Open [**Cache computed service data with CacheBackendInterface**](practice-cache-computed-service-data-with-cachebackendinterface.md) to learn about: Use CacheBackendInterface in services for computed data and attach tags for invalidation across bins. #drupal #services #cache
- Open [**Vary render cache with cache contexts**](practice-vary-render-cache-with-cache-contexts.md) to learn about: Use cache contexts to vary rendered output by user, permissions, route, URL, language, theme, or query args. #drupal #cache #render
- Open [**Account for render cache max-age gotchas**](practice-account-for-render-cache-max-age-gotchas.md) to learn about: Treat render cache max-age as restrictive and unreliable for some anonymous/page-cache cases. #cache #render #gotcha
- Open [**Carry cache metadata through token replacements**](practice-token-replacements-must-carry-cache-metadata.md) to learn about: Token replacement hooks and token service usage must attach bubbleable metadata for every data source used. #drupal #tokens #cache
- Open [**Define and replace custom tokens with bubbleable metadata**](practice-define-and-replace-custom-tokens-with-bubbleable-metadata.md) to learn about: Custom token types and replacements should declare token info, handle chained tokens, and add cache dependencies. #drupal #tokens #cache
- Open [**Set cache metadata on block plugin builds**](practice-set-cache-metadata-on-block-plugin-builds.md) to learn about: Block plugin build arrays need explicit cache metadata because Drupal caches blocks aggressively. #drupal #plugins #blocks #cache
- Open [**Tag cache entries for targeted invalidation**](practice-tag-cache-entries-for-targeted-invalidation.md) to learn about: Attach cache tags that identify the data a cache item depends on so updates invalidate the right entries. #drupal #cache #invalidation
- Open [**Use display modes for entity rendering**](practice-use-display-modes-for-entity-rendering.md) to learn about: Define Drupal view and form modes in config, then render entities through the view builder. #drupal #render #display

## Components (what exists)
_None yet._

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #cache
- Open [**Use cacheable dependencies for render cache metadata**](practice-use-cacheable-dependencies-for-render-cache-metadata.md) — Attach cache metadata from entities/config with Drupal helpers instead of manually building cache tags.
- Open [**Vary render cache with cache contexts**](practice-vary-render-cache-with-cache-contexts.md) — Use cache contexts to vary rendered output by user, permissions, route, URL, language, theme, or query args.
- Open [**Build render arrays with cache metadata**](practice-build-render-arrays-with-cache-metadata.md) — Attach cache tags, contexts, max-age, libraries, and lazy builders directly to Drupal render arrays.
### #render
- Open [**Build render arrays with cache metadata**](practice-build-render-arrays-with-cache-metadata.md) — Attach cache tags, contexts, max-age, libraries, and lazy builders directly to Drupal render arrays.
- Open [**Use cacheable dependencies for render cache metadata**](practice-use-cacheable-dependencies-for-render-cache-metadata.md) — Attach cache metadata from entities/config with Drupal helpers instead of manually building cache tags.
- Open [**Vary render cache with cache contexts**](practice-vary-render-cache-with-cache-contexts.md) — Use cache contexts to vary rendered output by user, permissions, route, URL, language, theme, or query args.
### #plugins
- Open [**Derivative plugins generate dynamic plugin instances**](../../architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md) — A deriver creates multiple plugin definitions from one base plugin using dynamic data.
- Open [**Drupal mail flow**](../../architecture/services/map-drupal-mail-flow.md) — MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output.
- Open [**Alter and debug plugin definitions through managers**](../../quality/practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.
### #tokens
- Open [**Carry cache metadata through token replacements**](practice-token-replacements-must-carry-cache-metadata.md) — Token replacement hooks and token service usage must attach bubbleable metadata for every data source used.
- Open [**Define and replace custom tokens with bubbleable metadata**](practice-define-and-replace-custom-tokens-with-bubbleable-metadata.md) — Custom token types and replacements should declare token info, handle chained tokens, and add cache dependencies.
### #blocks
- Open [**Set cache metadata on block plugin builds**](practice-set-cache-metadata-on-block-plugin-builds.md) — Block plugin build arrays need explicit cache metadata because Drupal caches blocks aggressively.
### #breadcrumbs
- Open [**Use tagged breadcrumb builders for route-specific breadcrumb trails**](practice-custom-breadcrumb-builders.md) — Create a breadcrumb builder when the route needs a trail that differs from the URL-derived default.
- Open [**Register parameter converters and breadcrumb builders with explicit tags**](../../presentation/routing-navigation/practice-parameter-converters-and-breadcrumb-priority.md) — Custom converters and breadcrumbs rely on explicit service tags, priority ordering, and cache metadata.
### #configuration
- Open [**Build configurable and context-aware plugins with cache contexts**](practice-build-configurable-and-context-aware-plugins-with-cache-contexts.md) — Plugin configuration forms and context-aware plugins should save settings and return context-sensitive cache metadata.
### #display
- Open [**Use display modes for entity rendering**](practice-use-display-modes-for-entity-rendering.md) — Define Drupal view and form modes in config, then render entities through the view builder.
### #fields
- Open [**Build field formatters as render-array producers**](practice-field-formatters-return-render-arrays.md) — Field formatters live under Plugin\\Field\\FieldFormatter and return render arrays from viewElements().
- Open [**Build field widgets as field form elements**](../../presentation/forms/practice-field-widgets-build-form-elements.md) — Field widgets live under Plugin\\Field\\FieldWidget and add child form elements in formElement().
- Open [**Define field type storage and typed data separately**](../storage-config/practice-field-types-define-storage-and-typed-data.md) — Field types use schema() for database columns and propertyDefinitions() for typed data properties.
### #formatters
- Open [**Build field formatters as render-array producers**](practice-field-formatters-return-render-arrays.md) — Field formatters live under Plugin\\Field\\FieldFormatter and return render arrays from viewElements().
### #gotcha
- Open [**Account for render cache max-age gotchas**](practice-account-for-render-cache-max-age-gotchas.md) — Treat render cache max-age as restrictive and unreliable for some anonymous/page-cache cases.
- Open [**Handle Search API indexing gotchas**](../../content-model/media-seo-search/practice-handle-search-api-indexing-gotchas.md) — Clear indexes after field changes, order processors carefully, and use Views for search pages.
### #invalidation
- Open [**Tag cache entries for targeted invalidation**](practice-tag-cache-entries-for-targeted-invalidation.md) — Attach cache tags that identify the data a cache item depends on so updates invalidate the right entries.
### #layout
- Open [**Account For Layout Builder Override Side Effects**](practice-account-for-layout-builder-overrides.md) — Per-entity overrides, inline blocks, and override edits have cache, entity, and revision consequences.
- Open [**Define layout plugins by complexity**](../../content-model/layout-paragraphs/practice-define-layout-plugins-by-complexity.md) — Use YAML-only layout plugins for simple regions and PHP layout classes for configurable layouts.
- Open [**Advanced Paragraphs Integrations Cover Layouts, Library Items, And Performance**](../../content-model/layout-paragraphs/map-paragraphs-advanced-layout-library-performance.md) — Layout Paragraphs, Paragraphs Library, and helper modules expand Paragraphs editing and reuse workflows.
### #routing
- Open [**Use tagged breadcrumb builders for route-specific breadcrumb trails**](practice-custom-breadcrumb-builders.md) — Create a breadcrumb builder when the route needs a trail that differs from the URL-derived default.
- Open [**Drupal menu navigation uses separate YAML files by link type**](../../presentation/routing-navigation/map-drupal-menu-navigation-yaml-files.md) — Menu links, local tasks, and local actions are declared in dedicated YAML files with route-based keys.
- Open [**Drupal route definitions combine paths, defaults, requirements, and options**](../../presentation/routing-navigation/map-drupal-route-definition-structure.md) — Routes are declared with path patterns, controller/form defaults, access requirements, and optional parameter metadata.
### #services
- Open [**Advanced Drupal service patterns**](../../architecture/services/map-advanced-drupal-service-patterns.md) — Advanced service definitions cover factories, decorators, tagged collectors, HTTP clients, and service providers.
- Open [**Drupal service definitions and common services**](../../architecture/services/map-drupal-service-definitions-and-common-services.md) — Module services are PHP classes registered in services.yml with injected core services and optional parameters.
- Open [**Cache computed service data with CacheBackendInterface**](practice-cache-computed-service-data-with-cachebackendinterface.md) — Use CacheBackendInterface in services for computed data and attach tags for invalidation across bins.