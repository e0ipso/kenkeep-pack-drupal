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
derived_from: []
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
Use drupal/pathauto to manage SEO-friendly aliases. Custom alias type plugins extend AliasTypeBase and are discovered with @AliasType annotations, including id, label, types, and context_definitions. Implement getSourcePrefix() and applies() for the target entity or object. Configure tokenized patterns at /admin/config/search/path/patterns, such as [node:content-type]/[node:title], and use /admin/help/token for token discovery. Programmatically create or update aliases through the pathauto.generator service with createEntityAlias($entity, 'insert') or updateEntityAlias($entity, 'update'). Bulk generation is available at /admin/config/search/path/update_bulk, transliteration is enabled by default, and plugin discovery uses annotations rather than PHP 8 attributes.
