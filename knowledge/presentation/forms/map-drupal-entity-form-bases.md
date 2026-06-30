---
schema_version: 2
id: map-drupal-entity-form-bases
title: Drupal entity form bases
kind: map
tags:
  - forms
  - entities
  - drupal
derived_from: []
relates_to:
  - practice-align-content-entity-keys-with-base-fields
  - practice-batch-load-entities-after-querying-ids
  - practice-call-access-check-on-entity-queries
depends_on: []
confidence: medium
summary: >-
  Entity forms use ContentEntityForm or EntityForm, register handlers, and
  access the edited entity through the form object.
---
Content entity forms extend ContentEntityForm, call parent::form() to build fields from form display configuration, and usually override save() for messaging and redirects.

Config entity forms extend EntityForm and commonly define label and machine_name elements, with the machine_name exists callback loading from entity storage. Entity form handlers are registered under the entity type's form handlers for default, add, edit, and delete operations.

In entity form classes, the active entity is available as $this->entity. Custom actions are added by overriding actions().
