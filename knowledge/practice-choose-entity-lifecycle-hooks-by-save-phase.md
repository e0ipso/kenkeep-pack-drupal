---
schema_version: 2
id: practice-choose-entity-lifecycle-hooks-by-save-phase
title: Choose entity lifecycle hooks by save phase
kind: practice
tags:
  - drupal
  - entities
  - hooks
derived_from: []
relates_to:
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
  - practice-align-content-entity-keys-with-base-fields
depends_on: []
confidence: medium
summary: >-
  Use the entity lifecycle hook that matches the phase: presave, insert/update,
  postsave, delete, load, or view.
---
Entity lifecycle hooks fire in the order `presave` then `insert` or `update` then `postsave`. Use `presave` for pre-save changes, `insert` for first-save side effects, `update` for post-update reactions, and `delete` for cleanup before deletion.

Use broad hooks such as `entity_presave` with explicit type and bundle guards. Treat `load` hooks sparingly because they affect load performance, and use `view` hooks for render-array changes before display.
