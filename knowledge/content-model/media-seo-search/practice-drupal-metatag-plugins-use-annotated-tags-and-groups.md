---
schema_version: 2
id: practice-drupal-metatag-plugins-use-annotated-tags-and-groups
title: Drupal Metatag custom tags and groups
kind: practice
tags:
  - drupal
  - seo
  - metatag
  - plugins
derived_from: []
relates_to:
  - practice-drupal-field-group-formatters-use-annotations
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
depends_on: []
confidence: high
summary: >-
  Metatag extensions add annotated tag and group plugins, then read effective
  tags through the metatag.manager service.
---
Use drupal/metatag for SEO metadata. Custom tag plugins are discovered with @MetatagTag annotations and can extend bases such as MetaNameBase; custom admin grouping uses @MetatagGroup annotations and GroupBase. Groups organize tags in the admin UI. For image metadata, set the tag type to image. For Schema.org-oriented metadata, prefer the relevant Metatag submodules such as metatag_google_scholar where applicable. Programmatic consumers should use the metatag.manager service and tagsFromEntityWithDefaults($entity) to obtain entity tags with defaults applied. Metatag plugin discovery is annotation-based, not PHP 8 attributes.
