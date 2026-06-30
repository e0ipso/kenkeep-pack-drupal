---
schema_version: 2
id: practice-use-entity-reference-revisions-for-paragraph-fields
title: Use Entity Reference Revisions For Paragraph Fields
kind: practice
tags:
  - drupal
  - paragraphs
  - revisions
derived_from: []
relates_to:
  - map-paragraphs-advanced-layout-library-performance
  - map-paragraphs-structured-content-composition
  - practice-keep-paragraphs-depth-and-revisions-under-control
depends_on: []
confidence: high
summary: >-
  Paragraph fields should reference specific paragraph revisions so host
  revisions cascade to child revisions.
---
Use Entity Reference Revisions for Paragraphs fields rather than standard entity references. A standard entity reference points to the latest revision, while ERR stores both `target_id` and `target_revision_id`.

This matters because paragraph revision tracking cascades from the host revision to the child paragraph revision. Loading `$item->entity` from the field item resolves the specific referenced paragraph revision.
