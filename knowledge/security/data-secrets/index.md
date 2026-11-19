# kenkeep Index: drupal / security / data-secrets

↑ Parent: [security](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Keep secrets out of code and exported config**](practice-keep-secrets-out-of-code-and-config.md) to learn about: Read secrets from environment variables, settings overrides, or a secret store the site already runs, never from committed code or config. #security #secrets #config #drupal
- Open [**Prevent SQL injection with safe query APIs**](practice-prevent-sql-injection-with-safe-query-apis.md) to learn about: Prefer Entity Query and parameterized Database API calls; never concatenate user input into SQL. #security #sql #database #drupal

## Components (what exists)
_None yet._

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #security
- Open [**Secure custom table queries**](../input-output/practice-secure-custom-table-queries.md) — Use placeholders, escape LIKE patterns, and whitelist dynamic table names in custom SQL work.
- Open [**Drupal security patterns by context**](../input-output/map-drupal-security-patterns-by-context.md) — Security guidance is organized around common sequences and the context-specific docs to consult.
- Open [**Avoid common security vulnerability patterns**](../input-output/practice-avoid-common-security-vulnerabilities.md) — Prefer safe APIs, allowlists, generic errors, and cryptographic randomness for common risk areas.
### #config
- Open [**Define schema for Drupal configuration**](../../data-cache/storage-config/practice-define-schema-for-drupal-configuration.md) — Every module configuration object needs schema; modern config forms can bind fields with #config_target.
- Open [**Prefer #config_target for settings forms**](../../data-cache/storage-config/practice-prefer-config-target-for-settings-forms.md) — Use #config_target on Drupal 10.2+ settings forms instead of manual config load/save boilerplate.
- Open [**Define config entity export and prefix explicitly**](../../data-cache/storage-config/practice-define-config-entity-export-and-prefix-explicitly.md) — Config entities need config_export for persisted properties and config_prefix for generated filenames.
### #database
- Open [**Use Database API only for custom tables**](../../data-cache/database/practice-use-database-api-only-for-custom-tables.md) — Use Entity API for content and reserve direct Database API queries for custom or audit tables.
- Open [**Use Database API sparingly for custom tables**](../../data-cache/database/practice-use-database-api-sparingly-for-custom-tables.md) — Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs.
- Open [**Secure custom table queries**](../input-output/practice-secure-custom-table-queries.md) — Use placeholders, escape LIKE patterns, and whitelist dynamic table names in custom SQL work.
### #secrets
- Open [**Keep secrets out of code and exported config**](practice-keep-secrets-out-of-code-and-config.md) — Read secrets from environment variables, settings overrides, or a secret store the site already runs, never from committed code or config.
### #sql
- Open [**Prevent SQL injection with safe query APIs**](practice-prevent-sql-injection-with-safe-query-apis.md) — Prefer Entity Query and parameterized Database API calls; never concatenate user input into SQL.