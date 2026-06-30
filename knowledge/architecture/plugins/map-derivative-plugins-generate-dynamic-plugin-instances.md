---
schema_version: 2
id: map-derivative-plugins-generate-dynamic-plugin-instances
title: Derivative plugins generate dynamic plugin instances
kind: map
tags:
  - drupal
  - plugins
  - derivatives
derived_from: []
relates_to:
  - practice-alter-and-debug-plugin-definitions-through-managers
  - practice-build-configurable-and-context-aware-plugins-with-cache-contexts
  - practice-define-action-plugins-with-access-and-type-scope
depends_on: []
confidence: high
summary: >-
  A deriver creates multiple plugin definitions from one base plugin using
  dynamic data.
---
Derivative plugins generate multiple plugin instances from a single plugin class based on dynamic data such as config entities or database content.

The base plugin declares a `deriver` class in its attribute. At runtime, the plugin can inspect `$this->getDerivativeId()`, `$this->getPluginId()`, and `$this->getBaseId()` to distinguish the selected derivative.

The deriver class returns definitions from `getDerivativeDefinitions()`. A DI-aware deriver implements `ContainerDeriverInterface`, and derivative definitions can set labels and config dependencies per generated plugin.
