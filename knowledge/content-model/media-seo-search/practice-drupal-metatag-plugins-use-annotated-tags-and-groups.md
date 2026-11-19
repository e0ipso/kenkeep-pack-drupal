---
type: practice
title: Drupal Metatag custom tags and groups
description: >-
  Metatag extensions add annotated tag and group plugins, then read effective
  tags through the metatag.manager service.
tags:
  - drupal
  - seo
  - metatag
  - plugins
kk_schema_version: 3
kk_id: practice-drupal-metatag-plugins-use-annotated-tags-and-groups
kk_derived_from:
  - 'https://www.drupal.org/project/metatag'
  - 'https://www.drupal.org/project/schema_metatag'
kk_relates_to:
  - practice-drupal-field-group-formatters-use-annotations
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
kk_depends_on: []
kk_confidence: high
---
If the project already uses `drupal/metatag` for SEO metadata, extend it as follows. Do not add a dependency on `metatag` only because this node recommends it. In a contrib module, add it only when the module's own feature cannot work without it. Custom tag plugins are discovered with `@MetatagTag` annotations and can extend bases such as `MetaNameBase`; custom admin grouping uses `@MetatagGroup` annotations and `GroupBase`. Groups organize tags in the admin UI. For image metadata, set the tag type to `image`.

Google Scholar tags are not a general Schema.org solution. If the project already uses the `schema_metatag` project, put Schema.org structured data there. Do not add a dependency on `schema_metatag` only because this node recommends it. In a contrib module, add it only when the module's own feature cannot work without it. Programmatic consumers should use the `metatag.manager` service and `tagsFromEntityWithDefaults($entity)` to obtain entity tags with defaults applied. Metatag plugin discovery is annotation-based, not PHP 8 attributes.

<!-- kk:related:start -->
# Related

- Related: [practice-drupal-field-group-formatters-use-annotations](/drupal/presentation/forms/practice-drupal-field-group-formatters-use-annotations.md)
- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
- Related: [map-drupal-mail-flow](/drupal/architecture/services/map-drupal-mail-flow.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/project/metatag](https://www.drupal.org/project/metatag)
[2] [https://www.drupal.org/project/schema_metatag](https://www.drupal.org/project/schema_metatag)
<!-- kk:citations:end -->
