---
schema_version: 2
id: practice-use-display-modes-for-entity-rendering
title: Use display modes for entity rendering
kind: practice
tags:
  - drupal
  - render
  - display
derived_from: []
relates_to:
  - map-non-form-render-element-types
  - practice-build-render-arrays-with-cache-metadata
  - practice-define-layout-plugins-by-complexity
depends_on: []
confidence: medium
summary: >-
  Define Drupal view and form modes in config, then render entities through the
  view builder.
---
Display modes are Drupal config entities for controlling how entities are rendered or edited in different contexts. Define a view mode with `core.entity_view_mode.<entity>.<mode>.yml` and a form mode with `core.entity_form_mode.<entity>.<mode>.yml`.

Render entities with the entity view builder, for example `getViewBuilder('node')->view($node, 'card')` or `viewMultiple($nodes, 'teaser')`. Use the entity display repository when code needs to inspect display configuration, such as checking whether a field component is visible in a bundle and view mode.
