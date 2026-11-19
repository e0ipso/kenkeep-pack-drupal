---
type: practice
title: Ship environment-neutral default config with a schema
description: >-
  A contrib module puts default configuration in config/install, with values
  that suit any site and a schema entry for every key.
tags:
  - contrib
  - config
  - schema
kk_schema_version: 3
kk_id: practice-ship-environment-neutral-default-config-with-schema
kk_derived_from:
  - >-
    https://www.drupal.org/docs/develop/creating-modules/include-default-configuration-in-your-drupal-module
  - >-
    https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-schemametadata
  - 'https://www.drupal.org/docs/drupal-apis/update-api/updating-configuration'
  - 'https://www.drupal.org/node/2453919'
kk_relates_to:
  - practice-define-schema-for-drupal-configuration
  - practice-use-update-hooks-for-schema-and-post-updates-for-data
  - practice-keep-secrets-out-of-code-and-config
kk_depends_on: []
kk_confidence: high
---
Put the configuration a module needs at install time in `config/install/*.yml`. Drupal imports these files when the module is installed. A contrib module does not control which site installs it, so default values must work on any site: no hostnames, absolute paths, API keys, user IDs or other site-specific values. Leave such settings empty and let the site configure them, or read them from `settings.php` overrides.

Put configuration entities that depend on other optional modules, such as a view or a field on another module's entity type, in `config/optional`. Drupal installs optional configuration only when it does not exist yet, is a configuration entity, and its dependencies can be met; it ignores the rest.

Give every configuration value a type in `config/schema/mymodule.schema.yml`. Tests that extend Drupal's test base classes enforce strict config schema by default, and a missing or wrong schema fails them. Do not set `$strictConfigSchema = FALSE` to make a test pass.

Editing a file in `config/install` or `config/optional` changes only new installs. Active configuration on existing sites belongs to those sites, and administrators may have changed it. When a release changes the configuration data model, such as a renamed, removed or restructured key, update the shipped files and add a `hook_update_N()` that converts existing active configuration to the new model. Keep the values each site set. A new default value alone does not need an update hook. Test the update path on a site that has the previous release installed. A site project instead exports its active configuration with config sync; a contrib module does not ship a config sync directory.

<!-- kk:related:start -->
# Related

- Related: [practice-define-schema-for-drupal-configuration](/drupal/data-cache/storage-config/practice-define-schema-for-drupal-configuration.md)
- Related: [practice-use-update-hooks-for-schema-and-post-updates-for-data](/drupal/tooling/practice-use-update-hooks-for-schema-and-post-updates-for-data.md)
- Related: [practice-keep-secrets-out-of-code-and-config](/drupal/security/data-secrets/practice-keep-secrets-out-of-code-and-config.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/creating-modules/include-default-configuration-in-your-drupal-module](https://www.drupal.org/docs/develop/creating-modules/include-default-configuration-in-your-drupal-module)
[2] [https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-schemametadata](https://www.drupal.org/docs/drupal-apis/configuration-api/configuration-schemametadata)
[3] [https://www.drupal.org/docs/drupal-apis/update-api/updating-configuration](https://www.drupal.org/docs/drupal-apis/update-api/updating-configuration)
[4] [https://www.drupal.org/node/2453919](https://www.drupal.org/node/2453919)
<!-- kk:citations:end -->
