---
schema_version: 2
id: practice-define-layout-plugins-by-complexity
title: Define layout plugins by complexity
kind: practice
tags:
  - drupal
  - layout
  - render
derived_from:
  - "https://www.drupal.org/docs/drupal-apis/layout-api/how-to-register-layouts"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Layout%21Attribute%21Layout.php/class/Layout/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Layout%21LayoutDefault.php/class/LayoutDefault/11.x"
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
