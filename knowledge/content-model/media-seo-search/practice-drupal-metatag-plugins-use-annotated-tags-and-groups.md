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
Use `drupal/metatag` for SEO metadata. Custom tag plugins are discovered with `@MetatagTag` annotations and can extend bases such as `MetaNameBase`; custom admin grouping uses `@MetatagGroup` annotations and `GroupBase`. Groups organize tags in the admin UI. For image metadata, set the tag type to `image`.

For Schema.org structured data, use the `schema_metatag` project or a purpose-built Metatag integration rather than treating Google Scholar tags as the general Schema.org solution. Programmatic consumers should use the `metatag.manager` service and `tagsFromEntityWithDefaults($entity)` to obtain entity tags with defaults applied. Metatag plugin discovery is annotation-based, not PHP 8 attributes.

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
