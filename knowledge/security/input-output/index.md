# kenkeep Index: drupal / security / input-output

↑ Parent: [security](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Avoid common security vulnerability patterns**](practice-avoid-common-security-vulnerabilities.md) to learn about: Prefer safe APIs, allowlists, generic errors, and cryptographic randomness for common risk areas. #security #vulnerabilities #drupal
- Open [**Handle uploads and private files securely**](practice-handle-files-securely.md) to learn about: Validate uploads server-side, store sensitive files privately, and gate private downloads. #security #files #uploads #drupal
- Open [**Secure custom table queries**](practice-secure-custom-table-queries.md) to learn about: Use placeholders, escape LIKE patterns, and whitelist dynamic table names in custom SQL work. #drupal #database #security
- Open [**Validate input server-side before use**](practice-validate-input-server-side.md) to learn about: Validate request, entity, and form data for type, format, range, and length before processing. #security #validation #forms #drupal
- Open [**Place custom validation constraints by convention**](practice-place-custom-validation-constraints-by-convention.md) to learn about: Custom entity validation constraints and validators belong in Plugin/Validation/Constraint with matching names. #drupal #entities #validation
- Open [**Prevent XSS with context-aware output**](practice-prevent-xss-with-context-aware-output.md) to learn about: Use render arrays, placeholders, URL helpers, drupalSettings, and Twig auto-escaping. #security #xss #rendering #drupal
- Open [**Use stream wrappers for files**](practice-use-stream-wrappers-for-files.md) to learn about: Use Drupal file stream wrappers and explicit collision handling instead of absolute filesystem paths. #files #storage #drupal

## Components (what exists)
- Open [**Drupal security patterns by context**](map-drupal-security-patterns-by-context.md) to learn about: Security guidance is organized around common sequences and the context-specific docs to consult. #security #patterns #drupal

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #security
- Open [**Secure custom table queries**](practice-secure-custom-table-queries.md) — Use placeholders, escape LIKE patterns, and whitelist dynamic table names in custom SQL work.
- Open [**Drupal security patterns by context**](map-drupal-security-patterns-by-context.md) — Security guidance is organized around common sequences and the context-specific docs to consult.
- Open [**Avoid common security vulnerability patterns**](practice-avoid-common-security-vulnerabilities.md) — Prefer safe APIs, allowlists, generic errors, and cryptographic randomness for common risk areas.
### #files
- Open [**Handle uploads and private files securely**](practice-handle-files-securely.md) — Validate uploads server-side, store sensitive files privately, and gate private downloads.
- Open [**Use stream wrappers for files**](practice-use-stream-wrappers-for-files.md) — Use Drupal file stream wrappers and explicit collision handling instead of absolute filesystem paths.
### #validation
- Open [**Validate input server-side before use**](practice-validate-input-server-side.md) — Validate request, entity, and form data for type, format, range, and length before processing.
- Open [**Place custom validation constraints by convention**](practice-place-custom-validation-constraints-by-convention.md) — Custom entity validation constraints and validators belong in Plugin/Validation/Constraint with matching names.
- Open [**Target form alters precisely**](../../presentation/forms/practice-target-form-alters-precisely.md) — Prefer specific or base form alter hooks, use #states only for client-side behavior, and validate on the server.
### #database
- Open [**Use Database API only for custom tables**](../../data-cache/database/practice-use-database-api-only-for-custom-tables.md) — Use Entity API for content and reserve direct Database API queries for custom or audit tables.
- Open [**Use Database API sparingly for custom tables**](../../data-cache/database/practice-use-database-api-sparingly-for-custom-tables.md) — Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs.
- Open [**Secure custom table queries**](practice-secure-custom-table-queries.md) — Use placeholders, escape LIKE patterns, and whitelist dynamic table names in custom SQL work.
### #entities
- Open [**Use Database API only for custom tables**](../../data-cache/database/practice-use-database-api-only-for-custom-tables.md) — Use Entity API for content and reserve direct Database API queries for custom or audit tables.
- Open [**Use Database API sparingly for custom tables**](../../data-cache/database/practice-use-database-api-sparingly-for-custom-tables.md) — Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs.
- Open [**Typed Entity wrapper structure**](../../content-model/entities-fields/map-typed-entity-wrapper-structure.md) — Business wrappers live under WrappedEntities and typed repository plugins expose wrapped entity loading.
### #forms
- Open [**Define schema for Drupal configuration**](../../data-cache/storage-config/practice-define-schema-for-drupal-configuration.md) — Every module configuration object needs schema; modern config forms can bind fields with #config_target.
- Open [**Prefer #config_target for settings forms**](../../data-cache/storage-config/practice-prefer-config-target-for-settings-forms.md) — Use #config_target on Drupal 10.2+ settings forms instead of manual config load/save boilerplate.
- Open [**Extend AddFormBase for custom Media Library add forms**](../../presentation/forms/practice-extend-addformbase-for-custom-media-add-forms.md) — Custom Media Library add forms should extend AddFormBase and build their input UI through buildInputElement().
### #patterns
- Open [**Drupal security patterns by context**](map-drupal-security-patterns-by-context.md) — Security guidance is organized around common sequences and the context-specific docs to consult.
### #rendering
- Open [**Prevent XSS with context-aware output**](practice-prevent-xss-with-context-aware-output.md) — Use render arrays, placeholders, URL helpers, drupalSettings, and Twig auto-escaping.
### #storage
- Open [**Clean up TempStore data after workflows**](../../data-cache/storage-config/practice-clean-up-tempstore-data-after-workflows.md) — Delete TempStore entries at the final form step or controller action and handle lock failures.
- Open [**Private and Shared TempStore roles**](../../data-cache/storage-config/map-private-and-shared-tempstore-roles.md) — PrivateTempStore isolates per-user drafts; SharedTempStore supports shared keys with ownership metadata.
- Open [**Data storage API purposes**](../../data-cache/storage-config/map-data-storage-api-purposes.md) — Key-Value, State, Config, Cache, and TempStore each serve distinct storage needs.
### #uploads
- Open [**Handle uploads and private files securely**](practice-handle-files-securely.md) — Validate uploads server-side, store sensitive files privately, and gate private downloads.
### #vulnerabilities
- Open [**Avoid common security vulnerability patterns**](practice-avoid-common-security-vulnerabilities.md) — Prefer safe APIs, allowlists, generic errors, and cryptographic randomness for common risk areas.
### #xss
- Open [**Prevent XSS with context-aware output**](practice-prevent-xss-with-context-aware-output.md) — Use render arrays, placeholders, URL helpers, drupalSettings, and Twig auto-escaping.