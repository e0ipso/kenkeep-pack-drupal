---
type: map
title: Advanced Drupal service patterns
description: >-
  Advanced service definitions cover factories, decorators, tagged collectors,
  HTTP clients, and service providers.
tags:
  - drupal
  - services
  - di
kk_schema_version: 3
kk_id: map-advanced-drupal-service-patterns
kk_derived_from:
  - >-
    https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/structure-of-a-service-file
  - >-
    https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/altering-existing-services-providing-dynamic-services
kk_relates_to:
  - map-drupal-service-definitions-and-common-services
  - practice-cache-computed-service-data-with-cachebackendinterface
  - practice-register-custom-plugin-managers-with-default-plugin-manager-parent
kk_depends_on: []
kk_confidence: medium
---
Advanced Drupal service patterns include factories that create typed services, decorators that wrap existing services with `decorates` and `@.inner`, tagged services collected with `!tagged_iterator`, and HTTP clients configured through injected `http_client`, logger channels, and parameters.

Modules can alter the container with a service provider class named `{ModuleName}ServiceProvider.php` in `src/`. `register()` runs during container building to add compiler passes or definitions, while `alter()` runs after module registration to modify or replace existing service definitions.

<!-- kk:related:start -->
# Related

- Related: [map-drupal-service-definitions-and-common-services](/drupal/architecture/services/map-drupal-service-definitions-and-common-services.md)
- Related: [practice-cache-computed-service-data-with-cachebackendinterface](/drupal/data-cache/cache-render/practice-cache-computed-service-data-with-cachebackendinterface.md)
- Related: [practice-register-custom-plugin-managers-with-default-plugin-manager-parent](/drupal/architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/structure-of-a-service-file](https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/structure-of-a-service-file)
[2] [https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/altering-existing-services-providing-dynamic-services](https://www.drupal.org/docs/drupal-apis/services-and-dependency-injection/altering-existing-services-providing-dynamic-services)
<!-- kk:citations:end -->
