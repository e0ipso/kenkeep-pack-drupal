---
type: practice
title: Keep Paragraphs Depth And Revisions Under Control
description: >-
  Limit nesting, plan for ERR revision growth, and choose widget modes that keep
  large paragraph forms usable.
tags:
  - drupal
  - paragraphs
  - performance
kk_schema_version: 3
kk_id: practice-keep-paragraphs-depth-and-revisions-under-control
kk_derived_from:
  - 'https://www.drupal.org/project/paragraphs'
  - 'https://www.drupal.org/project/entity_reference_revisions'
  - 'https://www.drupal.org/project/layout_paragraphs'
kk_relates_to:
  - map-paragraphs-advanced-layout-library-performance
  - map-paragraphs-structured-content-composition
  - practice-batch-load-entities-after-querying-ids
kk_depends_on: []
kk_confidence: high
---
Keep Paragraphs nesting shallow for performance. A workable shape is `node -> paragraph -> paragraph`; deeper nesting should be justified because revision loading and editing forms become more expensive.

Entity Reference Revisions can grow paragraph revision history as host content is revised. Plan retention with a reference-aware cleanup strategy; do not delete paragraph revisions blindly because older host revisions may still point at them. Large paragraph forms may also need module updates, patches, or simpler component models.

For many paragraphs, set the form display widget's default edit mode to `closed` so items are collapsed by default; `preview` shows rendered previews, and `open` keeps edit forms expanded.

<!-- kk:related:start -->
# Related

- Related: [map-paragraphs-advanced-layout-library-performance](/drupal/content-model/layout-paragraphs/map-paragraphs-advanced-layout-library-performance.md)
- Related: [map-paragraphs-structured-content-composition](/drupal/content-model/layout-paragraphs/map-paragraphs-structured-content-composition.md)
- Related: [practice-batch-load-entities-after-querying-ids](/drupal/content-model/entities-fields/practice-batch-load-entities-after-querying-ids.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/project/paragraphs](https://www.drupal.org/project/paragraphs)
[2] [https://www.drupal.org/project/entity_reference_revisions](https://www.drupal.org/project/entity_reference_revisions)
[3] [https://www.drupal.org/project/layout_paragraphs](https://www.drupal.org/project/layout_paragraphs)
<!-- kk:citations:end -->
