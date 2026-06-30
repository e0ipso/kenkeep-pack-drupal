---
schema_version: 2
id: practice-keep-secrets-out-of-code-and-config
title: Keep secrets out of code and exported config
kind: practice
tags:
  - security
  - secrets
  - config
  - drupal
derived_from:
  - https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-api-overview
  - https://www.drupal.org/docs/develop/drupal-apis/state-api
  - https://www.drupal.org/project/key
  - https://www.drupal.org/project/vault
relates_to:
  - map-drupal-security-patterns-by-context
  - practice-avoid-common-security-vulnerabilities
  - practice-define-config-entity-export-and-prefix-explicitly
depends_on: []
confidence: high
summary: >-
  Use environment variables, settings overrides, Key module, or Vault instead of
  committed secrets.
---
Secrets belong in environment variables, uncommitted `settings.php` overrides, Drupal Key module, or a Vault-backed key provider, not in PHP code or exported configuration.

Database credentials and API keys should be environment-specific and read from the environment or a key repository at runtime. `settings.php` or `settings.local.php` can override sensitive config outside version control.

Support rotation through versioned or date-based key names, and audit secret access without logging the secret values themselves. Production deployments should use Vault where available.
