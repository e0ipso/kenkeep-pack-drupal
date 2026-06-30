---
schema_version: 2
id: practice-use-stream-wrappers-for-files
title: Use stream wrappers for files
kind: practice
tags:
  - files
  - storage
  - drupal
derived_from:
  - https://www.drupal.org/docs/drupal-apis/file-api
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21File%21FileSystemInterface.php/interface/FileSystemInterface/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21File%21FileExists.php/enum/FileExists/11.x
  - https://api.drupal.org/api/drupal/core%21modules%21system%21system.api.php/function/hook_file_download/11.x
relates_to:
  - practice-handle-files-securely
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
depends_on: []
confidence: medium
summary: >-
  Use Drupal file stream wrappers and explicit collision handling instead of
  absolute filesystem paths.
---
Use stream wrapper URIs such as `public://`, `private://`, and `temporary://` for file operations instead of absolute paths. Use `FileSystemInterface::CREATE_DIRECTORY` with `prepareDirectory()` when a directory should be created.

When writing files in current Drupal 10/11 code, choose explicit collision behavior such as `FileExists::Replace` or `FileExists::Rename`; legacy constants may still appear in older Drupal 10 code. Custom private-file downloads require an access decision through `hook_file_download()` or an equivalent checked controller.
