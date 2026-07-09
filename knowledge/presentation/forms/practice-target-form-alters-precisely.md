---
type: practice
title: Target form alters precisely
description: >-
  Prefer specific or base form alter hooks, use #states only for client-side
  behavior, and validate on the server.
tags:
  - forms
  - hooks
  - validation
kk_schema_version: 3
kk_id: practice-target-form-alters-precisely
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21form.api.php/function/hook_form_alter/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21form.api.php/function/hook_form_BASE_FORM_ID_alter/11.x
  - 'https://api.drupal.org/api/drupal/core%21misc%21states.es6.js/11.x'
kk_relates_to:
  - practice-validate-input-server-side
  - map-drupal-entity-form-bases
  - map-drupal-form-building-patterns
kk_depends_on: []
kk_confidence: medium
---
When altering forms, prefer the narrowest hook that matches the intent: a specific form alter for one form, a base form ID alter such as form_node_form_alter for all node entity forms, and generic form_alter only for broad cross-form changes.

For entity forms, get the entity from $form_state->getFormObject()->getEntity() only after confirming the form object supports entity access. Add validation and submit handlers through #validate and #submit; use array_unshift() for validation that must run before the form's own validators.

Use #states for client-side conditional visibility, required states, and enabled states, but always enforce required business rules with server-side validation too.

<!-- kk:related:start -->
# Related

- Related: [practice-validate-input-server-side](/drupal/security/input-output/practice-validate-input-server-side.md)
- Related: [map-drupal-entity-form-bases](/drupal/presentation/forms/map-drupal-entity-form-bases.md)
- Related: [map-drupal-form-building-patterns](/drupal/presentation/forms/map-drupal-form-building-patterns.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21form.api.php/function/hook_form_alter/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21form.api.php/function/hook_form_alter/11.x)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21form.api.php/function/hook_form_BASE_FORM_ID_alter/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21form.api.php/function/hook_form_BASE_FORM_ID_alter/11.x)
[3] [https://api.drupal.org/api/drupal/core%21misc%21states.es6.js/11.x](https://api.drupal.org/api/drupal/core%21misc%21states.es6.js/11.x)
<!-- kk:citations:end -->
