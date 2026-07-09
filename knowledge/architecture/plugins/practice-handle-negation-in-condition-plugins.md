---
type: practice
title: Handle negation in condition plugins
description: >-
  Condition plugin evaluate methods should account for negation and return
  translated summaries.
tags:
  - drupal
  - plugins
  - conditions
kk_schema_version: 3
kk_id: practice-handle-negation-in-condition-plugins
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Condition%21Attribute%21Condition.php/class/Condition/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Condition%21ConditionInterface.php/interface/ConditionInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21system%21src%21Plugin%21Condition%21CurrentThemeCondition.php/class/CurrentThemeCondition/11.x
kk_relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-alter-and-debug-plugin-definitions-through-managers
kk_depends_on: []
kk_confidence: high
---
Condition plugins live under `Plugin\Condition` and use the `#[Condition(...)]` attribute. They are used for block visibility and other context-aware plugin behavior.

Always account for `isNegated()` in `evaluate()` so the condition behaves correctly when configured as a negative condition.

Use the plugin configuration methods when the condition needs settings, and have `summary()` return a human-readable translated summary, usually via `$this->t()`.

<!-- kk:related:start -->
# Related

- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
- Related: [map-drupal-mail-flow](/drupal/architecture/services/map-drupal-mail-flow.md)
- Related: [practice-alter-and-debug-plugin-definitions-through-managers](/drupal/quality/practice-alter-and-debug-plugin-definitions-through-managers.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Condition%21Attribute%21Condition.php/class/Condition/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Condition%21Attribute%21Condition.php/class/Condition/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Condition%21ConditionInterface.php/interface/ConditionInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Condition%21ConditionInterface.php/interface/ConditionInterface/11.x)
[3] [https://api.drupal.org/api/drupal/core%21modules%21system%21src%21Plugin%21Condition%21CurrentThemeCondition.php/class/CurrentThemeCondition/11.x](https://api.drupal.org/api/drupal/core%21modules%21system%21src%21Plugin%21Condition%21CurrentThemeCondition.php/class/CurrentThemeCondition/11.x)
<!-- kk:citations:end -->
