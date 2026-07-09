# kenkeep Index: drupal / content-model / layout-paragraphs

↑ Parent: [content-model](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Align content entity keys with base fields**](practice-align-content-entity-keys-with-base-fields.md) to learn about: Content entity entity_keys must match base field names, with revision and langcode keys added when enabled. #drupal #entities #content
- Open [**Define layout plugins by complexity**](practice-define-layout-plugins-by-complexity.md) to learn about: Use YAML-only layout plugins for simple regions and PHP layout classes for configurable layouts. #drupal #layout #render
- Open [**Keep Paragraphs Depth And Revisions Under Control**](practice-keep-paragraphs-depth-and-revisions-under-control.md) to learn about: Limit nesting, plan for ERR revision growth, and choose widget modes that keep large paragraph forms usable. #drupal #paragraphs #performance
- Open [**Use Entity Reference Revisions For Paragraph Fields**](practice-use-entity-reference-revisions-for-paragraph-fields.md) to learn about: Paragraph fields should reference specific paragraph revisions so host revisions cascade to child revisions. #drupal #paragraphs #revisions

## Components (what exists)
- Open [**Advanced Paragraphs Integrations Cover Layouts, Library Items, And Performance**](map-paragraphs-advanced-layout-library-performance.md) to learn about: Layout Paragraphs, Paragraphs Library, and helper modules expand Paragraphs editing and reuse workflows. #drupal #paragraphs #layout
- Open [**Layout Builder Companion Modules Cover Restrictions, Styles, And Attributes**](map-layout-builder-companion-modules.md) to learn about: Related modules constrain available blocks, add UI-managed CSS classes, and expose HTML attribute configuration. #drupal #layout #modules
- Open [**Layout Builder Assembles Pages From Sections And Components**](map-layout-builder-page-assembly.md) to learn about: Layout Builder manages visual page assembly with sections, components, defaults, and optional per-entity overrides. #drupal #layout #content
- Open [**Paragraphs Provide Structured Reusable Content Components**](map-paragraphs-structured-content-composition.md) to learn about: Paragraphs use Entity Reference Revisions to compose structured components with revision-aware parent tracking. #drupal #paragraphs #content

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #layout
- Open [**Account For Layout Builder Override Side Effects**](../../data-cache/cache-render/practice-account-for-layout-builder-overrides.md) — Per-entity overrides, inline blocks, and override edits have cache, entity, and revision consequences.
- Open [**Define layout plugins by complexity**](practice-define-layout-plugins-by-complexity.md) — Use YAML-only layout plugins for simple regions and PHP layout classes for configurable layouts.
- Open [**Advanced Paragraphs Integrations Cover Layouts, Library Items, And Performance**](map-paragraphs-advanced-layout-library-performance.md) — Layout Paragraphs, Paragraphs Library, and helper modules expand Paragraphs editing and reuse workflows.
### #paragraphs
- Open [**Advanced Paragraphs Integrations Cover Layouts, Library Items, And Performance**](map-paragraphs-advanced-layout-library-performance.md) — Layout Paragraphs, Paragraphs Library, and helper modules expand Paragraphs editing and reuse workflows.
- Open [**Paragraphs Provide Structured Reusable Content Components**](map-paragraphs-structured-content-composition.md) — Paragraphs use Entity Reference Revisions to compose structured components with revision-aware parent tracking.
- Open [**Keep Paragraphs Depth And Revisions Under Control**](practice-keep-paragraphs-depth-and-revisions-under-control.md) — Limit nesting, plan for ERR revision growth, and choose widget modes that keep large paragraph forms usable.
### #content
- Open [**Align content entity keys with base fields**](practice-align-content-entity-keys-with-base-fields.md) — Content entity entity_keys must match base field names, with revision and langcode keys added when enabled.
- Open [**Layout Builder Assembles Pages From Sections And Components**](map-layout-builder-page-assembly.md) — Layout Builder manages visual page assembly with sections, components, defaults, and optional per-entity overrides.
- Open [**Paragraphs Provide Structured Reusable Content Components**](map-paragraphs-structured-content-composition.md) — Paragraphs use Entity Reference Revisions to compose structured components with revision-aware parent tracking.
### #entities
- Open [**Use Database API only for custom tables**](../../data-cache/database/practice-use-database-api-only-for-custom-tables.md) — Use Entity API for content and reserve direct Database API queries for custom or audit tables.
- Open [**Use Database API sparingly for custom tables**](../../data-cache/database/practice-use-database-api-sparingly-for-custom-tables.md) — Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs.
- Open [**Typed Entity wrapper structure**](../entities-fields/map-typed-entity-wrapper-structure.md) — Business wrappers live under WrappedEntities and typed repository plugins expose wrapped entity loading.
### #modules
- Open [**Layout Builder Companion Modules Cover Restrictions, Styles, And Attributes**](map-layout-builder-companion-modules.md) — Related modules constrain available blocks, add UI-managed CSS classes, and expose HTML attribute configuration.
- Open [**Keep install hooks for install-time work**](../../tooling/practice-keep-install-hooks-for-install-time-work.md) — Use module install hooks for install/uninstall tasks, non-entity schemas, and requirements, not later schema updates.
### #performance
- Open [**Batch-load entities after querying IDs**](../entities-fields/practice-batch-load-entities-after-querying-ids.md) — Query IDs first, then call loadMultiple instead of loading each entity one by one.
- Open [**Keep Paragraphs Depth And Revisions Under Control**](practice-keep-paragraphs-depth-and-revisions-under-control.md) — Limit nesting, plan for ERR revision growth, and choose widget modes that keep large paragraph forms usable.
### #render
- Open [**Build render arrays with cache metadata**](../../data-cache/cache-render/practice-build-render-arrays-with-cache-metadata.md) — Attach cache tags, contexts, max-age, libraries, and lazy builders directly to Drupal render arrays.
- Open [**Use cacheable dependencies for render cache metadata**](../../data-cache/cache-render/practice-use-cacheable-dependencies-for-render-cache-metadata.md) — Attach cache metadata from entities/config with Drupal helpers instead of manually building cache tags.
- Open [**Vary render cache with cache contexts**](../../data-cache/cache-render/practice-vary-render-cache-with-cache-contexts.md) — Use cache contexts to vary rendered output by user, permissions, route, URL, language, theme, or query args.
### #revisions
- Open [**Use Entity Reference Revisions For Paragraph Fields**](practice-use-entity-reference-revisions-for-paragraph-fields.md) — Paragraph fields should reference specific paragraph revisions so host revisions cascade to child revisions.