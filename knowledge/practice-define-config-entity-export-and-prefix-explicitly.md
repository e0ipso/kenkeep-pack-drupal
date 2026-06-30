---
schema_version: 2
id: practice-define-config-entity-export-and-prefix-explicitly
title: Define config entity export and prefix explicitly
kind: practice
tags:
  - drupal
  - entities
  - config
derived_from: []
relates_to:
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
  - practice-align-content-entity-keys-with-base-fields
depends_on: []
confidence: medium
summary: >-
  Config entities need config_export for persisted properties and config_prefix
  for generated filenames.
---
Config entities should explicitly list exported properties in config_export. The config_prefix controls the generated filename pattern, such as mymodule.type.{id}.yml.

Config entities are often used as bundle entities for content entities, so keep their exported properties and schema aligned with the intended bundle configuration.
