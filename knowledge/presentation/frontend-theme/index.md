---
schema_version: 2
summary: AJAX, JavaScript behaviors, frontend libraries, render elements, theme hooks, Twig, SDC, and flash messages; read before changing frontend output
---
# Frontend Theme Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Attach frontend assets through libraries**](practice-attach-frontend-assets-through-libraries.md) to learn about: Define CSS and JS in libraries.yml and attach libraries where needed instead of loading assets globally. #frontend #assets #libraries #drupal
- Open [**Keep translation strings extractable and placeholder-safe**](practice-translation-strings-must-be-extractable.md) to learn about: Use Drupal translation APIs with literal source strings, placeholders, and plural forms; do not concatenate translated text or pass variables as the source string. #i18n #strings #javascript
- Open [**Register custom Media Library openers as tagged services**](practice-register-media-library-custom-openers-as-services.md) to learn about: Custom Media Library openers implement the opener interface and register with the media_library.opener tag. #drupal #media #services
- Open [**Use Drupal.ajax for dynamic interactions**](practice-use-drupal-ajax-for-dynamic-interactions.md) to learn about: Use Drupal.ajax and AjaxResponse commands instead of raw fetch or custom JSON endpoints. #frontend #ajax #javascript #drupal
- Open [**Use Messenger for user-facing flash notices**](practice-use-messenger-for-user-facing-flash-notices.md) to learn about: Use the messenger service for status, warning, and error notices; use logging for backend diagnostics. #drupal #messenger #ux
- Open [**Write idempotent Drupal JavaScript behaviors**](practice-write-idempotent-drupal-javascript-behaviors.md) to learn about: Use drupalSettings, behaviors, once(), and narrow settings data for Drupal JavaScript integration. #frontend #javascript #behaviors #security

## Components (what exists)
- Open [**AJAX command reference surface**](map-ajax-command-reference-surface.md) to learn about: Drupal AJAX responses are ordered command lists executed by Drupal.ajax on the client. #frontend #ajax #reference #drupal
- Open [**Drupal theme system entry points**](map-drupal-theme-system-entry-points.md) to learn about: Theme hooks, templates, preprocess functions, suggestions, and Twig helpers shape Drupal output. #drupal #theme #twig
- Open [**Non-form render element types**](map-non-form-render-element-types.md) to learn about: Drupal provides non-form render elements for common output structures in controllers and preprocess code. #drupal #render #elements
- Open [**Single Directory Components structure**](map-single-directory-components-structure.md) to learn about: Drupal SDC components group metadata, Twig, CSS, and JavaScript in one component directory. #drupal #sdc #components

