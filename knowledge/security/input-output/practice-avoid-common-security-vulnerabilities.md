---
schema_version: 2
id: practice-avoid-common-security-vulnerabilities
title: Avoid common security vulnerability patterns
kind: practice
tags:
  - security
  - vulnerabilities
  - drupal
derived_from: []
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

Use explicit field assignment instead of mass assignment, random_bytes() or Drupal CSRF tokens for secure tokens, generic user-facing errors with internal logging, session regeneration after authentication, and validated internal redirect destinations.
