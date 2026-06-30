---
schema_version: 2
id: practice-register-views-handlers-in-views-data
title: Register Views handlers in views data
kind: practice
tags:
  - drupal
  - plugins
  - views
derived_from: []
relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-alter-and-debug-plugin-definitions-through-managers
depends_on: []
confidence: high
summary: >-
  Views plugin handlers need attributes, correct directories, and
  hook_views_data registration.
---
Views plugins live under `Plugin\views\<type>` for handler types such as field, filter, sort, argument, area, and relationship. Use the relevant Views PHP 8 attribute, such as `#[ViewsField(...)]` or `#[ViewsFilter(...)]`.

Register handlers in `hook_views_data()` or `hook_views_data_alter()`, and place each handler in the matching `Plugin/views/<type>/` directory.

Call `ensureMyTable()` before query operations that rely on `$this->tableAlias`. Remember that `$this->realField` is the actual database column, while `$this->field` is the Views field ID.
