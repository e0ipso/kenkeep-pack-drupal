# kenkeep Index: drupal / architecture / plugins

↑ Parent: [architecture](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Handle negation in condition plugins**](practice-handle-negation-in-condition-plugins.md) to learn about: Condition plugin evaluate methods should account for negation and return translated summaries. #drupal #plugins #conditions
- Open [**Use PHP attributes for modern Drupal plugins**](practice-use-php-attributes-for-modern-drupal-plugins.md) to learn about: Drupal 10.2+ plugin managers with attribute discovery should prefer PHP attributes and modern class conventions over legacy annotations. #drupal #plugins #attributes

## Components (what exists)
- Open [**Derivative plugins generate dynamic plugin instances**](map-derivative-plugins-generate-dynamic-plugin-instances.md) to learn about: A deriver creates multiple plugin definitions from one base plugin using dynamic data. #drupal #plugins #derivatives

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #plugins
- Open [**Derivative plugins generate dynamic plugin instances**](map-derivative-plugins-generate-dynamic-plugin-instances.md) — A deriver creates multiple plugin definitions from one base plugin using dynamic data.
- Open [**Drupal mail flow**](../services/map-drupal-mail-flow.md) — MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output.
- Open [**Alter and debug plugin definitions through managers**](../../quality/practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.
### #attributes
- Open [**Use PHP attributes for modern Drupal plugins**](practice-use-php-attributes-for-modern-drupal-plugins.md) — Drupal 10.2+ plugin managers with attribute discovery should prefer PHP attributes and modern class conventions over legacy annotations.
### #conditions
- Open [**Handle negation in condition plugins**](practice-handle-negation-in-condition-plugins.md) — Condition plugin evaluate methods should account for negation and return translated summaries.
### #derivatives
- Open [**Derivative plugins generate dynamic plugin instances**](map-derivative-plugins-generate-dynamic-plugin-instances.md) — A deriver creates multiple plugin definitions from one base plugin using dynamic data.