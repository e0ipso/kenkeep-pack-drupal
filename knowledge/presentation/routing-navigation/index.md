# kenkeep Index: drupal / presentation / routing-navigation

↑ Parent: [presentation](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Drupal Redirect entities and events**](practice-drupal-redirect-programmatic-redirects-and-events.md) to learn about: Redirect stores redirects as entities, expects slashless source paths, and exposes lookup and redirect-event extension points. #drupal #seo #redirects #routing
- Open [**Generate Drupal URLs with Url and Link APIs**](practice-generate-drupal-urls-with-url-and-link-objects.md) to learn about: Use Url, Link, entity helpers, or injected generators instead of bare path strings. #drupal #routing #urls #links
- Open [**Open Drupal modal routes with AJAX dialog links and commands**](practice-modal-dialog-route-links.md) to learn about: Attach the dialog AJAX library and use valid dialog attributes or AJAX commands for modal behavior. #drupal #routing #ajax #dialogs
- Open [**Register parameter converters and breadcrumb builders with explicit tags**](practice-parameter-converters-and-breadcrumb-priority.md) to learn about: Custom converters and breadcrumbs rely on explicit service tags, priority ordering, and cache metadata. #drupal #routing #parameters #breadcrumbs

## Components (what exists)
- Open [**Drupal menu navigation uses separate YAML files by link type**](map-drupal-menu-navigation-yaml-files.md) to learn about: Menu links, local tasks, and local actions are declared in dedicated YAML files with route-based keys. #drupal #routing #menus
- Open [**Drupal route definitions combine paths, defaults, requirements, and options**](map-drupal-route-definition-structure.md) to learn about: Routes are declared with path patterns, controller/form defaults, access requirements, and optional parameter metadata. #drupal #routing #routes

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #routing
- Open [**Use tagged breadcrumb builders for route-specific breadcrumb trails**](../../data-cache/cache-render/practice-custom-breadcrumb-builders.md) — Create a breadcrumb builder when the route needs a trail that differs from the URL-derived default.
- Open [**Drupal menu navigation uses separate YAML files by link type**](map-drupal-menu-navigation-yaml-files.md) — Menu links, local tasks, and local actions are declared in dedicated YAML files with route-based keys.
- Open [**Drupal route definitions combine paths, defaults, requirements, and options**](map-drupal-route-definition-structure.md) — Routes are declared with path patterns, controller/form defaults, access requirements, and optional parameter metadata.
### #ajax
- Open [**AJAX command reference surface**](../frontend-theme/map-ajax-command-reference-surface.md) — Drupal AJAX responses are ordered command lists executed by Drupal.ajax on the client.
- Open [**Use Drupal.ajax for dynamic interactions**](../frontend-theme/practice-use-drupal-ajax-for-dynamic-interactions.md) — Use Drupal.ajax and AjaxResponse commands for Drupal-rendered dynamic interactions.
- Open [**Use Drupal AJAX form patterns**](../forms/practice-use-drupal-ajax-form-patterns.md) — Build Drupal form AJAX with #ajax callbacks, wrapper IDs, AjaxResponse commands, and rebuilds for dynamic items.
### #breadcrumbs
- Open [**Use tagged breadcrumb builders for route-specific breadcrumb trails**](../../data-cache/cache-render/practice-custom-breadcrumb-builders.md) — Create a breadcrumb builder when the route needs a trail that differs from the URL-derived default.
- Open [**Register parameter converters and breadcrumb builders with explicit tags**](practice-parameter-converters-and-breadcrumb-priority.md) — Custom converters and breadcrumbs rely on explicit service tags, priority ordering, and cache metadata.
### #dialogs
- Open [**Open Drupal modal routes with AJAX dialog links and commands**](practice-modal-dialog-route-links.md) — Attach the dialog AJAX library and use valid dialog attributes or AJAX commands for modal behavior.
### #links
- Open [**Generate Drupal URLs with Url and Link APIs**](practice-generate-drupal-urls-with-url-and-link-objects.md) — Use Url, Link, entity helpers, or injected generators instead of bare path strings.
### #menus
- Open [**Drupal menu navigation uses separate YAML files by link type**](map-drupal-menu-navigation-yaml-files.md) — Menu links, local tasks, and local actions are declared in dedicated YAML files with route-based keys.
### #parameters
- Open [**Register parameter converters and breadcrumb builders with explicit tags**](practice-parameter-converters-and-breadcrumb-priority.md) — Custom converters and breadcrumbs rely on explicit service tags, priority ordering, and cache metadata.
### #redirects
- Open [**Drupal Redirect entities and events**](practice-drupal-redirect-programmatic-redirects-and-events.md) — Redirect stores redirects as entities, expects slashless source paths, and exposes lookup and redirect-event extension points.
### #routes
- Open [**Drupal route definitions combine paths, defaults, requirements, and options**](map-drupal-route-definition-structure.md) — Routes are declared with path patterns, controller/form defaults, access requirements, and optional parameter metadata.
### #seo
- Open [**Drupal Field Group custom formatters**](../forms/practice-drupal-field-group-formatters-use-annotations.md) — Field Group extensions define formatter plugins with @FieldGroupFormatter annotations and store groups on entity form/view display configuration.
- Open [**Drupal Metatag custom tags and groups**](../../content-model/media-seo-search/practice-drupal-metatag-plugins-use-annotated-tags-and-groups.md) — Metatag extensions add annotated tag and group plugins, then read effective tags through the metatag.manager service.
- Open [**Drupal Redirect entities and events**](practice-drupal-redirect-programmatic-redirects-and-events.md) — Redirect stores redirects as entities, expects slashless source paths, and exposes lookup and redirect-event extension points.
### #urls
- Open [**Generate Drupal URLs with Url and Link APIs**](practice-generate-drupal-urls-with-url-and-link-objects.md) — Use Url, Link, entity helpers, or injected generators instead of bare path strings.