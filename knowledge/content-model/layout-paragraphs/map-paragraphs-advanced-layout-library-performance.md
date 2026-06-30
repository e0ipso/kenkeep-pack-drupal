---
schema_version: 2
id: map-paragraphs-advanced-layout-library-performance
title: 'Advanced Paragraphs Integrations Cover Layouts, Library Items, And Performance'
kind: map
tags:
  - drupal
  - paragraphs
  - layout
derived_from:
  - "https://www.drupal.org/project/layout_paragraphs"
  - "https://www.drupal.org/project/paragraphs_library"
  - "https://www.drupal.org/project/paragraphs"
relates_to:
  - practice-account-for-layout-builder-overrides
  - practice-define-layout-plugins-by-complexity
  - practice-extend-layout-builder-with-storage-hooks-events
depends_on: []
confidence: high
summary: >-
  Layout Paragraphs, Paragraphs Library, and helper modules expand Paragraphs
  editing and reuse workflows.
---
Advanced Paragraphs architectures commonly use Layout Paragraphs for drag-and-drop Layout API integration, Paragraphs Library for reusable paragraph instances, and helper modules such as Paragraphs Browser or Mercury Editor.

Layout Paragraphs is configured by setting the host paragraph reference field widget to `layout_paragraphs`, with settings such as preview view mode, nesting depth, and whether layouts are required. Section paragraph types can act as layout containers when the Layout Paragraphs behavior is enabled on the type.

Paragraphs Library stores reusable paragraph instances as library items that editors can reference through the paragraph widget's `From library` option.
