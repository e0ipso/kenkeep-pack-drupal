---
schema_version: 2
id: practice-set-cache-metadata-on-block-plugin-builds
title: Set cache metadata on block plugin builds
kind: practice
tags:
  - drupal
  - plugins
  - blocks
  - cache
derived_from: []
relates_to:
  - practice-build-configurable-and-context-aware-plugins-with-cache-contexts
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
depends_on: []
confidence: high
summary: >-
  Block plugin build arrays need explicit cache metadata because Drupal caches
  blocks aggressively.
---
Block plugins live under `Plugin\Block` and use the `#[Block(...)]` attribute with values such as `id`, `admin_label`, and `category`.

Always set `#cache` metadata in `build()`. Blocks are cached aggressively, so cache tags, contexts, or max-age should be part of the returned render array.

Use `blockForm()` and `blockSubmit()` for block configuration. Use `context_definitions` in the block attribute when the block needs route or entity context, and have `blockAccess()` return an `AccessResultInterface`.
