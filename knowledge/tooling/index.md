# kenkeep Index: drupal / tooling

↑ Parent: [drupal](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Define Drush commands with attributes and autowiring**](practice-define-drush-commands-with-attributes-and-autowiring.md) to learn about: Custom Drush commands should use Symfony Console command classes, AutowireTrait, constructor injection, and structured output helpers. #drupal #drush #commands
- Open [**Handle Drush command IO and failures explicitly**](practice-handle-drush-command-io-and-failures-explicitly.md) to learn about: Use Symfony or Drush output helpers, confirmations, structured rows, batches, validation, and exit codes for CLI behavior. #drush #commands #cli
- Open [**Use autowired Symfony Console Drush commands**](practice-use-autowired-attribute-drush-commands.md) to learn about: Build Drush 13.7+/14 commands with Symfony Console attributes, AutowireTrait, and constructor injection. #drush #commands #php #di
- Open [**Keep install hooks for install-time work**](practice-keep-install-hooks-for-install-time-work.md) to learn about: Use module install hooks for install/uninstall tasks, non-entity schemas, and requirements, not later schema updates. #drupal #install #modules
- Open [**Run the Drupal security checklist before deploying**](practice-run-the-drupal-security-checklist-before-deploying.md) to learn about: Verify validation, database safety, escaping, access control, files, secrets, APIs, and infra. #security #deployment #checklist #site-architecture
- Open [**Use update hooks for schema and post updates for data**](practice-use-update-hooks-for-schema-and-post-updates-for-data.md) to learn about: Schema changes belong in numbered hook_update_N functions; data changes belong in named post updates. #drupal #updates #schema

## Components (what exists)
- Open [**Developer tools Drush docs map**](map-developer-tools-drush-docs-map.md) to learn about: The Drush developer docs are split into command patterns, generators, and command reference files. #docs #drush #developer-tools
- Open [**Drupal Migrate API Reference**](map-drupal-migrate-api-reference.md) to learn about: Use migration YAML, process plugins, source plugins, and Drush commands to define and run Drupal migrations. #drupal #migration #migrate #drush
- Open [**Extensibility docs cover hooks, events, tokens, and updates**](map-extensibility-docs-map.md) to learn about: The docs/extensibility folder is organized around Drupal extension mechanisms and links related detail pages together. #docs #extensibility #map

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #drush
- Open [**Define Drush commands with attributes and autowiring**](practice-define-drush-commands-with-attributes-and-autowiring.md) — Custom Drush commands should use Symfony Console command classes, AutowireTrait, constructor injection, and structured output helpers.
- Open [**Handle Drush command IO and failures explicitly**](practice-handle-drush-command-io-and-failures-explicitly.md) — Use Symfony or Drush output helpers, confirmations, structured rows, batches, validation, and exit codes for CLI behavior.
- Open [**Use autowired Symfony Console Drush commands**](practice-use-autowired-attribute-drush-commands.md) — Build Drush 13.7+/14 commands with Symfony Console attributes, AutowireTrait, and constructor injection.
### #commands
- Open [**Define Drush commands with attributes and autowiring**](practice-define-drush-commands-with-attributes-and-autowiring.md) — Custom Drush commands should use Symfony Console command classes, AutowireTrait, constructor injection, and structured output helpers.
- Open [**Handle Drush command IO and failures explicitly**](practice-handle-drush-command-io-and-failures-explicitly.md) — Use Symfony or Drush output helpers, confirmations, structured rows, batches, validation, and exit codes for CLI behavior.
- Open [**Use autowired Symfony Console Drush commands**](practice-use-autowired-attribute-drush-commands.md) — Build Drush 13.7+/14 commands with Symfony Console attributes, AutowireTrait, and constructor injection.
### #docs
- Open [**Developer tools Drush docs map**](map-developer-tools-drush-docs-map.md) — The Drush developer docs are split into command patterns, generators, and command reference files.
- Open [**Extensibility docs cover hooks, events, tokens, and updates**](map-extensibility-docs-map.md) — The docs/extensibility folder is organized around Drupal extension mechanisms and links related detail pages together.
### #checklist
- Open [**Run the Drupal security checklist before deploying**](practice-run-the-drupal-security-checklist-before-deploying.md) — Verify validation, database safety, escaping, access control, files, secrets, APIs, and infra.
### #cli
- Open [**Handle Drush command IO and failures explicitly**](practice-handle-drush-command-io-and-failures-explicitly.md) — Use Symfony or Drush output helpers, confirmations, structured rows, batches, validation, and exit codes for CLI behavior.
### #deployment
- Open [**Run the Drupal security checklist before deploying**](practice-run-the-drupal-security-checklist-before-deploying.md) — Verify validation, database safety, escaping, access control, files, secrets, APIs, and infra.
### #developer-tools
- Open [**Developer tools Drush docs map**](map-developer-tools-drush-docs-map.md) — The Drush developer docs are split into command patterns, generators, and command reference files.
### #di
- Open [**Advanced Drupal service patterns**](../architecture/services/map-advanced-drupal-service-patterns.md) — Advanced service definitions cover factories, decorators, tagged collectors, HTTP clients, and service providers.
- Open [**Drupal service definitions and common services**](../architecture/services/map-drupal-service-definitions-and-common-services.md) — Module services are PHP classes registered in services.yml with injected core services and optional parameters.
- Open [**Use autowired Symfony Console Drush commands**](practice-use-autowired-attribute-drush-commands.md) — Build Drush 13.7+/14 commands with Symfony Console attributes, AutowireTrait, and constructor injection.
### #extensibility
- Open [**Extensibility docs cover hooks, events, tokens, and updates**](map-extensibility-docs-map.md) — The docs/extensibility folder is organized around Drupal extension mechanisms and links related detail pages together.
### #install
- Open [**Keep install hooks for install-time work**](practice-keep-install-hooks-for-install-time-work.md) — Use module install hooks for install/uninstall tasks, non-entity schemas, and requirements, not later schema updates.
### #map
- Open [**Extensibility docs cover hooks, events, tokens, and updates**](map-extensibility-docs-map.md) — The docs/extensibility folder is organized around Drupal extension mechanisms and links related detail pages together.
### #migrate
- Open [**Drupal Migrate API Reference**](map-drupal-migrate-api-reference.md) — Use migration YAML, process plugins, source plugins, and Drush commands to define and run Drupal migrations.
### #migration
- Open [**Drupal Migrate API Reference**](map-drupal-migrate-api-reference.md) — Use migration YAML, process plugins, source plugins, and Drush commands to define and run Drupal migrations.
### #modules
- Open [**Layout Builder Companion Modules Cover Restrictions, Styles, And Attributes**](../content-model/layout-paragraphs/map-layout-builder-companion-modules.md) — Related modules constrain available blocks, add UI-managed CSS classes, and expose HTML attribute configuration.
- Open [**Keep install hooks for install-time work**](practice-keep-install-hooks-for-install-time-work.md) — Use module install hooks for install/uninstall tasks, non-entity schemas, and requirements, not later schema updates.
### #php
- Open [**Use autowired Symfony Console Drush commands**](practice-use-autowired-attribute-drush-commands.md) — Build Drush 13.7+/14 commands with Symfony Console attributes, AutowireTrait, and constructor injection.
- Open [**Prefer final classes and promoted readonly dependencies**](../architecture/hooks-events/practice-prefer-final-classes-and-promoted-readonly-dependencies.md) — Default Drupal classes to final and use constructor property promotion with readonly injected dependencies.
### #schema
- Open [**Use update hooks for schema and post updates for data**](practice-use-update-hooks-for-schema-and-post-updates-for-data.md) — Schema changes belong in numbered hook_update_N functions; data changes belong in named post updates.
### #security
- Open [**Secure custom table queries**](../security/input-output/practice-secure-custom-table-queries.md) — Use placeholders, escape LIKE patterns, and whitelist dynamic table names in custom SQL work.
- Open [**Drupal security patterns by context**](../security/input-output/map-drupal-security-patterns-by-context.md) — Security guidance is organized around common sequences and the context-specific docs to consult.
- Open [**Avoid common security vulnerability patterns**](../security/input-output/practice-avoid-common-security-vulnerabilities.md) — Prefer safe APIs, allowlists, generic errors, and cryptographic randomness for common risk areas.
### #updates
- Open [**Use update hooks for schema and post updates for data**](practice-use-update-hooks-for-schema-and-post-updates-for-data.md) — Schema changes belong in numbered hook_update_N functions; data changes belong in named post updates.