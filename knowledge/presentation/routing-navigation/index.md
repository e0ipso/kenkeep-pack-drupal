---
schema_version: 2
summary: routes, menus, breadcrumbs, links, URL generation, redirects, and modal route behavior; read before changing navigation
---
# Routing Navigation Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

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

