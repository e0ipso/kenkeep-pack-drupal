---
schema_version: 2
id: practice-define-action-plugins-with-access-and-type-scope
title: Define action plugins with access and type scope
kind: practice
tags:
  - drupal
  - plugins
  - actions
derived_from:
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Action%21Attribute%21Action.php/class/Action/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Action%21ActionInterface.php/function/ActionInterface%3A%3Aaccess/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Action%21ConfigurableActionBase.php/class/ConfigurableActionBase/11.x
relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-alter-and-debug-plugin-definitions-through-managers
depends_on: []
confidence: high
summary: >-
  Action plugins live under Plugin\Action and should declare scope, access
  behavior, and configuration as needed.
---
Define new action plugins in the `Plugin\Action` namespace with the current `#[Action(...)]` attribute. Set `type` when the action should apply only to specific entity types; omit it when the action should apply broadly.

Simple actions can extend `ActionBase` and implement `execute()`. Configurable actions should extend `ConfigurableActionBase` and implement `defaultConfiguration()`, `buildConfigurationForm()`, and `submitConfigurationForm()`.

Implement `access()` carefully: return an `AccessResultInterface` when `$return_as_object` is TRUE and a boolean otherwise, matching the action plugin interface.
