---
schema_version: 2
id: map-drupal-form-element-types-reference
title: Drupal form element types reference
kind: map
tags:
  - forms
  - elements
  - reference
derived_from: []
relates_to:
  - map-drupal-form-building-patterns
  - practice-clean-up-tempstore-data-after-workflows
  - practice-define-schema-for-drupal-configuration
depends_on: []
confidence: medium
summary: >-
  Form API element types map #type values to render element classes, key
  properties, defaults, and gotchas.
---
The form element types documentation is the local reference for Drupal Form API #type values and their backing RenderElement classes under core/lib/Drupal/Core/Render/Element/.

It covers text inputs, selection elements, number and date elements, container elements, table elements, code examples for autocomplete, option groups, machine names, tableselect, and #states conditional visibility selectors.

Important gotchas include using string '0' instead of integer 0 as a checkboxes option key, knowing that required selects with no default auto-add an empty option, using details outside forms but fieldset only inside forms, and remembering machine_name existence callbacks run only when the value differs from #default_value.
