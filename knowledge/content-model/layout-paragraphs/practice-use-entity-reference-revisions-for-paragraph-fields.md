---
type: practice
title: Use Entity Reference Revisions For Paragraph Fields
description: >-
  Paragraph fields should reference specific paragraph revisions so host
  revisions cascade to child revisions.
tags:
  - drupal
  - paragraphs
  - revisions
  - site-architecture
kk_schema_version: 3
kk_id: practice-use-entity-reference-revisions-for-paragraph-fields
kk_derived_from:
  - 'https://www.drupal.org/project/paragraphs'
  - 'https://www.drupal.org/project/entity_reference_revisions'
kk_relates_to:
  - map-paragraphs-advanced-layout-library-performance
  - map-paragraphs-structured-content-composition
  - practice-keep-paragraphs-depth-and-revisions-under-control
kk_depends_on: []
kk_confidence: high
---
When a site uses Paragraphs, use Entity Reference Revisions for Paragraphs fields rather than standard entity references. A standard entity reference stores `target_id`; ERR stores both `target_id` and `target_revision_id` so the host revision can reference the intended paragraph revision.

Paragraphs already depends on Entity Reference Revisions. Do not add a dependency on `paragraphs` or `entity_reference_revisions` only because this node recommends it. In a contrib module, declare `entity_reference_revisions` directly only when the module's own code uses its API.

This matters because paragraph revision tracking cascades from the host revision to the child paragraph revision. Loading `$item->entity` from the field item resolves the specific referenced paragraph revision.

<!-- kk:related:start -->
# Related

- Related: [map-paragraphs-advanced-layout-library-performance](/drupal/content-model/layout-paragraphs/map-paragraphs-advanced-layout-library-performance.md)
- Related: [map-paragraphs-structured-content-composition](/drupal/content-model/layout-paragraphs/map-paragraphs-structured-content-composition.md)
- Related: [practice-keep-paragraphs-depth-and-revisions-under-control](/drupal/content-model/layout-paragraphs/practice-keep-paragraphs-depth-and-revisions-under-control.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/project/paragraphs](https://www.drupal.org/project/paragraphs)
[2] [https://www.drupal.org/project/entity_reference_revisions](https://www.drupal.org/project/entity_reference_revisions)
<!-- kk:citations:end -->
