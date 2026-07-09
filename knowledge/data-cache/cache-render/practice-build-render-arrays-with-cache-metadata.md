---
type: practice
title: Build render arrays with cache metadata
description: >-
  Attach cache tags, contexts, max-age, libraries, and lazy builders directly to
  Drupal render arrays.
tags:
  - drupal
  - render
  - cache
kk_schema_version: 3
kk_id: practice-build-render-arrays-with-cache-metadata
kk_derived_from:
  - 'https://www.drupal.org/docs/drupal-apis/render-api/render-arrays'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheableMetadata.php/class/CacheableMetadata/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Render%21Element%21RenderCallbackInterface.php/interface/RenderCallbackInterface/11.x
kk_relates_to:
  - practice-use-cacheable-dependencies-for-render-cache-metadata
  - practice-vary-render-cache-with-cache-contexts
  - map-non-form-render-element-types
kk_depends_on: []
kk_confidence: medium
---
Drupal render arrays should carry the metadata needed to render and cache output correctly. Use `#cache` for tags, contexts, and max-age, and `#attached` for libraries.

Cache tags describe what the output depends on, while cache contexts describe what it varies by. Use `CacheableMetadata` to add cacheable dependencies and apply bubbling metadata to a build array.

For personalized or dynamic content inside cached pages, use a `#lazy_builder` with `#create_placeholder`. The referenced callback should be trusted via `TrustedCallbackInterface` when implemented as shown in the render API documentation.

<!-- kk:related:start -->
# Related

- Related: [practice-use-cacheable-dependencies-for-render-cache-metadata](/drupal/data-cache/cache-render/practice-use-cacheable-dependencies-for-render-cache-metadata.md)
- Related: [practice-vary-render-cache-with-cache-contexts](/drupal/data-cache/cache-render/practice-vary-render-cache-with-cache-contexts.md)
- Related: [map-non-form-render-element-types](/drupal/presentation/frontend-theme/map-non-form-render-element-types.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/render-api/render-arrays](https://www.drupal.org/docs/drupal-apis/render-api/render-arrays)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheableMetadata.php/class/CacheableMetadata/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Cache%21CacheableMetadata.php/class/CacheableMetadata/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Render%21Element%21RenderCallbackInterface.php/interface/RenderCallbackInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Render%21Element%21RenderCallbackInterface.php/interface/RenderCallbackInterface/11.x)
<!-- kk:citations:end -->
