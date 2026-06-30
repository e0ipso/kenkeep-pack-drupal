---
schema_version: 2
id: practice-keep-business-logic-out-of-entity-classes
title: Keep business logic out of entity classes
kind: practice
tags:
  - drupal
  - entities
  - typed-entity
  - architecture
derived_from:
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21ContentEntityBase.php/class/ContentEntityBase/11.x"
  - "https://www.drupal.org/project/typed_entity"
relates_to:
  - map-typed-entity-wrapper-structure
  - map-drupal-entity-form-bases
  - map-media-library-three-component-architecture
depends_on: []
confidence: high
summary: >-
  Put domain behavior in Typed Entity wrappers instead of scattering it through
  entity classes or direct field mutations.
---
For projects using the Typed Entity architecture, keep domain behavior out of entity classes. Treat Drupal entities primarily as fieldable data objects and put rules, state transitions, permissions, and save-side effects in Typed Entity wrapper classes.

Use the repository manager or typed repositories to wrap loaded entities, then call domain methods such as approve(), reject(), canBeEditedBy(), or transition() on the wrapper. This keeps data structure separate from business rules and makes the behavior easier to unit test.
