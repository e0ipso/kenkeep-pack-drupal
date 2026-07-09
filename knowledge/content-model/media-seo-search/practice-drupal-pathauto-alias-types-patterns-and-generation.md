---
type: practice
title: Drupal Pathauto alias generation
description: >-
  Pathauto provides annotated alias type plugins, tokenized alias patterns, and
  services for generating or updating entity aliases.
tags:
  - drupal
  - seo
  - pathauto
  - aliases
kk_schema_version: 3
kk_id: practice-drupal-pathauto-alias-types-patterns-and-generation
kk_derived_from:
  - 'https://www.drupal.org/project/pathauto'
  - >-
    https://www.drupal.org/docs/extending-drupal/contributed-modules/contributed-module-documentation/pathauto
kk_relates_to:
  - practice-drupal-field-group-formatters-use-annotations
  - practice-drupal-metatag-plugins-use-annotated-tags-and-groups
  - practice-drupal-redirect-programmatic-redirects-and-events
kk_depends_on: []
kk_confidence: high
---
Use `drupal/pathauto` to manage SEO-friendly aliases. Custom alias type plugins extend `AliasTypeBase` and are discovered with `@AliasType` annotations, including id, label, types, and context definitions. Implement `getSourcePrefix()` and `applies()` for the target entity or object.

Configure tokenized patterns at `/admin/config/search/path/patterns`, such as `[node:content-type]/[node:title]`, and use `/admin/help/token` for token discovery. Programmatically create or update aliases through the `pathauto.generator` service with `createEntityAlias($entity, 'insert')` or `updateEntityAlias($entity, 'update')`. Bulk generation is available at `/admin/config/search/path/update_bulk`; transliteration and punctuation behavior are configuration choices, not assumptions to hard-code. Pathauto plugin discovery is annotation-based, not PHP 8 attributes.

<!-- kk:related:start -->
# Related

- Related: [practice-drupal-field-group-formatters-use-annotations](/drupal/presentation/forms/practice-drupal-field-group-formatters-use-annotations.md)
- Related: [practice-drupal-metatag-plugins-use-annotated-tags-and-groups](/drupal/content-model/media-seo-search/practice-drupal-metatag-plugins-use-annotated-tags-and-groups.md)
- Related: [practice-drupal-redirect-programmatic-redirects-and-events](/drupal/presentation/routing-navigation/practice-drupal-redirect-programmatic-redirects-and-events.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/project/pathauto](https://www.drupal.org/project/pathauto)
[2] [https://www.drupal.org/docs/extending-drupal/contributed-modules/contributed-module-documentation/pathauto](https://www.drupal.org/docs/extending-drupal/contributed-modules/contributed-module-documentation/pathauto)
<!-- kk:citations:end -->
