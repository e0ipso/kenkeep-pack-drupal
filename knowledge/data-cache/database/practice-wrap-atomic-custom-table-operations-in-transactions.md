---
type: practice
title: Wrap atomic custom table operations in transactions
description: >-
  Use transactions when multiple custom-table writes must succeed or fail
  together.
tags:
  - drupal
  - database
  - transactions
kk_schema_version: 3
kk_id: practice-wrap-atomic-custom-table-operations-in-transactions
kk_derived_from:
  - >-
    https://www.drupal.org/docs/develop/drupal-apis/database-api/database-transactions
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Database%21Transaction%21Transaction.php/class/Transaction/11.x
kk_relates_to:
  - practice-prevent-sql-injection-with-safe-query-apis
  - practice-secure-custom-table-queries
  - practice-use-database-api-only-for-custom-tables
kk_depends_on: []
kk_confidence: high
---
Use database transactions for multi-step custom-table operations that must succeed or fail atomically. Start a transaction before the write sequence and keep all dependent updates/inserts inside the same try block.

On exceptions, call `rollBack()` on the active transaction object before rethrowing so callers can handle the failure. If no rollback is requested, the transaction object commits when its scope ends.

<!-- kk:related:start -->
# Related

- Related: [practice-prevent-sql-injection-with-safe-query-apis](/drupal/security/data-secrets/practice-prevent-sql-injection-with-safe-query-apis.md)
- Related: [practice-secure-custom-table-queries](/drupal/security/input-output/practice-secure-custom-table-queries.md)
- Related: [practice-use-database-api-only-for-custom-tables](/drupal/data-cache/database/practice-use-database-api-only-for-custom-tables.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/drupal-apis/database-api/database-transactions](https://www.drupal.org/docs/develop/drupal-apis/database-api/database-transactions)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Database%21Transaction%21Transaction.php/class/Transaction/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Database%21Transaction%21Transaction.php/class/Transaction/11.x)
<!-- kk:citations:end -->
