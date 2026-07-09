---
type: map
title: Drupal service definitions and common services
description: >-
  Module services are PHP classes registered in services.yml with injected core
  services and optional parameters.
tags:
  - drupal
  - services
  - di
kk_schema_version: 3
kk_id: map-drupal-service-definitions-and-common-services
kk_derived_from:
  - >-
    https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/services-and-dependency-injection-in-drupal
  - >-
    https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/structure-of-a-service-file
  - 'https://api.drupal.org/api/drupal/services/11.x'
kk_relates_to:
  - map-advanced-drupal-service-patterns
  - practice-cache-computed-service-data-with-cachebackendinterface
  - practice-register-custom-plugin-managers-with-default-plugin-manager-parent
kk_depends_on: []
kk_confidence: medium
---
A module service is a class registered in `mymodule.services.yml` with constructor arguments that reference other services or parameters. Common dependencies include `entity_type.manager`, `current_user`, `config.factory`, `logger.factory`, `messenger`, `http_client`, `cache.default`, `database`, `event_dispatcher`, and `module_handler`.

Service definitions can use positional arguments, named constructor arguments, parameters, and `public: false` for internal services. In Drupal 10 and 11, autowiring is available for module services but is best treated as optional; prefer explicit definitions when the service ID, interface alias, or constructor argument choice must stay clear.

<!-- kk:related:start -->
# Related

- Related: [map-advanced-drupal-service-patterns](/drupal/architecture/services/map-advanced-drupal-service-patterns.md)
- Related: [practice-cache-computed-service-data-with-cachebackendinterface](/drupal/data-cache/cache-render/practice-cache-computed-service-data-with-cachebackendinterface.md)
- Related: [practice-register-custom-plugin-managers-with-default-plugin-manager-parent](/drupal/architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/services-and-dependency-injection-in-drupal](https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/services-and-dependency-injection-in-drupal)
[2] [https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/structure-of-a-service-file](https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/structure-of-a-service-file)
[3] [https://api.drupal.org/api/drupal/services/11.x](https://api.drupal.org/api/drupal/services/11.x)
<!-- kk:citations:end -->
