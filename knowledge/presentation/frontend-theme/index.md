# kenkeep Index: drupal / presentation / frontend-theme

↑ Parent: [presentation](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Use Drupal.ajax for dynamic interactions**](practice-use-drupal-ajax-for-dynamic-interactions.md) to learn about: Use Drupal.ajax and AjaxResponse commands for Drupal-rendered dynamic interactions. #frontend #ajax #javascript #drupal
- Open [**Attach frontend assets through libraries**](practice-attach-frontend-assets-through-libraries.md) to learn about: Define CSS and JS in libraries.yml and attach libraries where needed instead of loading assets globally. #frontend #assets #libraries #drupal
- Open [**Register custom Media Library openers as tagged services**](practice-register-media-library-custom-openers-as-services.md) to learn about: Custom Media Library openers implement the opener interface and register with the media_library.opener tag. #drupal #media #services
- Open [**Write idempotent Drupal JavaScript behaviors**](practice-write-idempotent-drupal-javascript-behaviors.md) to learn about: Use drupalSettings, behaviors, once(), and narrow settings data for Drupal JavaScript integration. #frontend #javascript #behaviors #security
- Open [**Keep translation strings extractable and placeholder-safe**](practice-translation-strings-must-be-extractable.md) to learn about: Use Drupal translation APIs with literal source strings, placeholders, and plural forms; do not concatenate translated text or pass variables as the source string. #i18n #strings #javascript
- Open [**Use Messenger for user-facing flash notices**](practice-use-messenger-for-user-facing-flash-notices.md) to learn about: Use the messenger service for status, warning, and error notices; use logging for backend diagnostics. #drupal #messenger #ux

## Components (what exists)
- Open [**AJAX command reference surface**](map-ajax-command-reference-surface.md) to learn about: Drupal AJAX responses are ordered command lists executed by Drupal.ajax on the client. #frontend #ajax #reference #drupal
- Open [**Non-form render element types**](map-non-form-render-element-types.md) to learn about: Drupal provides non-form render elements for common output structures in controllers and preprocess code. #drupal #render #elements
- Open [**Drupal theme system entry points**](map-drupal-theme-system-entry-points.md) to learn about: Theme hooks, templates, preprocess functions, suggestions, and Twig helpers shape Drupal output. #drupal #theme #twig
- Open [**Single Directory Components structure**](map-single-directory-components-structure.md) to learn about: Drupal SDC components group metadata, Twig, CSS, and JavaScript in one component directory. #drupal #sdc #components

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #frontend
- Open [**Use Drupal.ajax for dynamic interactions**](practice-use-drupal-ajax-for-dynamic-interactions.md) — Use Drupal.ajax and AjaxResponse commands for Drupal-rendered dynamic interactions.
- Open [**AJAX command reference surface**](map-ajax-command-reference-surface.md) — Drupal AJAX responses are ordered command lists executed by Drupal.ajax on the client.
- Open [**Attach frontend assets through libraries**](practice-attach-frontend-assets-through-libraries.md) — Define CSS and JS in libraries.yml and attach libraries where needed instead of loading assets globally.
### #javascript
- Open [**Use Drupal.ajax for dynamic interactions**](practice-use-drupal-ajax-for-dynamic-interactions.md) — Use Drupal.ajax and AjaxResponse commands for Drupal-rendered dynamic interactions.
- Open [**Write idempotent Drupal JavaScript behaviors**](practice-write-idempotent-drupal-javascript-behaviors.md) — Use drupalSettings, behaviors, once(), and narrow settings data for Drupal JavaScript integration.
- Open [**Keep translation strings extractable and placeholder-safe**](practice-translation-strings-must-be-extractable.md) — Use Drupal translation APIs with literal source strings, placeholders, and plural forms; do not concatenate translated text or pass variables as the source string.
### #ajax
- Open [**AJAX command reference surface**](map-ajax-command-reference-surface.md) — Drupal AJAX responses are ordered command lists executed by Drupal.ajax on the client.
- Open [**Use Drupal.ajax for dynamic interactions**](practice-use-drupal-ajax-for-dynamic-interactions.md) — Use Drupal.ajax and AjaxResponse commands for Drupal-rendered dynamic interactions.
- Open [**Use Drupal AJAX form patterns**](../forms/practice-use-drupal-ajax-form-patterns.md) — Build Drupal form AJAX with #ajax callbacks, wrapper IDs, AjaxResponse commands, and rebuilds for dynamic items.
### #assets
- Open [**Attach frontend assets through libraries**](practice-attach-frontend-assets-through-libraries.md) — Define CSS and JS in libraries.yml and attach libraries where needed instead of loading assets globally.
### #behaviors
- Open [**Write idempotent Drupal JavaScript behaviors**](practice-write-idempotent-drupal-javascript-behaviors.md) — Use drupalSettings, behaviors, once(), and narrow settings data for Drupal JavaScript integration.
### #components
- Open [**Single Directory Components structure**](map-single-directory-components-structure.md) — Drupal SDC components group metadata, Twig, CSS, and JavaScript in one component directory.
### #elements
- Open [**Non-form render element types**](map-non-form-render-element-types.md) — Drupal provides non-form render elements for common output structures in controllers and preprocess code.
- Open [**Drupal form element types reference**](../forms/map-drupal-form-element-types-reference.md) — Form API element types map #type values to render element classes, key properties, defaults, and gotchas.
### #i18n
- Open [**Check content entity translations before loading them**](../../content-model/entities-fields/practice-content-translation-check-existing-translation-first.md) — When working with translated content entities, check translation availability before calling getTranslation(), use getUntranslated() for the default language, and remember that field translation is configured per field.
- Open [**Keep translation strings extractable and placeholder-safe**](practice-translation-strings-must-be-extractable.md) — Use Drupal translation APIs with literal source strings, placeholders, and plural forms; do not concatenate translated text or pass variables as the source string.
### #libraries
- Open [**Attach frontend assets through libraries**](practice-attach-frontend-assets-through-libraries.md) — Define CSS and JS in libraries.yml and attach libraries where needed instead of loading assets globally.
### #media
- Open [**Extend AddFormBase for custom Media Library add forms**](../forms/practice-extend-addformbase-for-custom-media-add-forms.md) — Custom Media Library add forms should extend AddFormBase and build their input UI through buildInputElement().
- Open [**Handle Entity Browser integration gotchas**](../forms/practice-entity-browser-integration-gotchas.md) — Entity Browser integrations need the right Views field, modal library, selection mode, access checks, and annotations.
- Open [**MediaLibraryState defines dialog selection parameters**](../../content-model/media-seo-search/map-media-library-state-vocabulary.md) — MediaLibraryState carries opener ID, allowed types, selected type, remaining slots, and opener parameters.
### #messenger
- Open [**Use Messenger for user-facing flash notices**](practice-use-messenger-for-user-facing-flash-notices.md) — Use the messenger service for status, warning, and error notices; use logging for backend diagnostics.
### #reference
- Open [**Drupal form building patterns**](../forms/map-drupal-form-building-patterns.md) — Drupal forms in these docs cover config, basic, confirm, multi-step, validation, elements, and common properties.
- Open [**Drupal form element types reference**](../forms/map-drupal-form-element-types-reference.md) — Form API element types map #type values to render element classes, key properties, defaults, and gotchas.
- Open [**AJAX command reference surface**](map-ajax-command-reference-surface.md) — Drupal AJAX responses are ordered command lists executed by Drupal.ajax on the client.
### #render
- Open [**Build render arrays with cache metadata**](../../data-cache/cache-render/practice-build-render-arrays-with-cache-metadata.md) — Attach cache tags, contexts, max-age, libraries, and lazy builders directly to Drupal render arrays.
- Open [**Use cacheable dependencies for render cache metadata**](../../data-cache/cache-render/practice-use-cacheable-dependencies-for-render-cache-metadata.md) — Attach cache metadata from entities/config with Drupal helpers instead of manually building cache tags.
- Open [**Vary render cache with cache contexts**](../../data-cache/cache-render/practice-vary-render-cache-with-cache-contexts.md) — Use cache contexts to vary rendered output by user, permissions, route, URL, language, theme, or query args.
### #sdc
- Open [**Single Directory Components structure**](map-single-directory-components-structure.md) — Drupal SDC components group metadata, Twig, CSS, and JavaScript in one component directory.
### #security
- Open [**Secure custom table queries**](../../security/input-output/practice-secure-custom-table-queries.md) — Use placeholders, escape LIKE patterns, and whitelist dynamic table names in custom SQL work.
- Open [**Drupal security patterns by context**](../../security/input-output/map-drupal-security-patterns-by-context.md) — Security guidance is organized around common sequences and the context-specific docs to consult.
- Open [**Avoid common security vulnerability patterns**](../../security/input-output/practice-avoid-common-security-vulnerabilities.md) — Prefer safe APIs, allowlists, generic errors, and cryptographic randomness for common risk areas.
### #services
- Open [**Advanced Drupal service patterns**](../../architecture/services/map-advanced-drupal-service-patterns.md) — Advanced service definitions cover factories, decorators, tagged collectors, HTTP clients, and service providers.
- Open [**Drupal service definitions and common services**](../../architecture/services/map-drupal-service-definitions-and-common-services.md) — Module services are PHP classes registered in services.yml with injected core services and optional parameters.
- Open [**Cache computed service data with CacheBackendInterface**](../../data-cache/cache-render/practice-cache-computed-service-data-with-cachebackendinterface.md) — Use CacheBackendInterface in services for computed data and attach tags for invalidation across bins.
### #strings
- Open [**Keep translation strings extractable and placeholder-safe**](practice-translation-strings-must-be-extractable.md) — Use Drupal translation APIs with literal source strings, placeholders, and plural forms; do not concatenate translated text or pass variables as the source string.
### #theme
- Open [**Drupal theme system entry points**](map-drupal-theme-system-entry-points.md) — Theme hooks, templates, preprocess functions, suggestions, and Twig helpers shape Drupal output.
### #twig
- Open [**Drupal theme system entry points**](map-drupal-theme-system-entry-points.md) — Theme hooks, templates, preprocess functions, suggestions, and Twig helpers shape Drupal output.
### #ux
- Open [**Use Messenger for user-facing flash notices**](practice-use-messenger-for-user-facing-flash-notices.md) — Use the messenger service for status, warning, and error notices; use logging for backend diagnostics.