---
schema_version: 2
id: practice-call-access-check-on-entity-queries
title: Call accessCheck on entity queries
kind: practice
tags:
  - drupal
  - entities
  - queries
  - access
derived_from:
  - https://www.drupal.org/node/3201242
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21Query%21QueryInterface.php/function/QueryInterface%3A%3AaccessCheck/11.x
relates_to:
  - practice-include-cache-metadata-in-entity-access-handlers
  - practice-prefer-entity-query-for-entity-retrieval
  - map-drupal-entity-form-bases
depends_on: []
confidence: high
summary: Every entity query must set accessCheck explicitly in Drupal 10 and later.
---
Entity queries must set access checking explicitly. Use `accessCheck(TRUE)` for standard user-facing queries so node access grants and entity access rules are respected.

Use `accessCheck(FALSE)` only for intentional bypass scenarios such as administrative operations, cron, or migrations. Calling `accessCheck()` with no argument sets TRUE, but omitting access checking from a SQL entity query throws a query exception in Drupal 10 and later.
