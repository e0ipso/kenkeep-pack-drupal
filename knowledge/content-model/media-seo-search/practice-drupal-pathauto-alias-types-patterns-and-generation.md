---
schema_version: 2
id: practice-drupal-pathauto-alias-types-patterns-and-generation
title: Drupal Pathauto alias generation
kind: practice
tags:
  - drupal
  - seo
  - pathauto
  - aliases
derived_from:
  - "https://www.drupal.org/project/pathauto"
  - "https://www.drupal.org/docs/extending-drupal/contributed-modules/contributed-module-documentation/pathauto"
relates_to:
  - practice-drupal-field-group-formatters-use-annotations
  - practice-drupal-metatag-plugins-use-annotated-tags-and-groups
  - practice-drupal-redirect-programmatic-redirects-and-events
depends_on: []
confidence: high
summary: >-
  Pathauto provides annotated alias type plugins, tokenized alias patterns, and
  services for generating or updating entity aliases.
---
Use `drupal/pathauto` to manage SEO-friendly aliases. Custom alias type plugins extend `AliasTypeBase` and are discovered with `@AliasType` annotations, including id, label, types, and context definitions. Implement `getSourcePrefix()` and `applies()` for the target entity or object.

Configure tokenized patterns at `/admin/config/search/path/patterns`, such as `[node:content-type]/[node:title]`, and use `/admin/help/token` for token discovery. Programmatically create or update aliases through the `pathauto.generator` service with `createEntityAlias($entity, 'insert')` or `updateEntityAlias($entity, 'update')`. Bulk generation is available at `/admin/config/search/path/update_bulk`; transliteration and punctuation behavior are configuration choices, not assumptions to hard-code. Pathauto plugin discovery is annotation-based, not PHP 8 attributes.
