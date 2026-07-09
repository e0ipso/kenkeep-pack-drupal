# kenkeep Index: drupal / data-cache / database

↑ Parent: [data-cache](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Use Database API only for custom tables**](practice-use-database-api-only-for-custom-tables.md) to learn about: Use Entity API for content and reserve direct Database API queries for custom or audit tables. #database #entities #drupal
- Open [**Use Database API sparingly for custom tables**](practice-use-database-api-sparingly-for-custom-tables.md) to learn about: Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs. #drupal #database #entities
- Open [**Wrap atomic custom table operations in transactions**](practice-wrap-atomic-custom-table-operations-in-transactions.md) to learn about: Use transactions when multiple custom-table writes must succeed or fail together. #drupal #database #transactions

## Components (what exists)
_None yet._

## By topic

### #database
- Open [**Use Database API only for custom tables**](practice-use-database-api-only-for-custom-tables.md) — Use Entity API for content and reserve direct Database API queries for custom or audit tables.
- Open [**Use Database API sparingly for custom tables**](practice-use-database-api-sparingly-for-custom-tables.md) — Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs.
- Open [**Secure custom table queries**](../../security/input-output/practice-secure-custom-table-queries.md) — Use placeholders, escape LIKE patterns, and whitelist dynamic table names in custom SQL work.
### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #entities
- Open [**Use Database API only for custom tables**](practice-use-database-api-only-for-custom-tables.md) — Use Entity API for content and reserve direct Database API queries for custom or audit tables.
- Open [**Use Database API sparingly for custom tables**](practice-use-database-api-sparingly-for-custom-tables.md) — Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs.
- Open [**Typed Entity wrapper structure**](../../content-model/entities-fields/map-typed-entity-wrapper-structure.md) — Business wrappers live under WrappedEntities and typed repository plugins expose wrapped entity loading.
### #transactions
- Open [**Wrap atomic custom table operations in transactions**](practice-wrap-atomic-custom-table-operations-in-transactions.md) — Use transactions when multiple custom-table writes must succeed or fail together.