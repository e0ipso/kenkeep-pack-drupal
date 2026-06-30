---
schema_version: 2
id: practice-inject-services-into-plugins-with-container-factory
title: Inject services into plugins with ContainerFactoryPluginInterface
kind: practice
tags:
  - drupal
  - plugins
  - dependency-injection
derived_from: []
relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-alter-and-debug-plugin-definitions-through-managers
depends_on: []
confidence: high
summary: >-
  Plugins that need services should use create() and constructor injection
  instead of static Drupal service calls.
---
Plugins that need Drupal services should implement `ContainerFactoryPluginInterface` and provide a static `create()` method. The plugin manager passes configuration, plugin ID, and plugin definition, while the container supplies services.

Use constructor property promotion for injected services and prefer `private readonly` dependencies.

Avoid static calls such as `\Drupal::entityTypeManager()` inside plugins. Plugins that depend on config entities can also implement `calculateDependencies()` so uninstall and configuration synchronization handle those dependencies correctly.
