---
schema_version: 2
id: map-layout-builder-page-assembly
title: Layout Builder Assembles Pages From Sections And Components
kind: map
tags:
  - drupal
  - layout
  - content
derived_from:
  - "https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21Section.php/class/Section/11.x"
  - "https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21SectionComponent.php/class/SectionComponent/11.x"
  - "https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21Plugin%21SectionStorage%21DefaultsSectionStorage.php/class/DefaultsSectionStorage/11.x"
  - "https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21Plugin%21SectionStorage%21OverridesSectionStorage.php/class/OverridesSectionStorage/11.x"
relates_to:
  - practice-account-for-layout-builder-overrides
  - practice-align-content-entity-keys-with-base-fields
  - practice-define-layout-plugins-by-complexity
depends_on: []
confidence: high
summary: >-
  Layout Builder manages visual page assembly with sections, components,
  defaults, and optional per-entity overrides.
---
Layout Builder is the core Drupal module for visual page assembly, placing drag-and-drop blocks into layout regions. It is used for content type defaults, per-entity overrides, and landing pages.

Layout Builder stores default layouts on entity view display configuration through `DefaultsSectionStorage`; per-entity layouts use `OverridesSectionStorage` and entity field storage. A `Section` contains the layout plugin, layout settings, and `SectionComponent` block instances assigned to regions.

Enable it from `/admin/structure/types/manage/{type}/display` by turning on `Use Layout Builder`; only enable per-content customization when individual entity overrides are needed.
