---
type: practice
title: Keep secrets out of code and exported config
description: >-
  Read secrets from environment variables, settings overrides, or a secret store
  the site already runs, never from committed code or config.
tags:
  - security
  - secrets
  - config
  - drupal
kk_schema_version: 3
kk_id: practice-keep-secrets-out-of-code-and-config
kk_derived_from:
  - >-
    https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-api-overview
  - 'https://www.drupal.org/docs/develop/drupal-apis/state-api'
  - 'https://www.drupal.org/project/key'
  - 'https://www.drupal.org/project/vault'
kk_relates_to:
  - map-drupal-security-patterns-by-context
  - practice-avoid-common-security-vulnerabilities
  - practice-define-config-entity-export-and-prefix-explicitly
kk_depends_on: []
kk_confidence: high
---
Secrets belong in environment variables or uncommitted `settings.php` overrides, or in the Key module or a Vault-backed key provider when the site already uses one. They do not belong in PHP code or exported configuration.

Database credentials and API keys should be environment-specific and read from the environment or a key repository at runtime. `settings.php` or `settings.local.php` can override sensitive config outside version control.

Support rotation through versioned or date-based key names, and audit secret access without logging the secret values themselves. Sites that already run Vault should use it for production secrets. A contrib module should accept secrets through settings overrides and make Key or Vault support optional. Do not add a dependency on `key` or `vault` only because this node recommends it. In a contrib module, add it only when the module's own feature cannot work without it.

<!-- kk:related:start -->
# Related

- Related: [map-drupal-security-patterns-by-context](/drupal/security/input-output/map-drupal-security-patterns-by-context.md)
- Related: [practice-avoid-common-security-vulnerabilities](/drupal/security/input-output/practice-avoid-common-security-vulnerabilities.md)
- Related: [practice-define-config-entity-export-and-prefix-explicitly](/drupal/data-cache/storage-config/practice-define-config-entity-export-and-prefix-explicitly.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-api-overview](https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-api-overview)
[2] [https://www.drupal.org/docs/develop/drupal-apis/state-api](https://www.drupal.org/docs/develop/drupal-apis/state-api)
[3] [https://www.drupal.org/project/key](https://www.drupal.org/project/key)
[4] [https://www.drupal.org/project/vault](https://www.drupal.org/project/vault)
<!-- kk:citations:end -->
