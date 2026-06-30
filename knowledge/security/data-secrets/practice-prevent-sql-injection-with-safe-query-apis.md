---
schema_version: 2
id: practice-prevent-sql-injection-with-safe-query-apis
title: Prevent SQL injection with safe query APIs
kind: practice
tags:
  - security
  - sql
  - database
  - drupal
derived_from:
  - https://www.drupal.org/docs/drupal-apis/database-api/dynamic-queries
  - https://www.drupal.org/docs/drupal-apis/database-api/static-queries
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Database%21Connection.php/function/Connection%3A%3AescapeLike/11.x
relates_to:
  - practice-secure-custom-table-queries
  - map-drupal-security-patterns-by-context
  - practice-avoid-common-security-vulnerabilities
depends_on: []
confidence: high
summary: >-
  Prefer Entity Query and parameterized Database API calls; never concatenate
  user input into SQL.
---
Prefer Drupal Entity Query when possible, and keep `accessCheck(TRUE)` on user-facing entity queries. When using the Database API, build queries with placeholders, `condition()`, `insert()`, and `update()` rather than string concatenation.

Escape LIKE patterns with `$database->escapeLike()` because percent and underscore are wildcards. Use parameterized `query()` for raw SQL when the query builder is not suitable.

Never put user input directly into SQL identifiers or clauses. Dynamic table names, column names, sort fields, and similar identifiers must come from explicit allowlists.
