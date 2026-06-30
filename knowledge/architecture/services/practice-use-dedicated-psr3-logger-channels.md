---
schema_version: 2
id: practice-use-dedicated-psr3-logger-channels
title: Use dedicated PSR-3 logger channels
kind: practice
tags:
  - drupal
  - logging
  - services
derived_from:
  - https://www.drupal.org/docs/8/api/logging-api/overview
  - https://api.drupal.org/api/drupal/core%21core.services.yml/service/logger.channel_base/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Logger%21LoggerChannelInterface.php/interface/LoggerChannelInterface/11.x
relates_to:
  - map-advanced-drupal-service-patterns
  - map-drupal-service-definitions-and-common-services
  - map-symfony-events-and-custom-events
depends_on: []
confidence: high
summary: >-
  Define one logger channel per module and inject that channel as
  Psr\Log\LoggerInterface.
---
Each module should define its own `logger.channel.<module>` service using `logger.channel_base` and the module name as its channel argument. In object-oriented code, inject the dedicated channel and type-hint `Psr\Log\LoggerInterface`.

Use PSR-3 levels according to severity and pass dynamic values through the context array with Drupal placeholders. Do not log to another module's channel; use static `\Drupal::logger()` only in procedural code such as hooks.
