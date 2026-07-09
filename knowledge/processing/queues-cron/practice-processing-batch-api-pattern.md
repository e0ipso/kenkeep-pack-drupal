---
type: practice
title: Use Drupal Batch API with sandbox progress and a finished callback
description: >-
  Long-running browser-initiated processing should be modeled as a Drupal batch
  with chunked operations, sandbox progress, user-facing messages, and a final
  success/error callback.
tags:
  - drupal
  - batch
  - processing
kk_schema_version: 3
kk_id: practice-processing-batch-api-pattern
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21includes%21form.inc/group/batch/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Batch%21BatchBuilder.php/class/BatchBuilder/11.x
kk_relates_to:
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
  - map-derivative-plugins-generate-dynamic-plugin-instances
kk_depends_on: []
kk_confidence: high
---
Define batches with a title, operations, and a finished callback, then register them with batch_set(). Operation callbacks should initialize $context['sandbox'] state, process a bounded chunk, append useful results, set $context['finished'] as progress/max, and update $context['message']. Use the finished callback to report completion or failure. Prefer BatchBuilder when an OOP construction style fits the surrounding code.

<!-- kk:related:start -->
# Related

- Related: [map-advanced-drupal-service-patterns](/drupal/architecture/services/map-advanced-drupal-service-patterns.md)
- Related: [map-ajax-command-reference-surface](/drupal/presentation/frontend-theme/map-ajax-command-reference-surface.md)
- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21includes%21form.inc/group/batch/11.x](https://api.drupal.org/api/drupal/core%21includes%21form.inc/group/batch/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Batch%21BatchBuilder.php/class/BatchBuilder/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Batch%21BatchBuilder.php/class/BatchBuilder/11.x)
<!-- kk:citations:end -->
