---
schema_version: 2
id: map-extensibility-docs-map
title: 'Extensibility docs cover hooks, events, tokens, and updates'
kind: map
tags:
  - docs
  - extensibility
  - map
derived_from:
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Hook%21Attribute%21Hook.php/class/Hook/11.x"
  - "https://api.drupal.org/api/drupal/core%21core.api.php/group/hooks/11.x"
  - "https://www.drupal.org/docs/drupal-apis/update-api"
relates_to:
  - map-developer-tools-drush-docs-map
  - practice-account-for-layout-builder-overrides
  - practice-account-for-render-cache-max-age-gotchas
depends_on: []
confidence: medium
summary: >-
  The docs/extensibility folder is organized around Drupal extension mechanisms
  and links related detail pages together.
---
`docs/extensibility/hooks.md` is the entry point for OOP hooks and links to entity lifecycle hooks, form/access/alter hooks, and hook ordering/removal/procedural compatibility; install and update hooks remain procedural in current core. `events.md` and `subscribers.md` cover Symfony event subscribers and custom events. `tokens.md` covers token definitions and replacements, while `tokens_advanced.md` covers token service usage, altering tokens, chained tokens, and cache patterns. `update_hooks.md` covers update and post-update hooks plus the Drush commands used to run and inspect updates.
