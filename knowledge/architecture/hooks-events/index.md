# kenkeep Index: drupal / architecture / hooks-events

↑ Parent: [architecture](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Reserve procedural hooks for required cases**](practice-only-procedural-hooks-for-container-unavailable-cases.md) to learn about: Most Drupal 11.1+ module hooks should be OOP, but early install/update/schema and meta hooks remain procedural; requirements hooks have newer replacements. #drupal #hooks #compatibility
- Open [**Use subscribers for events, entity hooks for entities**](practice-use-event-subscribers-for-events-not-entity-operations.md) to learn about: Event subscribers are documented for kernel, config, and custom events; entity operations should use entity hooks instead. #drupal #events #hooks
- Open [**Use OOP hooks in src/Hook**](practice-prefer-oop-hooks-in-src-hook.md) to learn about: Drupal 11.1+ hook implementations should be PHP attribute based classes under a module's src/Hook directory. #drupal #hooks #oop
- Open [**Prefer final classes and promoted readonly dependencies**](practice-prefer-final-classes-and-promoted-readonly-dependencies.md) to learn about: Default Drupal classes to final and use constructor property promotion with readonly injected dependencies. #drupal #php #classes

## Components (what exists)
_None yet._

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #hooks
- Open [**Choose entity lifecycle hooks by save phase**](../../content-model/entities-fields/practice-choose-entity-lifecycle-hooks-by-save-phase.md) — Use the entity lifecycle hook that matches the phase: presave, insert/update, predelete/delete, load, or view.
- Open [**Reserve procedural hooks for required cases**](practice-only-procedural-hooks-for-container-unavailable-cases.md) — Most Drupal 11.1+ module hooks should be OOP, but early install/update/schema and meta hooks remain procedural; requirements hooks have newer replacements.
- Open [**Use subscribers for events, entity hooks for entities**](practice-use-event-subscribers-for-events-not-entity-operations.md) — Event subscribers are documented for kernel, config, and custom events; entity operations should use entity hooks instead.
### #classes
- Open [**Prefer final classes and promoted readonly dependencies**](practice-prefer-final-classes-and-promoted-readonly-dependencies.md) — Default Drupal classes to final and use constructor property promotion with readonly injected dependencies.
### #compatibility
- Open [**Reserve procedural hooks for required cases**](practice-only-procedural-hooks-for-container-unavailable-cases.md) — Most Drupal 11.1+ module hooks should be OOP, but early install/update/schema and meta hooks remain procedural; requirements hooks have newer replacements.
### #events
- Open [**Symfony events and custom events**](../services/map-symfony-events-and-custom-events.md) — Drupal event subscribers listen to kernel or custom events through EventSubscriberInterface services.
- Open [**Use subscribers for events, entity hooks for entities**](practice-use-event-subscribers-for-events-not-entity-operations.md) — Event subscribers are documented for kernel, config, and custom events; entity operations should use entity hooks instead.
### #oop
- Open [**Use OOP hooks in src/Hook**](practice-prefer-oop-hooks-in-src-hook.md) — Drupal 11.1+ hook implementations should be PHP attribute based classes under a module's src/Hook directory.
### #php
- Open [**Use autowired Symfony Console Drush commands**](../../tooling/practice-use-autowired-attribute-drush-commands.md) — Build Drush 13.7+/14 commands with Symfony Console attributes, AutowireTrait, and constructor injection.
- Open [**Prefer final classes and promoted readonly dependencies**](practice-prefer-final-classes-and-promoted-readonly-dependencies.md) — Default Drupal classes to final and use constructor property promotion with readonly injected dependencies.