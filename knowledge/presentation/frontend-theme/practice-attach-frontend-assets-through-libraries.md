---
schema_version: 2
id: practice-attach-frontend-assets-through-libraries
title: Attach frontend assets through libraries
kind: practice
tags:
  - frontend
  - assets
  - libraries
  - drupal
derived_from: []
relates_to:
  - map-ajax-command-reference-surface
  - practice-use-drupal-ajax-for-dynamic-interactions
  - map-advanced-drupal-service-patterns
depends_on: []
confidence: medium
summary: >-
  Define CSS and JS in libraries.yml and attach libraries where needed instead
  of loading assets globally.
---
Define frontend assets in module libraries.yml files, including CSS, JavaScript, versions, options, and fully qualified dependencies such as core/drupal, core/drupalSettings, and core/once.

Attach libraries at the point of use with #attached in render arrays or forms, or attach_library() in Twig. Prefer conditional attachment for feature-specific or permission-specific assets instead of global loading.

Use Drupal's CSS categories base, layout, component, state, and theme for ordering. Dependencies must be written as module/library, and common core libraries include core/drupal, core/once, core/jquery, core/drupal.ajax, and core/drupal.dialog.
