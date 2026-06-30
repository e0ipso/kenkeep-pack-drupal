---
schema_version: 2
id: practice-place-custom-validation-constraints-by-convention
title: Place custom validation constraints by convention
kind: practice
tags:
  - drupal
  - entities
  - validation
derived_from: []
relates_to:
  - map-drupal-entity-form-bases
  - map-typed-entity-wrapper-structure
  - practice-align-content-entity-keys-with-base-fields
depends_on: []
confidence: medium
summary: >-
  Custom entity validation constraints and validators belong in
  Plugin/Validation/Constraint with matching names.
---
Custom validation constraints and their validators should both live in Plugin/Validation/Constraint/. The validator class must follow the {ConstraintClassName}Validator naming convention.

Apply constraints to base fields with addConstraint(), and call entity validate() when programmatic validation is needed. UniqueField is case-insensitive by default; set caseSensitive to TRUE when exact matching is required.
