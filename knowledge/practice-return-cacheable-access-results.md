---
schema_version: 2
id: practice-return-cacheable-access-results
title: Return cacheable AccessResult decisions
kind: practice
tags:
  - security
  - access
  - cache
  - drupal
derived_from: []
relates_to:
  - practice-include-cache-metadata-in-entity-access-handlers
  - practice-route-access-requirements-and-cacheability
  - map-drupal-security-patterns-by-context
depends_on: []
confidence: high
summary: >-
  Drupal access checks must return AccessResult objects with the right cache
  metadata.
---
Use Drupal's AccessResult API for programmatic access decisions: allowed(), forbidden(), neutral(), allowedIf(), and permission helpers.

Every AccessResult must include cache metadata that matches the decision inputs, such as cachePerPermissions(), cachePerUser(), URL contexts, or entity cache tags. Missing contexts can cache a stale access decision and become a security bug.

In entity handlers, implement checkAccess() and checkCreateAccess(), return neutral() when another checker should decide, and use forbidden() only when denial must be final. Entity queries should call accessCheck(TRUE), and pass TRUE as the third argument to entity access() when cache metadata is needed.
