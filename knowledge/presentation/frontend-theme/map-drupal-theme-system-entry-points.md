---
schema_version: 2
id: map-drupal-theme-system-entry-points
title: Drupal theme system entry points
kind: map
tags:
  - drupal
  - theme
  - twig
derived_from:
  - https://api.drupal.org/api/drupal/core%21includes%21theme.inc/function/hook_theme/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Template%21TwigExtension.php/class/TwigExtension/11.x
  - https://www.drupal.org/docs/develop/theming-drupal/twig-in-drupal
relates_to:
  - practice-account-for-layout-builder-overrides
  - practice-align-content-entity-keys-with-base-fields
  - practice-alter-and-debug-plugin-definitions-through-managers
depends_on: []
confidence: medium
summary: >-
  Theme hooks, templates, preprocess functions, suggestions, and Twig helpers
  shape Drupal output.
---
The Drupal theme system registers theme hooks with `hook_theme()`, maps them to Twig templates such as `templates/mymodule-item.html.twig`, and lets preprocess functions modify variables before rendering.

Use hook-specific preprocess functions for custom theme hooks and entity preprocess functions, such as `mymodule_preprocess_node()`, for existing Drupal theme hooks. Theme suggestion hooks can return more specific template suggestions based on variables.

Drupal Twig exposes helpers such as the `t` filter, `path()` function, `attach_library()`, and `without()` filter for translation, URLs, asset attachment, and excluding fields from rendered content.
