---
schema_version: 2
id: practice-prefer-specific-form-and-neutral-access-hooks
title: Target forms specifically and keep access neutral by default
kind: practice
tags:
  - drupal
  - forms
  - access
derived_from:
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21form.api.php/function/hook_form_FORM_ID_alter/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Form%21form.api.php/function/hook_form_BASE_FORM_ID_alter/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21entity.api.php/function/hook_entity_access/11.x
relates_to:
  - map-drupal-entity-form-bases
  - map-drupal-form-building-patterns
  - practice-call-access-check-on-entity-queries
depends_on: []
confidence: medium
summary: >-
  Use specific form alter hooks for single forms, and have access hooks return
  neutral unless explicitly deciding access.
---
Prefer specific form alter hooks such as `mymodule_form_user_login_form_alter()` or `mymodule_form_node_article_form_alter()` when targeting one form; reserve generic `hook_form_alter()` for cross-form behavior with explicit filtering. In access hooks, return an `AccessResult` with the relevant cache contexts/tags for explicit decisions and return `AccessResult::neutral()` when the hook should not decide access. Prefer entity-type-specific access hooks or access handlers over broad `hook_entity_access()` when possible.
