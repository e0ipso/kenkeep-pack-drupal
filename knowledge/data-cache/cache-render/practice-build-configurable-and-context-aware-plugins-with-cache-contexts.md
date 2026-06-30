---
schema_version: 2
id: practice-build-configurable-and-context-aware-plugins-with-cache-contexts
title: Build configurable and context-aware plugins with cache contexts
kind: practice
tags:
  - drupal
  - plugins
  - configuration
  - cache
derived_from:
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Plugin%21ContextAwarePluginInterface.php/interface/ContextAwarePluginInterface/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Plugin%21ContextAwarePluginTrait.php/trait/ContextAwarePluginTrait/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Block%21BlockPluginInterface.php/interface/BlockPluginInterface/11.x
relates_to:
  - practice-set-cache-metadata-on-block-plugin-builds
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
depends_on: []
confidence: high
summary: >-
  Plugin configuration forms and context-aware plugins should save settings and
  return context-sensitive cache metadata.
---
Configurable block plugins should provide defaults with `defaultConfiguration()`, expose settings through `blockForm()`, and save submitted values in `blockSubmit()`. Other plugin types follow the same pattern with their own form methods.

Use context definitions when a plugin needs contextual values such as the current node, user, or term. Context-aware plugins can implement `ContextAwarePluginInterface`, use `ContextAwarePluginTrait`, and retrieve values with `getContextValue()`.

When build output depends on context, include matching cache metadata, such as route contexts and entity cache tags.
