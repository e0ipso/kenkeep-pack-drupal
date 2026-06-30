---
schema_version: 2
id: practice-wrap-atomic-custom-table-operations-in-transactions
title: Wrap atomic custom table operations in transactions
kind: practice
tags:
  - drupal
  - database
  - transactions
derived_from: []
relates_to:
  - practice-prevent-sql-injection-with-safe-query-apis
  - practice-secure-custom-table-queries
  - practice-use-database-api-only-for-custom-tables
depends_on: []
confidence: high
summary: >-
  Use transactions when multiple custom-table writes must succeed or fail
  together.
---
Use database transactions for multi-step custom-table operations that must succeed or fail atomically. Start a transaction before the write sequence and keep all dependent updates/inserts inside the same try block.

On exceptions, roll back the transaction and rethrow the exception so callers can handle the failure.
