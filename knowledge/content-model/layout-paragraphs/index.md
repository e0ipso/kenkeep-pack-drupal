---
schema_version: 2
summary: Layout Builder and Paragraphs composition patterns; read before building visual content assemblies
---
# Layout Paragraphs Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Align content entity keys with base fields**](practice-align-content-entity-keys-with-base-fields.md) to learn about: Content entity entity_keys must match base field names, with revision and langcode keys added when enabled. #drupal #entities #content
- Open [**Define layout plugins by complexity**](practice-define-layout-plugins-by-complexity.md) to learn about: Use YAML-only layout plugins for simple regions and PHP layout classes for configurable layouts. #drupal #layout #render
- Open [**Keep Paragraphs Depth And Revisions Under Control**](practice-keep-paragraphs-depth-and-revisions-under-control.md) to learn about: Limit nesting, plan for ERR revision growth, and choose widget modes that keep large paragraph forms usable. #drupal #paragraphs #performance
- Open [**Use Entity Reference Revisions For Paragraph Fields**](practice-use-entity-reference-revisions-for-paragraph-fields.md) to learn about: Paragraph fields should reference specific paragraph revisions so host revisions cascade to child revisions. #drupal #paragraphs #revisions

## Components (what exists)
- Open [**Advanced Paragraphs Integrations Cover Layouts, Library Items, And Performance**](map-paragraphs-advanced-layout-library-performance.md) to learn about: Layout Paragraphs, Paragraphs Library, and helper modules expand Paragraphs editing and reuse workflows. #drupal #paragraphs #layout
- Open [**Layout Builder Assembles Pages From Sections And Components**](map-layout-builder-page-assembly.md) to learn about: Layout Builder manages visual page assembly with sections, components, defaults, and optional per-entity overrides. #drupal #layout #content
- Open [**Layout Builder Companion Modules Cover Restrictions, Styles, And Attributes**](map-layout-builder-companion-modules.md) to learn about: Related modules constrain available blocks, add UI-managed CSS classes, and expose HTML attribute configuration. #drupal #layout #modules
- Open [**Paragraphs Provide Structured Reusable Content Components**](map-paragraphs-structured-content-composition.md) to learn about: Paragraphs use Entity Reference Revisions to compose structured components with revision-aware parent tracking. #drupal #paragraphs #content
