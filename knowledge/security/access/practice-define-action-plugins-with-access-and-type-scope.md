---
schema_version: 2
id: practice-define-action-plugins-with-access-and-type-scope
title: Define action plugins with access and type scope
kind: practice
tags:
  - drupal
  - plugins
  - actions
derived_from: []
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
Action plugins use the `Plugin\Action` namespace and the `#[Action(...)]` attribute. Set `type` when the action should apply only to specific entity types; omit it when the action should apply broadly.

Simple actions can extend `ActionBase` and implement `execute()`. Configurable actions should extend `ConfigurableActionBase` and implement `defaultConfiguration()`, `buildConfigurationForm()`, and `submitConfigurationForm()`.

Implement `access()` carefully: it must support both object-return and boolean-return modes, since action plugins are used by Views Bulk Operations and the core action system.
