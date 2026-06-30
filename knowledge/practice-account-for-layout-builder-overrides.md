---
schema_version: 2
id: practice-account-for-layout-builder-overrides
title: Account For Layout Builder Override Side Effects
kind: practice
tags:
  - drupal
  - layout
  - cache
derived_from: []
relates_to:
  - map-layout-builder-companion-modules
  - map-layout-builder-page-assembly
  - map-paragraphs-advanced-layout-library-performance
depends_on: []
confidence: medium
summary: >-
  Per-entity overrides, inline blocks, and override edits have cache, entity,
  and revision consequences.
---
When allowing custom Layout Builder layouts per entity, account for the side effects documented with overrides. Per-entity overrides create individual cache entries, and layout changes create entity revisions when overrides are used.

Inline blocks are stored as separate `block_content` entities, so treat them as content entities rather than simple display configuration.
