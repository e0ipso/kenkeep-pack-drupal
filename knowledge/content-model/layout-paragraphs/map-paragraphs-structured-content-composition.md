---
type: map
title: Paragraphs Provide Structured Reusable Content Components
description: >-
  Paragraphs use Entity Reference Revisions to compose structured components
  with revision-aware parent tracking.
tags:
  - drupal
  - paragraphs
  - content
kk_schema_version: 3
kk_id: map-paragraphs-structured-content-composition
kk_derived_from:
  - 'https://www.drupal.org/project/paragraphs'
  - 'https://www.drupal.org/project/entity_reference_revisions'
kk_relates_to:
  - practice-align-content-entity-keys-with-base-fields
  - practice-keep-paragraphs-depth-and-revisions-under-control
  - practice-use-entity-reference-revisions-for-paragraph-fields
kk_depends_on: []
kk_confidence: high
---
Paragraphs is a contrib module for structured content composition through reusable components. It depends on Entity Reference Revisions so host content can reference specific paragraph revisions.

Paragraph entities track parent metadata with `parent_type`, `parent_id`, and `parent_field_name`; behavior plugin configuration is stored in `behavior_settings`. The main paragraph tables include `paragraphs_item`, `paragraphs_item_field_data`, `paragraphs_item_revision`, and `paragraphs_item_revision_field_data`.

Fields that store paragraphs should use the `entity_reference_revisions` field type targeting `paragraph`, with handler settings limiting allowed paragraph bundles for the host field.

<!-- kk:related:start -->
# Related

- Related: [practice-align-content-entity-keys-with-base-fields](/drupal/content-model/layout-paragraphs/practice-align-content-entity-keys-with-base-fields.md)
- Related: [practice-keep-paragraphs-depth-and-revisions-under-control](/drupal/content-model/layout-paragraphs/practice-keep-paragraphs-depth-and-revisions-under-control.md)
- Related: [practice-use-entity-reference-revisions-for-paragraph-fields](/drupal/content-model/layout-paragraphs/practice-use-entity-reference-revisions-for-paragraph-fields.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/project/paragraphs](https://www.drupal.org/project/paragraphs)
[2] [https://www.drupal.org/project/entity_reference_revisions](https://www.drupal.org/project/entity_reference_revisions)
<!-- kk:citations:end -->
