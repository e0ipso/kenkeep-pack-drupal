---
schema_version: 2
id: practice-handle-negation-in-condition-plugins
title: Handle negation in condition plugins
kind: practice
tags:
  - drupal
  - plugins
  - conditions
derived_from:
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Condition%21Attribute%21Condition.php/class/Condition/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Condition%21ConditionInterface.php/interface/ConditionInterface/11.x
  - https://api.drupal.org/api/drupal/core%21modules%21system%21src%21Plugin%21Condition%21CurrentThemeCondition.php/class/CurrentThemeCondition/11.x
relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-alter-and-debug-plugin-definitions-through-managers
depends_on: []
confidence: high
summary: >-
  Condition plugin evaluate methods should account for negation and return
  translated summaries.
---
Condition plugins live under `Plugin\Condition` and use the `#[Condition(...)]` attribute. They are used for block visibility and other context-aware plugin behavior.

Always account for `isNegated()` in `evaluate()` so the condition behaves correctly when configured as a negative condition.

Use the plugin configuration methods when the condition needs settings, and have `summary()` return a human-readable translated summary, usually via `$this->t()`.
