---
schema_version: 2
id: practice-keep-paragraphs-depth-and-revisions-under-control
title: Keep Paragraphs Depth And Revisions Under Control
kind: practice
tags:
  - drupal
  - paragraphs
  - performance
derived_from:
  - "https://www.drupal.org/project/paragraphs"
  - "https://www.drupal.org/project/entity_reference_revisions"
  - "https://www.drupal.org/project/layout_paragraphs"
relates_to:
  - map-paragraphs-advanced-layout-library-performance
  - map-paragraphs-structured-content-composition
  - practice-batch-load-entities-after-querying-ids
depends_on: []
confidence: high
summary: >-
  Limit nesting, plan for ERR revision growth, and choose widget modes that keep
  large paragraph forms usable.
---
Keep Paragraphs nesting shallow for performance. A workable shape is `node -> paragraph -> paragraph`; deeper nesting should be justified because revision loading and editing forms become more expensive.

Entity Reference Revisions can grow paragraph revision history as host content is revised. Plan retention with a reference-aware cleanup strategy; do not delete paragraph revisions blindly because older host revisions may still point at them. Large paragraph forms may also need module updates, patches, or simpler component models.

For many paragraphs, set the form display widget's default edit mode to `closed` so items are collapsed by default; `preview` shows rendered previews, and `open` keeps edit forms expanded.
