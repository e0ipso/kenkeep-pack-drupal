---
schema_version: 2
id: map-drupal-service-definitions-and-common-services
title: Drupal service definitions and common services
kind: map
tags:
  - drupal
  - services
  - di
derived_from:
  - https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/services-and-dependency-injection-in-drupal
  - https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/structure-of-a-service-file
  - https://api.drupal.org/api/drupal/services/11.x
relates_to:
  - map-advanced-drupal-service-patterns
  - practice-cache-computed-service-data-with-cachebackendinterface
  - practice-register-custom-plugin-managers-with-default-plugin-manager-parent
depends_on: []
confidence: medium
summary: >-
  Module services are PHP classes registered in services.yml with injected core
  services and optional parameters.
---
A module service is a class registered in `mymodule.services.yml` with constructor arguments that reference other services or parameters. Common dependencies include `entity_type.manager`, `current_user`, `config.factory`, `logger.factory`, `messenger`, `http_client`, `cache.default`, `database`, `event_dispatcher`, and `module_handler`.

Service definitions can use positional arguments, named constructor arguments, parameters, and `public: false` for internal services. In Drupal 10 and 11, autowiring is available for module services but is best treated as optional; prefer explicit definitions when the service ID, interface alias, or constructor argument choice must stay clear.
