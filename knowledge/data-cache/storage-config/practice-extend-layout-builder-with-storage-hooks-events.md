---
type: practice
title: 'Extend Layout Builder With Storage Plugins, Filters, And Events'
description: >-
  Use SectionStorage plugins, block plugin filters, events, and access checks
  for advanced Layout Builder behavior.
tags:
  - drupal
  - layout
  - plugins
kk_schema_version: 3
kk_id: practice-extend-layout-builder-with-storage-hooks-events
kk_derived_from:
  - 'https://www.drupal.org/docs/drupal-apis/layout-api'
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21SectionStorageInterface.php/interface/SectionStorageInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21Event%21LayoutBuilderEvents.php/class/LayoutBuilderEvents/11.x
kk_relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - map-layout-builder-companion-modules
kk_depends_on: []
kk_confidence: high
---
For non-entity layout contexts such as custom configuration pages, create a custom `SectionStorage` plugin extending `SectionStorageBase`. The plugin should provide a storage id, return a `SectionListInterface` implementation, and can declare that it handles permission checks.

Filter blocks available in Layout Builder with `hook_plugin_filter_block__layout_builder_alter()`. Customize rendered components by subscribing to `LayoutBuilderEvents::SECTION_COMPONENT_BUILD_RENDER_ARRAY` and updating the build array on the event.

Use Layout Builder permissions for administrative access, and call `$section_storage->access('view')` for programmatic access checks.

<!-- kk:related:start -->
# Related

- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
- Related: [map-drupal-mail-flow](/drupal/architecture/services/map-drupal-mail-flow.md)
- Related: [map-layout-builder-companion-modules](/drupal/content-model/layout-paragraphs/map-layout-builder-companion-modules.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/layout-api](https://www.drupal.org/docs/drupal-apis/layout-api)
[2] [https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21SectionStorageInterface.php/interface/SectionStorageInterface/11.x](https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21SectionStorageInterface.php/interface/SectionStorageInterface/11.x)
[3] [https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21Event%21LayoutBuilderEvents.php/class/LayoutBuilderEvents/11.x](https://api.drupal.org/api/drupal/core%21modules%21layout_builder%21src%21Event%21LayoutBuilderEvents.php/class/LayoutBuilderEvents/11.x)
<!-- kk:citations:end -->
