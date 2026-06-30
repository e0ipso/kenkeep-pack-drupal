---
schema_version: 2
id: practice-handle-negation-in-condition-plugins
title: Handle negation in condition plugins
kind: practice
tags:
  - drupal
  - plugins
  - conditions
derived_from: []
relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-alter-and-debug-plugin-definitions-through-managers
depends_on: []
confidence: high
summary: >-
  Condition plugin evaluate methods should account for negation and return
  summaries as TranslatableMarkup.
---
Condition plugins live under `Plugin\Condition` and use the `#[Condition(...)]` attribute. They are used for block visibility and other context-aware plugin behavior.

Always account for `isNegated()` in `evaluate()` so the condition behaves correctly when configured as a negative condition.

Use the plugin configuration methods when the condition needs settings, and have `summary()` return `TranslatableMarkup` rather than a plain string.
