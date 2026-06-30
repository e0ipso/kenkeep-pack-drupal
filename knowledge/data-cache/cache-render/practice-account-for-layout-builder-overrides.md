---
schema_version: 2
id: practice-account-for-layout-builder-overrides
title: Account For Layout Builder Override Side Effects
kind: practice
tags:
  - drupal
  - layout
  - cache
derived_from:
  - https://www.drupal.org/docs/drupal-apis/layout-api
  - https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21Field%21LayoutSectionItemList.php/class/LayoutSectionItemList/11.x
  - https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21Entity%21LayoutBuilderEntityViewDisplay.php/class/LayoutBuilderEntityViewDisplay/11.x
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
When allowing custom Layout Builder layouts per entity, account for the side effects documented with overrides. Per-entity overrides are stored on each entity in the `layout_builder__layout` field; layout edits save the entity and follow that entity type's revision behavior.

Inline blocks are stored as separate `block_content` entities, so treat them as content entities rather than simple display configuration.
