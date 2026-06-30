---
schema_version: 2
id: map-single-directory-components-structure
title: Single Directory Components structure
kind: map
tags:
  - drupal
  - sdc
  - components
derived_from: []
relates_to:
  - practice-account-for-layout-builder-overrides
  - practice-align-content-entity-keys-with-base-fields
  - practice-alter-and-debug-plugin-definitions-through-managers
depends_on: []
confidence: medium
summary: >-
  Drupal SDC components group metadata, Twig, CSS, and JavaScript in one
  component directory.
---
Single Directory Components live under a component directory containing files such as `<name>.component.yml`, `<name>.twig`, optional CSS, and optional JavaScript. The YAML metadata defines the component name, props schema, required props, and slots.

Components can be used from Twig with `include('mymodule:card', {...})` or `embed 'mymodule:card'` for slot overrides. They can also be rendered from PHP with a render array using `#type: component`, `#component`, and `#props`.
