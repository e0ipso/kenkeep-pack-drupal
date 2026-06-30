---
schema_version: 2
summary: service definitions, dependency injection, logging, and service-oriented patterns; read before adding or changing services
---
# Services Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Inject services into plugins with ContainerFactoryPluginInterface**](practice-inject-services-into-plugins-with-container-factory.md) to learn about: Plugins that need services should use create() and constructor injection instead of static Drupal service calls. #drupal #plugins #dependency-injection
- Open [**Register custom plugin managers with default_plugin_manager**](practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) to learn about: Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring. #drupal #plugins #services
- Open [**Use dedicated PSR-3 logger channels**](practice-use-dedicated-psr3-logger-channels.md) to learn about: Define one logger channel per module and inject that channel as Psr\Log\LoggerInterface. #drupal #logging #services

## Components (what exists)
- Open [**Advanced Drupal service patterns**](map-advanced-drupal-service-patterns.md) to learn about: Advanced service definitions cover factories, decorators, tagged collectors, HTTP clients, and service providers. #drupal #services #di
- Open [**Drupal mail flow**](map-drupal-mail-flow.md) to learn about: MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output. #drupal #mail #plugins
- Open [**Drupal service definitions and common services**](map-drupal-service-definitions-and-common-services.md) to learn about: Module services are PHP classes registered in services.yml with injected core services and optional parameters. #drupal #services #di
- Open [**Symfony events and custom events**](map-symfony-events-and-custom-events.md) to learn about: Drupal event subscribers listen to kernel or custom events through EventSubscriberInterface services. #drupal #events #services

