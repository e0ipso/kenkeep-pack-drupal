---
type: practice
title: Define layout plugins by complexity
description: >-
  Use YAML-only layout plugins for simple regions and PHP layout classes for
  configurable layouts.
tags:
  - drupal
  - layout
  - render
kk_schema_version: 3
kk_id: practice-define-layout-plugins-by-complexity
kk_derived_from:
  - 'https://www.drupal.org/docs/drupal-apis/layout-api/how-to-register-layouts'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Layout%21Attribute%21Layout.php/class/Layout/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Layout%21LayoutDefault.php/class/LayoutDefault/11.x
kk_relates_to:
  - map-layout-builder-companion-modules
  - map-layout-builder-page-assembly
  - map-non-form-render-element-types
kk_depends_on: []
kk_confidence: medium
---
Layout plugins provide reusable page layout templates with named regions for Layout Builder and other layout-consuming modules. A `*.layouts.yml` definition can declare the label, category, template, optional `icon_map`, and region labels.

Use YAML-only layouts for simple region containers. Add a PHP layout class when the layout needs configuration, such as width options or computed CSS classes. Layout templates receive `content.<region_name>` and `attributes`, and `icon_map` controls the visual preview shown in the Layout Builder UI.

<!-- kk:related:start -->
# Related

- Related: [map-layout-builder-companion-modules](/drupal/content-model/layout-paragraphs/map-layout-builder-companion-modules.md)
- Related: [map-layout-builder-page-assembly](/drupal/content-model/layout-paragraphs/map-layout-builder-page-assembly.md)
- Related: [map-non-form-render-element-types](/drupal/presentation/frontend-theme/map-non-form-render-element-types.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/layout-api/how-to-register-layouts](https://www.drupal.org/docs/drupal-apis/layout-api/how-to-register-layouts)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Layout%21Attribute%21Layout.php/class/Layout/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Layout%21Attribute%21Layout.php/class/Layout/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Layout%21LayoutDefault.php/class/LayoutDefault/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Layout%21LayoutDefault.php/class/LayoutDefault/11.x)
<!-- kk:citations:end -->
