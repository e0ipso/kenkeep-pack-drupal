# kenkeep Index: drupal / presentation / forms

↑ Parent: [presentation](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Extend AddFormBase for custom Media Library add forms**](practice-extend-addformbase-for-custom-media-add-forms.md) to learn about: Custom Media Library add forms should extend AddFormBase and build their input UI through buildInputElement(). #drupal #media #forms
- Open [**Handle Entity Browser integration gotchas**](practice-entity-browser-integration-gotchas.md) to learn about: Entity Browser integrations need the right Views field, modal library, selection mode, access checks, and annotations. #drupal #media #entity-browser #forms
- Open [**Build field widgets as field form elements**](practice-field-widgets-build-form-elements.md) to learn about: Field widgets live under Plugin\\Field\\FieldWidget and add child form elements in formElement(). #drupal #fields #widgets
- Open [**Drupal Field Group custom formatters**](practice-drupal-field-group-formatters-use-annotations.md) to learn about: Field Group extensions define formatter plugins with @FieldGroupFormatter annotations and store groups on entity form/view display configuration. #drupal #seo #field-group #plugins
- Open [**Target form alters precisely**](practice-target-form-alters-precisely.md) to learn about: Prefer specific or base form alter hooks, use #states only for client-side behavior, and validate on the server. #forms #hooks #validation
- Open [**Use Drupal AJAX form patterns**](practice-use-drupal-ajax-form-patterns.md) to learn about: Build Drupal form AJAX with #ajax callbacks, wrapper IDs, AjaxResponse commands, and rebuilds for dynamic items. #forms #ajax #drupal

## Components (what exists)
- Open [**Drupal entity form bases**](map-drupal-entity-form-bases.md) to learn about: Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object. #forms #entities #drupal
- Open [**Drupal form building patterns**](map-drupal-form-building-patterns.md) to learn about: Drupal forms in these docs cover config, basic, confirm, multi-step, validation, elements, and common properties. #forms #drupal #reference
- Open [**Drupal form element types reference**](map-drupal-form-element-types-reference.md) to learn about: Form API element types map #type values to render element classes, key properties, defaults, and gotchas. #forms #elements #reference

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #forms
- Open [**Define schema for Drupal configuration**](../../data-cache/storage-config/practice-define-schema-for-drupal-configuration.md) — Every module configuration object needs schema; modern config forms can bind fields with #config_target.
- Open [**Prefer #config_target for settings forms**](../../data-cache/storage-config/practice-prefer-config-target-for-settings-forms.md) — Use #config_target on Drupal 10.2+ settings forms instead of manual config load/save boilerplate.
- Open [**Extend AddFormBase for custom Media Library add forms**](practice-extend-addformbase-for-custom-media-add-forms.md) — Custom Media Library add forms should extend AddFormBase and build their input UI through buildInputElement().
### #media
- Open [**Extend AddFormBase for custom Media Library add forms**](practice-extend-addformbase-for-custom-media-add-forms.md) — Custom Media Library add forms should extend AddFormBase and build their input UI through buildInputElement().
- Open [**Handle Entity Browser integration gotchas**](practice-entity-browser-integration-gotchas.md) — Entity Browser integrations need the right Views field, modal library, selection mode, access checks, and annotations.
- Open [**MediaLibraryState defines dialog selection parameters**](../../content-model/media-seo-search/map-media-library-state-vocabulary.md) — MediaLibraryState carries opener ID, allowed types, selected type, remaining slots, and opener parameters.
### #reference
- Open [**Drupal form building patterns**](map-drupal-form-building-patterns.md) — Drupal forms in these docs cover config, basic, confirm, multi-step, validation, elements, and common properties.
- Open [**Drupal form element types reference**](map-drupal-form-element-types-reference.md) — Form API element types map #type values to render element classes, key properties, defaults, and gotchas.
- Open [**AJAX command reference surface**](../frontend-theme/map-ajax-command-reference-surface.md) — Drupal AJAX responses are ordered command lists executed by Drupal.ajax on the client.
### #ajax
- Open [**AJAX command reference surface**](../frontend-theme/map-ajax-command-reference-surface.md) — Drupal AJAX responses are ordered command lists executed by Drupal.ajax on the client.
- Open [**Use Drupal.ajax for dynamic interactions**](../frontend-theme/practice-use-drupal-ajax-for-dynamic-interactions.md) — Use Drupal.ajax and AjaxResponse commands for Drupal-rendered dynamic interactions.
- Open [**Use Drupal AJAX form patterns**](practice-use-drupal-ajax-form-patterns.md) — Build Drupal form AJAX with #ajax callbacks, wrapper IDs, AjaxResponse commands, and rebuilds for dynamic items.
### #elements
- Open [**Non-form render element types**](../frontend-theme/map-non-form-render-element-types.md) — Drupal provides non-form render elements for common output structures in controllers and preprocess code.
- Open [**Drupal form element types reference**](map-drupal-form-element-types-reference.md) — Form API element types map #type values to render element classes, key properties, defaults, and gotchas.
### #entities
- Open [**Use Database API only for custom tables**](../../data-cache/database/practice-use-database-api-only-for-custom-tables.md) — Use Entity API for content and reserve direct Database API queries for custom or audit tables.
- Open [**Use Database API sparingly for custom tables**](../../data-cache/database/practice-use-database-api-sparingly-for-custom-tables.md) — Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs.
- Open [**Typed Entity wrapper structure**](../../content-model/entities-fields/map-typed-entity-wrapper-structure.md) — Business wrappers live under WrappedEntities and typed repository plugins expose wrapped entity loading.
### #entity-browser
- Open [**Handle Entity Browser integration gotchas**](practice-entity-browser-integration-gotchas.md) — Entity Browser integrations need the right Views field, modal library, selection mode, access checks, and annotations.
### #field-group
- Open [**Drupal Field Group custom formatters**](practice-drupal-field-group-formatters-use-annotations.md) — Field Group extensions define formatter plugins with @FieldGroupFormatter annotations and store groups on entity form/view display configuration.
### #fields
- Open [**Build field formatters as render-array producers**](../../data-cache/cache-render/practice-field-formatters-return-render-arrays.md) — Field formatters live under Plugin\\Field\\FieldFormatter and return render arrays from viewElements().
- Open [**Build field widgets as field form elements**](practice-field-widgets-build-form-elements.md) — Field widgets live under Plugin\\Field\\FieldWidget and add child form elements in formElement().
- Open [**Define field type storage and typed data separately**](../../data-cache/storage-config/practice-field-types-define-storage-and-typed-data.md) — Field types use schema() for database columns and propertyDefinitions() for typed data properties.
### #hooks
- Open [**Choose entity lifecycle hooks by save phase**](../../content-model/entities-fields/practice-choose-entity-lifecycle-hooks-by-save-phase.md) — Use the entity lifecycle hook that matches the phase: presave, insert/update, predelete/delete, load, or view.
- Open [**Reserve procedural hooks for required cases**](../../architecture/hooks-events/practice-only-procedural-hooks-for-container-unavailable-cases.md) — Most Drupal 11.1+ module hooks should be OOP, but early install/update/schema and meta hooks remain procedural; requirements hooks have newer replacements.
- Open [**Use subscribers for events, entity hooks for entities**](../../architecture/hooks-events/practice-use-event-subscribers-for-events-not-entity-operations.md) — Event subscribers are documented for kernel, config, and custom events; entity operations should use entity hooks instead.
### #plugins
- Open [**Derivative plugins generate dynamic plugin instances**](../../architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md) — A deriver creates multiple plugin definitions from one base plugin using dynamic data.
- Open [**Drupal mail flow**](../../architecture/services/map-drupal-mail-flow.md) — MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output.
- Open [**Alter and debug plugin definitions through managers**](../../quality/practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.
### #seo
- Open [**Drupal Field Group custom formatters**](practice-drupal-field-group-formatters-use-annotations.md) — Field Group extensions define formatter plugins with @FieldGroupFormatter annotations and store groups on entity form/view display configuration.
- Open [**Drupal Metatag custom tags and groups**](../../content-model/media-seo-search/practice-drupal-metatag-plugins-use-annotated-tags-and-groups.md) — Metatag extensions add annotated tag and group plugins, then read effective tags through the metatag.manager service.
- Open [**Drupal Redirect entities and events**](../routing-navigation/practice-drupal-redirect-programmatic-redirects-and-events.md) — Redirect stores redirects as entities, expects slashless source paths, and exposes lookup and redirect-event extension points.
### #validation
- Open [**Validate input server-side before use**](../../security/input-output/practice-validate-input-server-side.md) — Validate request, entity, and form data for type, format, range, and length before processing.
- Open [**Place custom validation constraints by convention**](../../security/input-output/practice-place-custom-validation-constraints-by-convention.md) — Custom entity validation constraints and validators belong in Plugin/Validation/Constraint with matching names.
- Open [**Target form alters precisely**](practice-target-form-alters-precisely.md) — Prefer specific or base form alter hooks, use #states only for client-side behavior, and validate on the server.
### #widgets
- Open [**Build field widgets as field form elements**](practice-field-widgets-build-form-elements.md) — Field widgets live under Plugin\\Field\\FieldWidget and add child form elements in formElement().