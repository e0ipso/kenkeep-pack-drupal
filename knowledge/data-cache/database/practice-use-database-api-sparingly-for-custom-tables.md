---
type: practice
title: Use Database API sparingly for custom tables
description: >-
  Use Database API only for non-entity tables, complex joins, migrations, or
  rare SQL-specific performance needs.
tags:
  - drupal
  - database
  - entities
kk_schema_version: 3
kk_id: practice-use-database-api-sparingly-for-custom-tables
kk_derived_from:
  - 'https://www.drupal.org/docs/develop/drupal-apis/database-api'
  - 'https://www.drupal.org/docs/drupal-apis/entity-api'
kk_relates_to:
  - practice-use-database-api-only-for-custom-tables
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
kk_depends_on: []
kk_confidence: high
---
Use Drupal's Database API only for custom non-entity tables, legacy tables, audit logs, custom schemas, complex joins that Entity Query cannot express, schema modifications, data migrations, or very rare performance-critical queries that need specific SQL.

For normal Drupal entity operations, use Entity Query instead.

<!-- kk:related:start -->
# Related

- Related: [practice-use-database-api-only-for-custom-tables](/drupal/data-cache/database/practice-use-database-api-only-for-custom-tables.md)
- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-typed-entity-wrapper-structure](/drupal/content-model/entities-fields/map-typed-entity-wrapper-structure.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/drupal-apis/database-api](https://www.drupal.org/docs/develop/drupal-apis/database-api)
[2] [https://www.drupal.org/docs/drupal-apis/entity-api](https://www.drupal.org/docs/drupal-apis/entity-api)
<!-- kk:citations:end -->
