---
type: map
title: Single Directory Components structure
description: >-
  Drupal SDC components group metadata, Twig, CSS, and JavaScript in one
  component directory.
tags:
  - drupal
  - sdc
  - components
kk_schema_version: 3
kk_id: map-single-directory-components-structure
kk_derived_from:
  - >-
    https://www.drupal.org/docs/develop/theming-drupal/using-single-directory-components
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21sdc%21src%21Element%21ComponentElement.php/class/ComponentElement/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21sdc%21src%21Component%21ComponentMetadata.php/class/ComponentMetadata/11.x
kk_relates_to:
  - practice-account-for-layout-builder-overrides
  - practice-align-content-entity-keys-with-base-fields
  - practice-alter-and-debug-plugin-definitions-through-managers
kk_depends_on: []
kk_confidence: medium
---
Single Directory Components live under a component directory containing files such as `<name>.component.yml`, `<name>.twig`, optional CSS, and optional JavaScript. The YAML metadata defines the component name, props schema, required props, and slots.

Components can be used from Twig with `include('mymodule:card', {...})` or `embed 'mymodule:card'` for slot overrides. They can also be rendered from PHP with a render array using `#type: component`, `#component`, and `#props`.

<!-- kk:related:start -->
# Related

- Related: [practice-account-for-layout-builder-overrides](/drupal/data-cache/cache-render/practice-account-for-layout-builder-overrides.md)
- Related: [practice-align-content-entity-keys-with-base-fields](/drupal/content-model/layout-paragraphs/practice-align-content-entity-keys-with-base-fields.md)
- Related: [practice-alter-and-debug-plugin-definitions-through-managers](/drupal/quality/practice-alter-and-debug-plugin-definitions-through-managers.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/theming-drupal/using-single-directory-components](https://www.drupal.org/docs/develop/theming-drupal/using-single-directory-components)
[2] [https://api.drupal.org/api/drupal/core%21modules%21sdc%21src%21Element%21ComponentElement.php/class/ComponentElement/11.x](https://api.drupal.org/api/drupal/core%21modules%21sdc%21src%21Element%21ComponentElement.php/class/ComponentElement/11.x)
[3] [https://api.drupal.org/api/drupal/core%21modules%21sdc%21src%21Component%21ComponentMetadata.php/class/ComponentMetadata/11.x](https://api.drupal.org/api/drupal/core%21modules%21sdc%21src%21Component%21ComponentMetadata.php/class/ComponentMetadata/11.x)
<!-- kk:citations:end -->
