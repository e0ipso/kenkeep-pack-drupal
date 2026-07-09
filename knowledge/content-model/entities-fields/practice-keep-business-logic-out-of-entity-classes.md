---
type: practice
title: Keep business logic out of entity classes
description: >-
  Put domain behavior in Typed Entity wrappers instead of scattering it through
  entity classes or direct field mutations.
tags:
  - drupal
  - entities
  - typed-entity
  - architecture
kk_schema_version: 3
kk_id: practice-keep-business-logic-out-of-entity-classes
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21ContentEntityBase.php/class/ContentEntityBase/11.x
  - 'https://www.drupal.org/project/typed_entity'
kk_relates_to:
  - map-typed-entity-wrapper-structure
  - map-drupal-entity-form-bases
  - map-media-library-three-component-architecture
kk_depends_on: []
kk_confidence: high
---
For projects using the Typed Entity architecture, keep domain behavior out of entity classes. Treat Drupal entities primarily as fieldable data objects and put rules, state transitions, permissions, and save-side effects in Typed Entity wrapper classes.

Use the repository manager or typed repositories to wrap loaded entities, then call domain methods such as approve(), reject(), canBeEditedBy(), or transition() on the wrapper. This keeps data structure separate from business rules and makes the behavior easier to unit test.

<!-- kk:related:start -->
# Related

- Related: [map-typed-entity-wrapper-structure](/drupal/content-model/entities-fields/map-typed-entity-wrapper-structure.md)
- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-media-library-three-component-architecture](/drupal/content-model/media-seo-search/map-media-library-three-component-architecture.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21ContentEntityBase.php/class/ContentEntityBase/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21ContentEntityBase.php/class/ContentEntityBase/11.x)
[2] [https://www.drupal.org/project/typed_entity](https://www.drupal.org/project/typed_entity)
<!-- kk:citations:end -->
