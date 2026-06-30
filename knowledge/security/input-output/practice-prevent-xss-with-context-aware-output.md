---
schema_version: 2
id: practice-prevent-xss-with-context-aware-output
title: Prevent XSS with context-aware output
kind: practice
tags:
  - security
  - xss
  - rendering
  - drupal
derived_from:
  - https://www.drupal.org/docs/drupal-apis/render-api/render-arrays
  - https://www.drupal.org/docs/theming-drupal/twig-in-drupal
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Component%21Utility%21Xss.php/class/Xss/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Component%21Utility%21UrlHelper.php/class/UrlHelper/11.x
relates_to:
  - map-drupal-security-patterns-by-context
  - practice-avoid-common-security-vulnerabilities
  - practice-handle-files-securely
depends_on: []
confidence: high
summary: >-
  Use render arrays, placeholders, URL helpers, drupalSettings, and Twig
  auto-escaping.
---
Use Drupal render arrays for output, preferring `#plain_text` for user input. If `#markup` is required, provide trusted markup or escape/filter first; rich text should use `processed_text` with a sanitizing text format.

Use translation placeholders instead of concatenating user input into `t()`: `@` for escaped text, `%` for escaped emphasized text, and `:url` for escaped URLs. Let Twig auto-escaping work, and reserve `|raw` for content that has already been sanitized.

Validate URLs with `UrlHelper`, strip dangerous protocols, pass PHP data to JavaScript through `drupalSettings`, and write JavaScript output with `textContent` rather than `innerHTML`.
