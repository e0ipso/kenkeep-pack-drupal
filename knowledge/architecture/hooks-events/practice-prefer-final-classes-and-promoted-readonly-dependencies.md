---
schema_version: 2
id: practice-prefer-final-classes-and-promoted-readonly-dependencies
title: Prefer final classes and promoted readonly dependencies
kind: practice
tags:
  - drupal
  - php
  - classes
derived_from:
  - https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/services-and-dependency-injection-in-drupal
  - https://www.drupal.org/node/3442349
relates_to:
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
  - map-derivative-plugins-generate-dynamic-plugin-instances
depends_on: []
confidence: high
summary: >-
  Default Drupal classes to final and use constructor property promotion with
  readonly injected dependencies.
---
Default classes to `final` unless the class is explicitly designed as an extension point. Use non-final or abstract classes only when inheritance is part of the intended API.

Use constructor property promotion for injected dependencies, preferably with `private readonly` properties. This reduces boilerplate, makes dependencies clear, and keeps injected collaborators immutable after construction.
