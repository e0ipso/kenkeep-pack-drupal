---
type: practice
title: Choose entity lifecycle hooks by save phase
description: >-
  Use the entity lifecycle hook that matches the phase: presave, insert/update,
  predelete/delete, load, or view.
tags:
  - drupal
  - entities
  - hooks
kk_schema_version: 3
kk_id: practice-choose-entity-lifecycle-hooks-by-save-phase
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21entity.api.php/group/entity_crud/11.x
kk_relates_to:
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
  - practice-align-content-entity-keys-with-base-fields
kk_depends_on: []
kk_confidence: medium
---
Entity save hooks fire in the order `presave`, then `insert` for new entities or `update` for existing entities. Core has entity class `postSave()` methods, but no generic `hook_entity_postsave()` hook. Use `presave` for pre-storage changes and `insert` or `update` for side effects after the entity has been written.

Use broad hooks such as `hook_entity_presave()` with explicit type and bundle guards. Use `predelete` for cleanup that must happen before deletion and `delete` for reactions after deletion. Treat `load` hooks sparingly because they affect load performance, and use `view` hooks for render-array changes before display.

<!-- kk:related:start -->
# Related

- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-typed-entity-wrapper-structure](/drupal/content-model/entities-fields/map-typed-entity-wrapper-structure.md)
- Related: [practice-align-content-entity-keys-with-base-fields](/drupal/content-model/layout-paragraphs/practice-align-content-entity-keys-with-base-fields.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21entity.api.php/group/entity_crud/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21entity.api.php/group/entity_crud/11.x)
<!-- kk:citations:end -->
