---
schema_version: 2
id: practice-use-database-api-sparingly-for-custom-tables
title: Use Database API sparingly for custom tables
kind: practice
tags:
  - drupal
  - database
  - entities
derived_from:
  - https://www.drupal.org/docs/develop/drupal-apis/database-api
  - https://www.drupal.org/docs/drupal-apis/entity-api
relates_to:
  - practice-use-database-api-only-for-custom-tables
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
depends_on: []
confidence: high
summary: >-
  Use Database API only for non-entity tables, complex joins, migrations, or
  rare SQL-specific performance needs.
---
Use Drupal's Database API only for custom non-entity tables, legacy tables, audit logs, custom schemas, complex joins that Entity Query cannot express, schema modifications, data migrations, or very rare performance-critical queries that need specific SQL.

For normal Drupal entity operations, use Entity Query instead.
