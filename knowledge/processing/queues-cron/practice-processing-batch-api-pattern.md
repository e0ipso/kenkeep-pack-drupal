---
schema_version: 2
id: practice-processing-batch-api-pattern
title: Use Drupal Batch API with sandbox progress and a finished callback
kind: practice
tags:
  - drupal
  - batch
  - processing
derived_from: []
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
