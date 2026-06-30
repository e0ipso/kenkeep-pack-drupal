---
schema_version: 2
id: practice-use-stream-wrappers-for-files
title: Use stream wrappers for files
kind: practice
tags:
  - files
  - storage
  - drupal
derived_from: []
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

When writing files, choose explicit collision behavior such as `FileExists::Replace` or `FileExists::Rename`. Private files require an access callback through `hook_file_download()`.
