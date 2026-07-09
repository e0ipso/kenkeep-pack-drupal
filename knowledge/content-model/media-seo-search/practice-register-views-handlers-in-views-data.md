---
type: practice
title: Register Views handlers in views data
description: >-
  Views plugin handlers should use current attributes where supported, correct
  directories, and hook_views_data registration.
tags:
  - drupal
  - plugins
  - views
kk_schema_version: 3
kk_id: practice-register-views-handlers-in-views-data
kk_derived_from:
  - 'https://www.drupal.org/docs/drupal-apis/plugin-api/attribute-based-plugins'
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21views%21views.api.php/function/hook_views_data/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21views%21src%21Attribute%21ViewsField.php/class/ViewsField/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21views%21src%21Plugin%21views%21field%21FieldPluginBase.php/class/FieldPluginBase/11.x
kk_relates_to:
  - map-derivative-plugins-generate-dynamic-plugin-instances
  - map-drupal-mail-flow
  - practice-alter-and-debug-plugin-definitions-through-managers
kk_depends_on: []
kk_confidence: high
---
Views plugins live under `Plugin\views\<type>` for handler types such as field, filter, sort, argument, area, and relationship. In Drupal 10.2+ and 11, prefer the relevant Views PHP 8 attribute, such as `#[ViewsField(...)]` or `#[ViewsFilter(...)]`; annotation examples are legacy-compatible but not the current style.

Register handlers in `hook_views_data()` or `hook_views_data_alter()`, and place each handler in the matching `Plugin/views/<type>/` directory.

Call `ensureMyTable()` before query operations that rely on `$this->tableAlias`. Remember that `$this->realField` is the actual database column, while `$this->field` is the Views field ID.

<!-- kk:related:start -->
# Related

- Related: [map-derivative-plugins-generate-dynamic-plugin-instances](/drupal/architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md)
- Related: [map-drupal-mail-flow](/drupal/architecture/services/map-drupal-mail-flow.md)
- Related: [practice-alter-and-debug-plugin-definitions-through-managers](/drupal/quality/practice-alter-and-debug-plugin-definitions-through-managers.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/plugin-api/attribute-based-plugins](https://www.drupal.org/docs/drupal-apis/plugin-api/attribute-based-plugins)
[2] [https://api.drupal.org/api/drupal/core%21modules%21views%21views.api.php/function/hook_views_data/11.x](https://api.drupal.org/api/drupal/core%21modules%21views%21views.api.php/function/hook_views_data/11.x)
[3] [https://api.drupal.org/api/drupal/core%21modules%21views%21src%21Attribute%21ViewsField.php/class/ViewsField/11.x](https://api.drupal.org/api/drupal/core%21modules%21views%21src%21Attribute%21ViewsField.php/class/ViewsField/11.x)
[4] [https://api.drupal.org/api/drupal/core%21modules%21views%21src%21Plugin%21views%21field%21FieldPluginBase.php/class/FieldPluginBase/11.x](https://api.drupal.org/api/drupal/core%21modules%21views%21src%21Plugin%21views%21field%21FieldPluginBase.php/class/FieldPluginBase/11.x)
<!-- kk:citations:end -->
