---
schema_version: 2
summary: media, search, redirects, Pathauto, Metatag, and Views integrations; read before adding editorial discovery or SEO features
---
# Media Seo Search Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Drupal Metatag custom tags and groups**](practice-drupal-metatag-plugins-use-annotated-tags-and-groups.md) to learn about: Metatag extensions add annotated tag and group plugins, then read effective tags through the metatag.manager service. #drupal #seo #metatag #plugins
- Open [**Drupal Pathauto alias generation**](practice-drupal-pathauto-alias-types-patterns-and-generation.md) to learn about: Pathauto provides annotated alias type plugins, tokenized alias patterns, and services for generating or updating entity aliases. #drupal #seo #pathauto #aliases
- Open [**Handle Search API indexing gotchas**](practice-handle-search-api-indexing-gotchas.md) to learn about: Clear indexes after field changes, order processors carefully, and use Views for search pages. #search #drupal #gotcha
- Open [**Register Views handlers in views data**](practice-register-views-handlers-in-views-data.md) to learn about: Views plugin handlers should use current attributes where supported, correct directories, and hook_views_data registration. #drupal #plugins #views

## Components (what exists)
- Open [**Media Library uses state, openers, and add forms**](map-media-library-three-component-architecture.md) to learn about: Media Library selection is organized around MediaLibraryState, opener services, and AddFormBase implementations. #drupal #media #architecture
- Open [**MediaLibraryState defines dialog selection parameters**](map-media-library-state-vocabulary.md) to learn about: MediaLibraryState carries opener ID, allowed types, selected type, remaining slots, and opener parameters. #drupal #media #state
- Open [**Search API concepts and extension points**](map-search-api-concepts-and-extension-points.md) to learn about: Search API indexes content through indexes, servers, datasources, and processors. #search #drupal #api
