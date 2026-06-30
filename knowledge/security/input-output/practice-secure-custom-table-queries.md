---
schema_version: 2
id: practice-secure-custom-table-queries
title: Secure custom table queries
kind: practice
tags:
  - drupal
  - database
  - security
derived_from:
  - https://www.drupal.org/docs/drupal-apis/database-api/dynamic-queries
  - https://www.drupal.org/docs/drupal-apis/database-api/static-queries
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Database%21Connection.php/function/Connection%3A%3AescapeLike/11.x
relates_to:
  - practice-prevent-sql-injection-with-safe-query-apis
  - map-drupal-security-patterns-by-context
  - practice-avoid-common-security-vulnerabilities
depends_on: []
confidence: high
summary: >-
  Use placeholders, escape LIKE patterns, and whitelist dynamic table names in
  custom SQL work.
---
Custom table queries must not concatenate user input into SQL. Use query builder conditions or named placeholders for values.

Escape LIKE search patterns with the database connection's `escapeLike()` method before adding wildcards, and never pass untrusted table names directly into `select()`. If a table name is dynamic, validate it against an explicit whitelist before building the query.
