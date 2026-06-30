---
schema_version: 2
summary: Database API and custom table transaction rules; read before writing custom SQL or custom-table storage
---
# Database Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Use Database API only for custom tables**](practice-use-database-api-only-for-custom-tables.md) to learn about: Use Entity API for content and reserve direct Database API queries for custom or audit tables. #database #entities #drupal
- Open [**Use Database API sparingly for custom tables**](practice-use-database-api-sparingly-for-custom-tables.md) to learn about: Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs. #drupal #database #entities
- Open [**Wrap atomic custom table operations in transactions**](practice-wrap-atomic-custom-table-operations-in-transactions.md) to learn about: Use transactions when multiple custom-table writes must succeed or fail together. #drupal #database #transactions

## Components (what exists)
_None._

