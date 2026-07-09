# kenkeep Index: drupal / architecture / services

↑ Parent: [architecture](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Register custom plugin managers with default_plugin_manager**](practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) to learn about: Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring. #drupal #plugins #services
- Open [**Inject services into plugins with ContainerFactoryPluginInterface**](practice-inject-services-into-plugins-with-container-factory.md) to learn about: Plugins that need services should use create() and constructor injection instead of static Drupal service calls. #drupal #plugins #dependency-injection
- Open [**Use dedicated PSR-3 logger channels**](practice-use-dedicated-psr3-logger-channels.md) to learn about: Define one logger channel per module and inject that channel as Psr\\Log\\LoggerInterface. #drupal #logging #services

## Components (what exists)
- Open [**Advanced Drupal service patterns**](map-advanced-drupal-service-patterns.md) to learn about: Advanced service definitions cover factories, decorators, tagged collectors, HTTP clients, and service providers. #drupal #services #di
- Open [**Drupal mail flow**](map-drupal-mail-flow.md) to learn about: MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output. #drupal #mail #plugins
- Open [**Drupal service definitions and common services**](map-drupal-service-definitions-and-common-services.md) to learn about: Module services are PHP classes registered in services.yml with injected core services and optional parameters. #drupal #services #di
- Open [**Symfony events and custom events**](map-symfony-events-and-custom-events.md) to learn about: Drupal event subscribers listen to kernel or custom events through EventSubscriberInterface services. #drupal #events #services

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #services
- Open [**Advanced Drupal service patterns**](map-advanced-drupal-service-patterns.md) — Advanced service definitions cover factories, decorators, tagged collectors, HTTP clients, and service providers.
- Open [**Drupal service definitions and common services**](map-drupal-service-definitions-and-common-services.md) — Module services are PHP classes registered in services.yml with injected core services and optional parameters.
- Open [**Cache computed service data with CacheBackendInterface**](../../data-cache/cache-render/practice-cache-computed-service-data-with-cachebackendinterface.md) — Use CacheBackendInterface in services for computed data and attach tags for invalidation across bins.
### #plugins
- Open [**Derivative plugins generate dynamic plugin instances**](../plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md) — A deriver creates multiple plugin definitions from one base plugin using dynamic data.
- Open [**Drupal mail flow**](map-drupal-mail-flow.md) — MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output.
- Open [**Alter and debug plugin definitions through managers**](../../quality/practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.
### #di
- Open [**Advanced Drupal service patterns**](map-advanced-drupal-service-patterns.md) — Advanced service definitions cover factories, decorators, tagged collectors, HTTP clients, and service providers.
- Open [**Drupal service definitions and common services**](map-drupal-service-definitions-and-common-services.md) — Module services are PHP classes registered in services.yml with injected core services and optional parameters.
- Open [**Use autowired Symfony Console Drush commands**](../../tooling/practice-use-autowired-attribute-drush-commands.md) — Build Drush 13.7+/14 commands with Symfony Console attributes, AutowireTrait, and constructor injection.
### #dependency-injection
- Open [**Inject services into plugins with ContainerFactoryPluginInterface**](practice-inject-services-into-plugins-with-container-factory.md) — Plugins that need services should use create() and constructor injection instead of static Drupal service calls.
### #events
- Open [**Symfony events and custom events**](map-symfony-events-and-custom-events.md) — Drupal event subscribers listen to kernel or custom events through EventSubscriberInterface services.
- Open [**Use subscribers for events, entity hooks for entities**](../hooks-events/practice-use-event-subscribers-for-events-not-entity-operations.md) — Event subscribers are documented for kernel, config, and custom events; entity operations should use entity hooks instead.
### #logging
- Open [**Use dedicated PSR-3 logger channels**](practice-use-dedicated-psr3-logger-channels.md) — Define one logger channel per module and inject that channel as Psr\\Log\\LoggerInterface.
### #mail
- Open [**Drupal mail flow**](map-drupal-mail-flow.md) — MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output.