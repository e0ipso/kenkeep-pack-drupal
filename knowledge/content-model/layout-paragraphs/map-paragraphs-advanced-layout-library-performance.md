---
type: map
title: 'Advanced Paragraphs Integrations Cover Layouts, Library Items, And Performance'
description: >-
  Layout Paragraphs, Paragraphs Library, and helper modules expand Paragraphs
  editing and reuse workflows.
tags:
  - drupal
  - paragraphs
  - layout
  - site-architecture
kk_schema_version: 3
kk_id: map-paragraphs-advanced-layout-library-performance
kk_derived_from:
  - 'https://www.drupal.org/project/layout_paragraphs'
  - 'https://www.drupal.org/project/paragraphs_library'
  - 'https://www.drupal.org/project/paragraphs'
kk_relates_to:
  - practice-account-for-layout-builder-overrides
  - practice-define-layout-plugins-by-complexity
  - practice-extend-layout-builder-with-storage-hooks-events
kk_depends_on: []
kk_confidence: high
---
Advanced Paragraphs architectures commonly use Layout Paragraphs for drag-and-drop Layout API integration, Paragraphs Library for reusable paragraph instances, and helper modules such as Paragraphs Browser or Mercury Editor.

Layout Paragraphs is configured by setting the host paragraph reference field widget to `layout_paragraphs`, with settings such as preview view mode, nesting depth, and whether layouts are required. Section paragraph types can act as layout containers when the Layout Paragraphs behavior is enabled on the type.

Paragraphs Library stores reusable paragraph instances as library items that editors can reference through the paragraph widget's `From library` option.

<!-- kk:related:start -->
# Related

- Related: [practice-account-for-layout-builder-overrides](/drupal/data-cache/cache-render/practice-account-for-layout-builder-overrides.md)
- Related: [practice-define-layout-plugins-by-complexity](/drupal/content-model/layout-paragraphs/practice-define-layout-plugins-by-complexity.md)
- Related: [practice-extend-layout-builder-with-storage-hooks-events](/drupal/data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/project/layout_paragraphs](https://www.drupal.org/project/layout_paragraphs)
[2] [https://www.drupal.org/project/paragraphs_library](https://www.drupal.org/project/paragraphs_library)
[3] [https://www.drupal.org/project/paragraphs](https://www.drupal.org/project/paragraphs)
<!-- kk:citations:end -->
