---
type: practice
title: Use display modes for entity rendering
description: >-
  Define Drupal view and form modes in config, then render entities through the
  view builder.
tags:
  - drupal
  - render
  - display
kk_schema_version: 3
kk_id: practice-use-display-modes-for-entity-rendering
kk_derived_from:
  - >-
    https://www.drupal.org/docs/drupal-apis/entity-api/display-modes-view-modes-and-form-modes
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityViewBuilderInterface.php/interface/EntityViewBuilderInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityDisplayRepositoryInterface.php/interface/EntityDisplayRepositoryInterface/11.x
kk_relates_to:
  - map-non-form-render-element-types
  - practice-build-render-arrays-with-cache-metadata
  - practice-define-layout-plugins-by-complexity
kk_depends_on: []
kk_confidence: medium
---
Display modes are Drupal config entities for controlling how entities are rendered or edited in different contexts. Define a view mode with `core.entity_view_mode.<entity>.<mode>.yml` and a form mode with `core.entity_form_mode.<entity>.<mode>.yml`.

Render entities with the entity view builder, for example `getViewBuilder('node')->view($node, 'card')` or `viewMultiple($nodes, 'teaser')`. Use the entity display repository when code needs to inspect display configuration, such as checking whether a field component is visible in a bundle and view mode.

<!-- kk:related:start -->
# Related

- Related: [map-non-form-render-element-types](/drupal/presentation/frontend-theme/map-non-form-render-element-types.md)
- Related: [practice-build-render-arrays-with-cache-metadata](/drupal/data-cache/cache-render/practice-build-render-arrays-with-cache-metadata.md)
- Related: [practice-define-layout-plugins-by-complexity](/drupal/content-model/layout-paragraphs/practice-define-layout-plugins-by-complexity.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/entity-api/display-modes-view-modes-and-form-modes](https://www.drupal.org/docs/drupal-apis/entity-api/display-modes-view-modes-and-form-modes)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityViewBuilderInterface.php/interface/EntityViewBuilderInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityViewBuilderInterface.php/interface/EntityViewBuilderInterface/11.x)
[3] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityDisplayRepositoryInterface.php/interface/EntityDisplayRepositoryInterface/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Entity%21EntityDisplayRepositoryInterface.php/interface/EntityDisplayRepositoryInterface/11.x)
<!-- kk:citations:end -->
