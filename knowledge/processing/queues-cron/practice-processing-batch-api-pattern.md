---
schema_version: 2
id: practice-processing-batch-api-pattern
title: Use Drupal Batch API with sandbox progress and a finished callback
kind: practice
tags:
  - drupal
  - batch
  - processing
derived_from:
  - "https://api.drupal.org/api/drupal/core%21includes%21form.inc/group/batch/11.x"
  - "https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Batch%21BatchBuilder.php/class/BatchBuilder/11.x"
relates_to:
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
  - map-derivative-plugins-generate-dynamic-plugin-instances
depends_on: []
confidence: high
summary: >-
  Long-running browser-initiated processing should be modeled as a Drupal batch
  with chunked operations, sandbox progress, user-facing messages, and a final
  success/error callback.
---
Define batches with a title, operations, and a finished callback, then register them with batch_set(). Operation callbacks should initialize $context['sandbox'] state, process a bounded chunk, append useful results, set $context['finished'] as progress/max, and update $context['message']. Use the finished callback to report completion or failure. Prefer BatchBuilder when an OOP construction style fits the surrounding code.
