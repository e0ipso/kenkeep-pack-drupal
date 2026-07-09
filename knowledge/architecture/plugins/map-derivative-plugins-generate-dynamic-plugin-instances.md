---
type: map
title: Derivative plugins generate dynamic plugin instances
description: >-
  A deriver creates multiple plugin definitions from one base plugin using
  dynamic data.
tags:
  - drupal
  - plugins
  - derivatives
kk_schema_version: 3
kk_id: map-derivative-plugins-generate-dynamic-plugin-instances
kk_derived_from:
  - 'https://www.drupal.org/docs/drupal-apis/plugin-api/plugin-derivatives'
  - >-
    https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-entity-dependencies
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Component%21Plugin%21Derivative%21DeriverInterface.php/interface/DeriverInterface/11.x
kk_relates_to:
  - practice-alter-and-debug-plugin-definitions-through-managers
  - practice-build-configurable-and-context-aware-plugins-with-cache-contexts
  - practice-define-action-plugins-with-access-and-type-scope
kk_depends_on: []
kk_confidence: high
---
Derivative plugins generate multiple plugin instances from a single plugin class based on dynamic data such as config entities or database content.

The base plugin declares a `deriver` class in its attribute. At runtime, the plugin can inspect `$this->getDerivativeId()`, `$this->getPluginId()`, and `$this->getBaseId()` to distinguish the selected derivative.

The deriver class returns definitions from `getDerivativeDefinitions()`. A DI-aware deriver implements `ContainerDeriverInterface`, and derivative definitions can set labels and config dependencies per generated plugin.

<!-- kk:related:start -->
# Related

- Related: [practice-alter-and-debug-plugin-definitions-through-managers](/drupal/quality/practice-alter-and-debug-plugin-definitions-through-managers.md)
- Related: [practice-build-configurable-and-context-aware-plugins-with-cache-contexts](/drupal/data-cache/cache-render/practice-build-configurable-and-context-aware-plugins-with-cache-contexts.md)
- Related: [practice-define-action-plugins-with-access-and-type-scope](/drupal/security/access/practice-define-action-plugins-with-access-and-type-scope.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/plugin-api/plugin-derivatives](https://www.drupal.org/docs/drupal-apis/plugin-api/plugin-derivatives)
[2] [https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-entity-dependencies](https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-entity-dependencies)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Component%21Plugin%21Derivative%21DeriverInterface.php/interface/DeriverInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Component%21Plugin%21Derivative%21DeriverInterface.php/interface/DeriverInterface/11.x)
<!-- kk:citations:end -->
