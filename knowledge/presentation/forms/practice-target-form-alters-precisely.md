---
schema_version: 2
id: practice-target-form-alters-precisely
title: Target form alters precisely
kind: practice
tags:
  - forms
  - hooks
  - validation
derived_from: []
relates_to:
  - practice-validate-input-server-side
  - map-drupal-entity-form-bases
  - map-drupal-form-building-patterns
depends_on: []
confidence: medium
summary: >-
  Prefer specific or base form alter hooks, use #states only for client-side
  behavior, and validate on the server.
---
When altering forms, prefer the narrowest hook that matches the intent: a specific form alter for one form, a base form ID alter such as form_node_form_alter for all node entity forms, and generic form_alter only for broad cross-form changes.

For entity forms, get the entity from $form_state->getFormObject()->getEntity() only after confirming the form object supports entity access. Add validation and submit handlers through #validate and #submit; use array_unshift() for validation that must run before the form's own validators.

Use #states for client-side conditional visibility, required states, and enabled states, but always enforce required business rules with server-side validation too.
