---
schema_version: 2
id: practice-define-layout-plugins-by-complexity
title: Define layout plugins by complexity
kind: practice
tags:
  - drupal
  - layout
  - render
derived_from: []
relates_to:
  - map-layout-builder-companion-modules
  - map-layout-builder-page-assembly
  - map-non-form-render-element-types
depends_on: []
confidence: medium
summary: >-
  Use YAML-only layout plugins for simple regions and PHP layout classes for
  configurable layouts.
---
Layout plugins provide reusable page layout templates with named regions for Layout Builder and other layout-consuming modules. A `*.layouts.yml` definition can declare the label, category, template, optional `icon_map`, and region labels.

Use YAML-only layouts for simple region containers. Add a PHP layout class when the layout needs configuration, such as width options or computed CSS classes. Layout templates receive `content.<region_name>` and `attributes`, and `icon_map` controls the visual preview shown in the Layout Builder UI.
