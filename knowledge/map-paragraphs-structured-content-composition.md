---
schema_version: 2
id: map-paragraphs-structured-content-composition
title: Paragraphs Provide Structured Reusable Content Components
kind: map
tags:
  - drupal
  - paragraphs
  - content
derived_from: []
relates_to:
  - practice-align-content-entity-keys-with-base-fields
  - practice-keep-paragraphs-depth-and-revisions-under-control
  - practice-use-entity-reference-revisions-for-paragraph-fields
depends_on: []
confidence: high
summary: >-
  Paragraphs use Entity Reference Revisions to compose structured components
  with revision-aware parent tracking.
---
Paragraphs is a contrib module for structured content composition through reusable components. It depends on Entity Reference Revisions so host content can reference specific paragraph revisions.

Paragraph entities track parent metadata with `parent_type`, `parent_id`, and `parent_field_name`; behavior plugin configuration is stored in `behavior_settings`. The main paragraph tables include `paragraphs_item`, `paragraphs_item_field_data`, `paragraphs_item_revision`, and `paragraphs_item_revision_field_data`.

Fields that store paragraphs should use the `entity_reference_revisions` field type targeting `paragraph`, with handler settings limiting allowed paragraph bundles for the host field.
