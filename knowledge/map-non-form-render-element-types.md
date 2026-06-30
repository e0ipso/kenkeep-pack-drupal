---
schema_version: 2
id: map-non-form-render-element-types
title: Non-form render element types
kind: map
tags:
  - drupal
  - render
  - elements
derived_from: []
relates_to:
  - practice-build-render-arrays-with-cache-metadata
  - practice-define-layout-plugins-by-complexity
  - practice-use-cacheable-dependencies-for-render-cache-metadata
depends_on: []
confidence: medium
summary: >-
  Drupal provides non-form render elements for common output structures in
  controllers and preprocess code.
---
Non-form render elements are used anywhere render arrays are returned, including controllers and preprocess functions. Common element types include `html_tag`, `inline_template`, `container`, `link`, `more_link`, `status_messages`, `pager`, `dropbutton`, and `operations`.

Use `#markup`, `#plain_text`, `#prefix`, and `#suffix` as shortcuts when no dedicated `#type` is needed. Use `#theme` to invoke a custom Twig template registered with `hook_theme()`.

Important constraints from the reference: `#markup` and `html_tag` values are XSS-filtered unless trusted markup is used, Twig context variables are auto-escaped, `link` requires a `Drupal\Core\Url` object, and lazy builder arguments must be scalar values only.
