---
type: map
title: Drupal theme system entry points
description: >-
  Theme hooks, templates, preprocess functions, suggestions, and Twig helpers
  shape Drupal output.
tags:
  - drupal
  - theme
  - twig
kk_schema_version: 3
kk_id: map-drupal-theme-system-entry-points
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21includes%21theme.inc/function/hook_theme/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Template%21TwigExtension.php/class/TwigExtension/11.x
  - 'https://www.drupal.org/docs/develop/theming-drupal/twig-in-drupal'
kk_relates_to:
  - practice-account-for-layout-builder-overrides
  - practice-align-content-entity-keys-with-base-fields
  - practice-alter-and-debug-plugin-definitions-through-managers
kk_depends_on: []
kk_confidence: medium
---
The Drupal theme system registers theme hooks with `hook_theme()`, maps them to Twig templates such as `templates/mymodule-item.html.twig`, and lets preprocess functions modify variables before rendering.

Use hook-specific preprocess functions for custom theme hooks and entity preprocess functions, such as `mymodule_preprocess_node()`, for existing Drupal theme hooks. Theme suggestion hooks can return more specific template suggestions based on variables.

Drupal Twig exposes helpers such as the `t` filter, `path()` function, `attach_library()`, and `without()` filter for translation, URLs, asset attachment, and excluding fields from rendered content.

<!-- kk:related:start -->
# Related

- Related: [practice-account-for-layout-builder-overrides](/drupal/data-cache/cache-render/practice-account-for-layout-builder-overrides.md)
- Related: [practice-align-content-entity-keys-with-base-fields](/drupal/content-model/layout-paragraphs/practice-align-content-entity-keys-with-base-fields.md)
- Related: [practice-alter-and-debug-plugin-definitions-through-managers](/drupal/quality/practice-alter-and-debug-plugin-definitions-through-managers.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21includes%21theme.inc/function/hook_theme/11.x](https://api.drupal.org/api/drupal/core%21includes%21theme.inc/function/hook_theme/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Template%21TwigExtension.php/class/TwigExtension/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Template%21TwigExtension.php/class/TwigExtension/11.x)
[3] [https://www.drupal.org/docs/develop/theming-drupal/twig-in-drupal](https://www.drupal.org/docs/develop/theming-drupal/twig-in-drupal)
<!-- kk:citations:end -->
