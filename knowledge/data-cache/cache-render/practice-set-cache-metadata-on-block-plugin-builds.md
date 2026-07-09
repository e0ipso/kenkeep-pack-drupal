---
type: practice
title: Set cache metadata on block plugin builds
description: >-
  Block plugin build arrays need explicit cache metadata because Drupal caches
  blocks aggressively.
tags:
  - drupal
  - plugins
  - blocks
  - cache
kk_schema_version: 3
kk_id: practice-set-cache-metadata-on-block-plugin-builds
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Block%21BlockPluginInterface.php/interface/BlockPluginInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Block%21Attribute%21Block.php/class/Block/11.x
kk_relates_to:
  - practice-build-configurable-and-context-aware-plugins-with-cache-contexts
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
kk_depends_on: []
kk_confidence: high
---
Block plugins live under `Plugin\Block` and use the `#[Block(...)]` attribute with values such as `id`, `admin_label`, and `category`.

Always provide cacheability metadata. Put it in the returned render array's `#cache` metadata or override the block plugin cache methods for cache tags, contexts, and max-age.

Use `blockForm()` and `blockSubmit()` for block configuration. Use `context_definitions` in the block attribute when the block needs route or entity context, and have `blockAccess()` return an `AccessResultInterface`.

<!-- kk:related:start -->
# Related

- Related: [practice-build-configurable-and-context-aware-plugins-with-cache-contexts](/drupal/data-cache/cache-render/practice-build-configurable-and-context-aware-plugins-with-cache-contexts.md)
- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
- Related: [map-drupal-mail-flow](/drupal/architecture/services/map-drupal-mail-flow.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Block%21BlockPluginInterface.php/interface/BlockPluginInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Block%21BlockPluginInterface.php/interface/BlockPluginInterface/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Block%21Attribute%21Block.php/class/Block/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Block%21Attribute%21Block.php/class/Block/11.x)
<!-- kk:citations:end -->
