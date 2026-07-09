---
type: practice
title: Use Database API only for custom tables
description: >-
  Use Entity API for content and reserve direct Database API queries for custom
  or audit tables.
tags:
  - database
  - entities
  - drupal
kk_schema_version: 3
kk_id: practice-use-database-api-only-for-custom-tables
kk_derived_from:
  - 'https://www.drupal.org/docs/develop/drupal-apis/database-api'
  - 'https://www.drupal.org/docs/drupal-apis/entity-api'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Database%21Connection.php/class/Connection/11.x
kk_relates_to:
  - practice-use-database-api-sparingly-for-custom-tables
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
kk_depends_on: []
kk_confidence: medium
---
Prefer the Entity API for content storage and access. Use the Database API for custom tables and audit tables, where direct table operations are expected.

Inject the `database` service instead of calling `\Drupal::database()`. Use `$connection->escapeLike($pattern)` for LIKE conditions, `merge()` for upserts, and `startTransaction()` for transaction scopes.

<!-- kk:related:start -->
# Related

- Related: [practice-use-database-api-sparingly-for-custom-tables](/drupal/data-cache/database/practice-use-database-api-sparingly-for-custom-tables.md)
- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-typed-entity-wrapper-structure](/drupal/content-model/entities-fields/map-typed-entity-wrapper-structure.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/drupal-apis/database-api](https://www.drupal.org/docs/develop/drupal-apis/database-api)
[2] [https://www.drupal.org/docs/drupal-apis/entity-api](https://www.drupal.org/docs/drupal-apis/entity-api)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Database%21Connection.php/class/Connection/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Database%21Connection.php/class/Connection/11.x)
<!-- kk:citations:end -->
