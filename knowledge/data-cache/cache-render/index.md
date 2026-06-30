---
schema_version: 2
summary: render arrays, cacheability metadata, cache tags, cache contexts, and invalidation; read before changing rendered output
---
# Cache Render Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Account For Layout Builder Override Side Effects**](practice-account-for-layout-builder-overrides.md) to learn about: Per-entity overrides, inline blocks, and override edits have cache, entity, and revision consequences. #drupal #layout #cache
- Open [**Account for render cache max-age gotchas**](practice-account-for-render-cache-max-age-gotchas.md) to learn about: Treat render cache max-age as restrictive and unreliable for some anonymous/page-cache cases. #cache #render #gotcha
- Open [**Build configurable and context-aware plugins with cache contexts**](practice-build-configurable-and-context-aware-plugins-with-cache-contexts.md) to learn about: Plugin configuration forms and context-aware plugins should save settings and return context-sensitive cache metadata. #drupal #plugins #configuration #cache
- Open [**Build field formatters as render-array producers**](practice-field-formatters-return-render-arrays.md) to learn about: Field formatters live under Plugin\Field\FieldFormatter and return render arrays from viewElements(). #drupal #fields #formatters
- Open [**Build render arrays with cache metadata**](practice-build-render-arrays-with-cache-metadata.md) to learn about: Attach cache tags, contexts, max-age, libraries, and lazy builders directly to Drupal render arrays. #drupal #render #cache
- Open [**Cache computed service data with CacheBackendInterface**](practice-cache-computed-service-data-with-cachebackendinterface.md) to learn about: Use CacheBackendInterface in services for computed data and attach tags for invalidation across bins. #drupal #services #cache
- Open [**Carry cache metadata through token replacements**](practice-token-replacements-must-carry-cache-metadata.md) to learn about: Token replacement hooks and token service usage must attach bubbleable metadata for every data source used. #drupal #tokens #cache
- Open [**Define and replace custom tokens with bubbleable metadata**](practice-define-and-replace-custom-tokens-with-bubbleable-metadata.md) to learn about: Custom token types and replacements should declare token info, handle chained tokens, and add cache dependencies. #drupal #tokens #cache
- Open [**Set cache metadata on block plugin builds**](practice-set-cache-metadata-on-block-plugin-builds.md) to learn about: Block plugin build arrays need explicit cache metadata because Drupal caches blocks aggressively. #drupal #plugins #blocks #cache
- Open [**Tag cache entries for targeted invalidation**](practice-tag-cache-entries-for-targeted-invalidation.md) to learn about: Attach cache tags that identify the data a cache item depends on so updates invalidate the right entries. #drupal #cache #invalidation
- Open [**Use cacheable dependencies for render cache metadata**](practice-use-cacheable-dependencies-for-render-cache-metadata.md) to learn about: Attach cache metadata from entities/config with Drupal helpers instead of manually building cache tags. #cache #render #drupal
- Open [**Use display modes for entity rendering**](practice-use-display-modes-for-entity-rendering.md) to learn about: Define Drupal view and form modes in config, then render entities through the view builder. #drupal #render #display
- Open [**Use tagged breadcrumb builders for route-specific breadcrumb trails**](practice-custom-breadcrumb-builders.md) to learn about: Create a breadcrumb builder when the route needs a trail that differs from the URL-derived default. #drupal #routing #breadcrumbs #cache
- Open [**Vary render cache with cache contexts**](practice-vary-render-cache-with-cache-contexts.md) to learn about: Use cache contexts to vary rendered output by user, permissions, route, URL, language, theme, or query args. #drupal #cache #render

## Components (what exists)
_None._

