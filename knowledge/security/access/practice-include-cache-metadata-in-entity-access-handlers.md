---
schema_version: 2
id: practice-include-cache-metadata-in-entity-access-handlers
title: Include cache metadata in entity access handlers
kind: practice
tags:
  - drupal
  - entities
  - access
  - cache
derived_from:
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityAccessControlHandler.php/class/EntityAccessControlHandler/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Access%21AccessResult.php/class/AccessResult/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheableDependencyInterface.php/interface/CacheableDependencyInterface/11.x
relates_to:
  - practice-call-access-check-on-entity-queries
  - practice-return-cacheable-access-results
  - practice-route-access-requirements-and-cacheability
depends_on: []
confidence: medium
summary: >-
  Entity access results need cache metadata such as permission, user, or entity
  cache contexts/tags.
---
Entity access handlers should attach cache metadata to `AccessResult` responses. Use `cachePerPermissions()` for permission-wide decisions, `cachePerUser()` for owner-specific decisions, and add the entity as a cacheable dependency when the decision depends on entity state.

When adding a list builder, remember that parent::buildHeader() and parent::buildRow() add the operations column.
