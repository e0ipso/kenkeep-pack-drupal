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
derived_from: []
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
Entity access handlers should attach cache metadata to AccessResult responses. Use cache-per-permissions for permission-wide decisions, cache-per-user for owner-specific decisions, and add entity cache tags when the decision depends on entity state.

When adding a list builder, remember that parent::buildHeader() and parent::buildRow() add the operations column.
