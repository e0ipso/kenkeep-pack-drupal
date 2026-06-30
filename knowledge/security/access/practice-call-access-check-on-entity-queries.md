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
derived_from: []
relates_to:
  - practice-include-cache-metadata-in-entity-access-handlers
  - practice-prefer-entity-query-for-entity-retrieval
  - map-drupal-entity-form-bases
depends_on: []
confidence: high
summary: Every entity query must set accessCheck explicitly in Drupal 10 and later.
---
Entity queries must call accessCheck() explicitly. Use accessCheck(TRUE) for standard user-facing queries so node access grants and entity access rules are respected.

Use accessCheck(FALSE) only for intentional bypass scenarios such as administrative operations, cron, or migrations. Drupal 10 has no default and throws an exception when access checking is omitted.
