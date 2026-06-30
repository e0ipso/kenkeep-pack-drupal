---
schema_version: 2
summary: Form API, entity forms, field widgets, validation forms, and config forms; read before changing forms
---
# Forms Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Build field widgets as field form elements**](practice-field-widgets-build-form-elements.md) to learn about: Field widgets live under Plugin\Field\FieldWidget and add child form elements in formElement(). #drupal #fields #widgets
- Open [**Drupal Field Group custom formatters**](practice-drupal-field-group-formatters-use-annotations.md) to learn about: Field Group extensions define formatter plugins with @FieldGroupFormatter annotations and store groups on entity form/view display configuration. #drupal #seo #field-group #plugins
- Open [**Extend AddFormBase for custom Media Library add forms**](practice-extend-addformbase-for-custom-media-add-forms.md) to learn about: Custom Media Library add forms should extend AddFormBase and build their input UI through buildInputElement(). #drupal #media #forms
- Open [**Handle Entity Browser integration gotchas**](practice-entity-browser-integration-gotchas.md) to learn about: Entity Browser integrations need the right Views field, modal library, selection mode, access checks, and annotations. #drupal #media #entity-browser #forms
- Open [**Target form alters precisely**](practice-target-form-alters-precisely.md) to learn about: Prefer specific or base form alter hooks, use #states only for client-side behavior, and validate on the server. #forms #hooks #validation
- Open [**Use Drupal AJAX form patterns**](practice-use-drupal-ajax-form-patterns.md) to learn about: Build Drupal form AJAX with #ajax callbacks, wrapper IDs, AjaxResponse commands, and rebuilds for dynamic items. #forms #ajax #drupal

## Components (what exists)
- Open [**Drupal entity form bases**](map-drupal-entity-form-bases.md) to learn about: Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object. #forms #entities #drupal
- Open [**Drupal form building patterns**](map-drupal-form-building-patterns.md) to learn about: Drupal forms in these docs cover config, basic, confirm, multi-step, validation, elements, and common properties. #forms #drupal #reference
- Open [**Drupal form element types reference**](map-drupal-form-element-types-reference.md) to learn about: Form API element types map #type values to render element classes, key properties, defaults, and gotchas. #forms #elements #reference
