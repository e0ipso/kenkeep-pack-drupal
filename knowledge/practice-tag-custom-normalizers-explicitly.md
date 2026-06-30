---
schema_version: 2
id: practice-tag-custom-normalizers-explicitly
title: Tag custom normalizers explicitly
kind: practice
tags:
  - http
  - serialization
  - services
derived_from: []
relates_to:
  - map-advanced-drupal-service-patterns
  - map-drupal-service-definitions-and-common-services
  - map-jsonrpc-method-plugins
depends_on: []
confidence: high
summary: >-
  Custom serialization normalizers need an explicit normalizer service tag with
  priority.
---
When adding a custom serialization normalizer, extend the appropriate base such as `ContentEntityNormalizer`, set the supported interface or class, and adjust normalized data in `normalize()` by adding computed values or removing internal fields.

Register the normalizer as a service with an explicit `normalizer` tag and `priority`. The documentation calls out that normalizer tags with priority are not autoconfigured, so the tag must stay in the service definition even when service defaults use autowire and autoconfigure.
