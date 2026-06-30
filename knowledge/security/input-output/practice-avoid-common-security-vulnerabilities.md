---
schema_version: 2
id: practice-avoid-common-security-vulnerabilities
title: Avoid common security vulnerability patterns
kind: practice
tags:
  - security
  - vulnerabilities
  - drupal
derived_from:
  - https://www.drupal.org/docs/drupal-apis/security-api
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Access%21CsrfTokenGenerator.php/class/CsrfTokenGenerator/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Url.php/class/Url/11.x
relates_to:
  - map-drupal-security-patterns-by-context
  - practice-handle-files-securely
  - practice-keep-secrets-out-of-code-and-config
depends_on: []
confidence: high
summary: >-
  Prefer safe APIs, allowlists, generic errors, and cryptographic randomness for
  common risk areas.
---
Do not unserialize user input; prefer JSON, or disable allowed classes when unserializing trusted data. For file paths, reduce input with basename(), validate against an allowlist, and resolve paths through Drupal's filesystem services.

Avoid shelling out when a PHP library can do the job. If shell commands are required, escape each argument. For outbound HTTP requests, allowlist domains and require HTTPS to avoid SSRF.

Use explicit field assignment instead of mass assignment, `random_bytes()` for secret tokens, Drupal CSRF token services or Form API tokens for request-forgery protection, generic user-facing errors with internal logging, session regeneration after custom authentication, and validated internal redirect destinations.
