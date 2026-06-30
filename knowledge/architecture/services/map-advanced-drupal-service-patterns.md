---
schema_version: 2
id: map-advanced-drupal-service-patterns
title: Advanced Drupal service patterns
kind: map
tags:
  - drupal
  - services
  - di
derived_from: []
relates_to:
  - map-drupal-service-definitions-and-common-services
  - practice-cache-computed-service-data-with-cachebackendinterface
  - practice-register-custom-plugin-managers-with-default-plugin-manager-parent
depends_on: []
confidence: medium
summary: >-
  Advanced service definitions cover factories, decorators, tagged collectors,
  HTTP clients, and service providers.
---
Advanced Drupal service patterns include factories that create typed services, decorators that wrap existing services with `decorates` and `@.inner`, tagged services collected with `!tagged_iterator`, and HTTP clients configured through injected `http_client`, logger channels, and parameters.

Modules can alter the container with a service provider class named `{ModuleName}ServiceProvider.php` in `src/`. `register()` runs during container building to add compiler passes or definitions, while `alter()` runs after module registration to modify or replace existing service definitions.
