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
derived_from: []
relates_to:
  - map-typed-entity-wrapper-structure
  - map-drupal-entity-form-bases
  - map-media-library-three-component-architecture
depends_on: []
confidence: high
summary: >-
  Put entity behavior in Typed Entity wrappers, not in entity classes or direct
  field mutations.
---
Business logic must not live in entity classes. Treat entities as data containers and put behavior, rules, state transitions, permissions, and save-side effects in Typed Entity wrapper classes.

Use the repository manager or typed repositories to wrap loaded entities, then call domain methods such as approve(), reject(), canBeEditedBy(), or transition() on the wrapper. This keeps data structure separate from business rules and makes the behavior easier to unit test.
