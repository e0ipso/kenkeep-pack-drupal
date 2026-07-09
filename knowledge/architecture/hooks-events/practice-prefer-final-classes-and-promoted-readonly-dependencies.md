---
type: practice
title: Prefer final classes and promoted readonly dependencies
description: >-
  Default Drupal classes to final and use constructor property promotion with
  readonly injected dependencies.
tags:
  - drupal
  - php
  - classes
kk_schema_version: 3
kk_id: practice-prefer-final-classes-and-promoted-readonly-dependencies
kk_derived_from:
  - >-
    https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/services-and-dependency-injection-in-drupal
  - 'https://www.drupal.org/node/3442349'
kk_relates_to:
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
  - map-derivative-plugins-generate-dynamic-plugin-instances
kk_depends_on: []
kk_confidence: high
---
Default classes to `final` unless the class is explicitly designed as an extension point. Use non-final or abstract classes only when inheritance is part of the intended API.

Use constructor property promotion for injected dependencies, preferably with `private readonly` properties. This reduces boilerplate, makes dependencies clear, and keeps injected collaborators immutable after construction.

<!-- kk:related:start -->
# Related

- Related: [map-advanced-drupal-service-patterns](/drupal/architecture/services/map-advanced-drupal-service-patterns.md)
- Related: [map-ajax-command-reference-surface](/drupal/presentation/frontend-theme/map-ajax-command-reference-surface.md)
- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/services-and-dependency-injection-in-drupal](https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/services-and-dependency-injection-in-drupal)
[2] [https://www.drupal.org/node/3442349](https://www.drupal.org/node/3442349)
<!-- kk:citations:end -->
