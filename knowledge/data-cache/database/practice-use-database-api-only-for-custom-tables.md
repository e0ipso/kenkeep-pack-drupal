---
schema_version: 2
id: practice-use-database-api-only-for-custom-tables
title: Use Database API only for custom tables
kind: practice
tags:
  - database
  - entities
  - drupal
derived_from:
  - https://www.drupal.org/docs/develop/drupal-apis/database-api
  - https://www.drupal.org/docs/drupal-apis/entity-api
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Database%21Connection.php/class/Connection/11.x
relates_to:
  - practice-use-database-api-sparingly-for-custom-tables
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
depends_on: []
confidence: medium
summary: >-
  Use Entity API for content and reserve direct Database API queries for custom
  or audit tables.
---
Prefer the Entity API for content storage and access. Use the Database API for custom tables and audit tables, where direct table operations are expected.

Inject the `database` service instead of calling `\Drupal::database()`. Use `$connection->escapeLike($pattern)` for LIKE conditions, `merge()` for upserts, and `startTransaction()` for transaction scopes.
