---
schema_version: 2
id: practice-handle-files-securely
title: Handle uploads and private files securely
kind: practice
tags:
  - security
  - files
  - uploads
  - drupal
derived_from: []
relates_to:
  - map-drupal-security-patterns-by-context
  - practice-avoid-common-security-vulnerabilities
  - practice-keep-secrets-out-of-code-and-config
depends_on: []
confidence: high
summary: >-
  Validate uploads server-side, store sensitive files privately, and gate
  private downloads.
---
Uploads should use an extension allowlist, server-side MIME validation, size limits, and sanitized filenames. Never allow executable upload types such as php, phtml, phar, exe, shell scripts, JavaScript, HTML, or SVG.

Use private:// for sensitive files and verify the stream wrapper scheme when private storage is required. Private downloads should route through Drupal, check access before returning a BinaryFileResponse, and hide unavailable or unauthorized files with a not-found response.

Track file usage with Drupal's file usage service, and use signed, time-limited URLs for private downloads when direct links are needed.
