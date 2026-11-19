# kenkeep Index: drupal / content-model / media-seo-search

↑ Parent: [content-model](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Drupal Metatag custom tags and groups**](practice-drupal-metatag-plugins-use-annotated-tags-and-groups.md) to learn about: Metatag extensions add annotated tag and group plugins, then read effective tags through the metatag.manager service. #drupal #seo #metatag #plugins
- Open [**Handle Search API indexing gotchas**](practice-handle-search-api-indexing-gotchas.md) to learn about: Clear indexes after field changes, order processors carefully, and use Views for search pages. #search #drupal #gotcha
- Open [**Drupal Pathauto alias generation**](practice-drupal-pathauto-alias-types-patterns-and-generation.md) to learn about: Pathauto provides annotated alias type plugins, tokenized alias patterns, and services for generating or updating entity aliases. #drupal #seo #pathauto #aliases
- Open [**Register Views handlers in views data**](practice-register-views-handlers-in-views-data.md) to learn about: Views plugin handlers should use current attributes where supported, correct directories, and hook_views_data registration. #drupal #plugins #views

## Components (what exists)
- Open [**MediaLibraryState defines dialog selection parameters**](map-media-library-state-vocabulary.md) to learn about: MediaLibraryState carries opener ID, allowed types, selected type, remaining slots, and opener parameters. #drupal #media #state
- Open [**Search API concepts and extension points**](map-search-api-concepts-and-extension-points.md) to learn about: Search API indexes content through indexes, servers, datasources, and processors. #search #drupal #api
- Open [**Media Library uses state, openers, and add forms**](map-media-library-three-component-architecture.md) to learn about: Media Library selection is organized around MediaLibraryState, opener services, and AddFormBase implementations. #drupal #media #architecture

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #media
- Open [**Extend AddFormBase for custom Media Library add forms**](../../presentation/forms/practice-extend-addformbase-for-custom-media-add-forms.md) — Custom Media Library add forms should extend AddFormBase and build their input UI through buildInputElement().
- Open [**Handle Entity Browser integration gotchas**](../../presentation/forms/practice-entity-browser-integration-gotchas.md) — Entity Browser integrations need the right Views field, modal library, selection mode, access checks, and annotations.
- Open [**MediaLibraryState defines dialog selection parameters**](map-media-library-state-vocabulary.md) — MediaLibraryState carries opener ID, allowed types, selected type, remaining slots, and opener parameters.
### #plugins
- Open [**Derivative plugins generate dynamic plugin instances**](../../architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md) — A deriver creates multiple plugin definitions from one base plugin using dynamic data.
- Open [**Drupal mail flow**](../../architecture/services/map-drupal-mail-flow.md) — MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output.
- Open [**Alter and debug plugin definitions through managers**](../../quality/practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.
### #search
- Open [**Search API concepts and extension points**](map-search-api-concepts-and-extension-points.md) — Search API indexes content through indexes, servers, datasources, and processors.
- Open [**Handle Search API indexing gotchas**](practice-handle-search-api-indexing-gotchas.md) — Clear indexes after field changes, order processors carefully, and use Views for search pages.
### #seo
- Open [**Drupal Field Group custom formatters**](../../presentation/forms/practice-drupal-field-group-formatters-use-annotations.md) — Field Group extensions define formatter plugins with @FieldGroupFormatter annotations and store groups on entity form/view display configuration.
- Open [**Drupal Metatag custom tags and groups**](practice-drupal-metatag-plugins-use-annotated-tags-and-groups.md) — Metatag extensions add annotated tag and group plugins, then read effective tags through the metatag.manager service.
- Open [**Drupal Redirect entities and events**](../../presentation/routing-navigation/practice-drupal-redirect-programmatic-redirects-and-events.md) — Redirect stores redirects as entities, expects slashless source paths, and exposes lookup and redirect-event extension points.
### #aliases
- Open [**Drupal Pathauto alias generation**](practice-drupal-pathauto-alias-types-patterns-and-generation.md) — Pathauto provides annotated alias type plugins, tokenized alias patterns, and services for generating or updating entity aliases.
### #api
- Open [**Delete queue items only after successful processing**](../../processing/queues-cron/practice-processing-queue-api-operations.md) — Manual Drupal queue code must explicitly create, claim, delete, release, and count items; claimed items remain until deleted or released.
- Open [**Search API concepts and extension points**](map-search-api-concepts-and-extension-points.md) — Search API indexes content through indexes, servers, datasources, and processors.
- Open [**Use JSON-RPC for business logic when the project already uses it**](../../apis/practice-use-jsonrpc-for-business-logic.md) — In projects that already use the contrib JSON-RPC module, it is the documented fit for actions, workflows, batch operations, and other non-REST behavior.
### #architecture
- Open [**Keep business logic out of entity classes**](../entities-fields/practice-keep-business-logic-out-of-entity-classes.md) — Put domain behavior in Typed Entity wrappers instead of scattering it through entity classes or direct field mutations.
- Open [**Media Library uses state, openers, and add forms**](map-media-library-three-component-architecture.md) — Media Library selection is organized around MediaLibraryState, opener services, and AddFormBase implementations.
### #gotcha
- Open [**Account for render cache max-age gotchas**](../../data-cache/cache-render/practice-account-for-render-cache-max-age-gotchas.md) — Treat render cache max-age as restrictive and unreliable for some anonymous/page-cache cases.
- Open [**Handle Search API indexing gotchas**](practice-handle-search-api-indexing-gotchas.md) — Clear indexes after field changes, order processors carefully, and use Views for search pages.
### #metatag
- Open [**Drupal Metatag custom tags and groups**](practice-drupal-metatag-plugins-use-annotated-tags-and-groups.md) — Metatag extensions add annotated tag and group plugins, then read effective tags through the metatag.manager service.
### #pathauto
- Open [**Drupal Pathauto alias generation**](practice-drupal-pathauto-alias-types-patterns-and-generation.md) — Pathauto provides annotated alias type plugins, tokenized alias patterns, and services for generating or updating entity aliases.
### #state
- Open [**Data storage API purposes**](../../data-cache/storage-config/map-data-storage-api-purposes.md) — Key-Value, State, Config, Cache, and TempStore each serve distinct storage needs.
- Open [**Do not write directly to the state key-value collection**](../../data-cache/storage-config/practice-do-not-write-directly-to-state-key-value-collection.md) — Use the State API for state data and reserve direct Key-Value access for separate collections.
- Open [**Keep runtime storage out of config export**](../../data-cache/storage-config/practice-keep-runtime-storage-out-of-config-export.md) — Store environment-specific runtime values in State or Key-Value, not exported Config.
### #views
- Open [**Register Views handlers in views data**](practice-register-views-handlers-in-views-data.md) — Views plugin handlers should use current attributes where supported, correct directories, and hook_views_data registration.