---
type: practice
title: Account For Layout Builder Override Side Effects
description: >-
  Per-entity overrides, inline blocks, and override edits have cache, entity,
  and revision consequences.
tags:
  - drupal
  - layout
  - cache
kk_schema_version: 3
kk_id: practice-account-for-layout-builder-overrides
kk_derived_from:
  - 'https://www.drupal.org/docs/drupal-apis/layout-api'
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21Field%21LayoutSectionItemList.php/class/LayoutSectionItemList/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21Entity%21LayoutBuilderEntityViewDisplay.php/class/LayoutBuilderEntityViewDisplay/11.x
kk_relates_to:
  - map-layout-builder-companion-modules
  - map-layout-builder-page-assembly
  - map-paragraphs-advanced-layout-library-performance
kk_depends_on: []
kk_confidence: medium
---
When allowing custom Layout Builder layouts per entity, account for the side effects documented with overrides. Per-entity overrides are stored on each entity in the `layout_builder__layout` field; layout edits save the entity and follow that entity type's revision behavior.

Inline blocks are stored as separate `block_content` entities, so treat them as content entities rather than simple display configuration.

<!-- kk:related:start -->
# Related

- Related: [map-layout-builder-companion-modules](/drupal/content-model/layout-paragraphs/map-layout-builder-companion-modules.md)
- Related: [map-layout-builder-page-assembly](/drupal/content-model/layout-paragraphs/map-layout-builder-page-assembly.md)
- Related: [map-paragraphs-advanced-layout-library-performance](/drupal/content-model/layout-paragraphs/map-paragraphs-advanced-layout-library-performance.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/layout-api](https://www.drupal.org/docs/drupal-apis/layout-api)
[2] [https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21Field%21LayoutSectionItemList.php/class/LayoutSectionItemList/11.x](https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21Field%21LayoutSectionItemList.php/class/LayoutSectionItemList/11.x)
[3] [https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21Entity%21LayoutBuilderEntityViewDisplay.php/class/LayoutBuilderEntityViewDisplay/11.x](https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21Entity%21LayoutBuilderEntityViewDisplay.php/class/LayoutBuilderEntityViewDisplay/11.x)
<!-- kk:citations:end -->
