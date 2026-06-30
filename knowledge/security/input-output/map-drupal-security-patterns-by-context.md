---
schema_version: 2
id: map-drupal-security-patterns-by-context
title: Drupal security patterns by context
kind: map
tags:
  - security
  - patterns
  - drupal
derived_from: []
relates_to:
  - practice-avoid-common-security-vulnerabilities
  - practice-handle-files-securely
  - practice-keep-secrets-out-of-code-and-config
depends_on: []
confidence: high
summary: >-
  Security guidance is organized around common sequences and the
  context-specific docs to consult.
---
The security patterns guide defines common Drupal security sequences: validate then process safely then log without sensitive data then output safely; permission check then entity access check then operation; and authenticate then validate then rate limit then process for APIs.

It also maps work contexts to the focused security docs to load. Form submissions use input validation first, then SQL injection, file security, and access control as needed. API endpoints start with API security, then input validation, access control, and secrets when API keys are involved.

Content display should consult XSS prevention, access control, and SQL injection where queries are involved. File operations should consult file security, access control, and common vulnerabilities for path traversal.
