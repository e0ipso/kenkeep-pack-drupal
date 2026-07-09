---
type: practice
title: Build configurable and context-aware plugins with cache contexts
description: >-
  Plugin configuration forms and context-aware plugins should save settings and
  return context-sensitive cache metadata.
tags:
  - drupal
  - plugins
  - configuration
  - cache
kk_schema_version: 3
kk_id: practice-build-configurable-and-context-aware-plugins-with-cache-contexts
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Plugin%21ContextAwarePluginInterface.php/interface/ContextAwarePluginInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Plugin%21ContextAwarePluginTrait.php/trait/ContextAwarePluginTrait/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Block%21BlockPluginInterface.php/interface/BlockPluginInterface/11.x
kk_relates_to:
  - practice-set-cache-metadata-on-block-plugin-builds
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
kk_depends_on: []
kk_confidence: high
---
Configurable block plugins should provide defaults with `defaultConfiguration()`, expose settings through `blockForm()`, and save submitted values in `blockSubmit()`. Other plugin types follow the same pattern with their own form methods.

Use context definitions when a plugin needs contextual values such as the current node, user, or term. Context-aware plugins can implement `ContextAwarePluginInterface`, use `ContextAwarePluginTrait`, and retrieve values with `getContextValue()`.

When build output depends on context, include matching cache metadata, such as route contexts and entity cache tags.

<!-- kk:related:start -->
# Related

- Related: [practice-set-cache-metadata-on-block-plugin-builds](/drupal/data-cache/cache-render/practice-set-cache-metadata-on-block-plugin-builds.md)
- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
- Related: [map-drupal-mail-flow](/drupal/architecture/services/map-drupal-mail-flow.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Plugin%21ContextAwarePluginInterface.php/interface/ContextAwarePluginInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Plugin%21ContextAwarePluginInterface.php/interface/ContextAwarePluginInterface/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Plugin%21ContextAwarePluginTrait.php/trait/ContextAwarePluginTrait/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Plugin%21ContextAwarePluginTrait.php/trait/ContextAwarePluginTrait/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Block%21BlockPluginInterface.php/interface/BlockPluginInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Block%21BlockPluginInterface.php/interface/BlockPluginInterface/11.x)
<!-- kk:citations:end -->
