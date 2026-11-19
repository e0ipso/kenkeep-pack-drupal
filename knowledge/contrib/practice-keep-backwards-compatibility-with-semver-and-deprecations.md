---
type: practice
title: Keep backwards compatibility with semver and deprecations
description: >-
  Contrib releases follow major.minor.patch; public API changes go through a
  deprecation with @trigger_error and a change record before removal.
tags:
  - contrib
  - releases
  - deprecation
  - compatibility
kk_schema_version: 3
kk_id: practice-keep-backwards-compatibility-with-semver-and-deprecations
kk_derived_from:
  - 'https://www.drupal.org/node/1015226'
  - >-
    https://www.drupal.org/about/core/policies/core-change-policies/drupal-deprecation-policy
  - >-
    https://www.drupal.org/about/core/policies/core-change-policies/how-to-deprecate
kk_relates_to:
  - practice-declare-a-tested-core-version-requirement-range
  - practice-use-update-hooks-for-schema-and-post-updates-for-data
  - practice-ship-environment-neutral-default-config-with-schema
kk_depends_on: []
kk_confidence: medium
---
Contrib release tags use semantic versioning, `{major}.{minor}.{patch}`, for releases that support Drupal 9 or newer. Develop on a `{major}.x` branch, such as `2.x`, and not on `master`. The project version is independent of the core version. Other modules and sites depend on the public API of each release, so a minor or patch release must not break them. Keep breaking changes for the next major.

To change or remove a public class, method, service or hook, deprecate it first and keep it working. Add a docblock tag in this form: `@deprecated in mymodule:2.3.0 and is removed from mymodule:3.0.0. Use \Drupal\mymodule\NewThing instead.` with `@see` and the change record URL. At the start of the backwards-compatibility code path, call `@trigger_error('... is deprecated in mymodule:2.3.0 and is removed from mymodule:3.0.0. Use ... instead. See https://www.drupal.org/node/...', E_USER_DEPRECATED);`. The `@` operator lets sites decide how to handle the notice. Remove the deprecated code only in the next major.

Write a change record on drupal.org for each deprecation and each behavior change that other code must react to, and link it from the deprecation message. Changes to stored data or active configuration also need an update hook, so existing sites get them.

<!-- kk:related:start -->
# Related

- Related: [practice-declare-a-tested-core-version-requirement-range](/drupal/contrib/practice-declare-a-tested-core-version-requirement-range.md)
- Related: [practice-use-update-hooks-for-schema-and-post-updates-for-data](/drupal/tooling/practice-use-update-hooks-for-schema-and-post-updates-for-data.md)
- Related: [practice-ship-environment-neutral-default-config-with-schema](/drupal/contrib/practice-ship-environment-neutral-default-config-with-schema.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/node/1015226](https://www.drupal.org/node/1015226)
[2] [https://www.drupal.org/about/core/policies/core-change-policies/drupal-deprecation-policy](https://www.drupal.org/about/core/policies/core-change-policies/drupal-deprecation-policy)
[3] [https://www.drupal.org/about/core/policies/core-change-policies/how-to-deprecate](https://www.drupal.org/about/core/policies/core-change-policies/how-to-deprecate)
<!-- kk:citations:end -->
