---
type: practice
title: Patch other projects with composer-patches, never in place
description: >-
  Fix a bug in core or another contrib project with an upstream issue and a
  patch applied by cweagans/composer-patches, not by editing vendor code.
tags:
  - contrib
  - composer
  - patches
kk_schema_version: 3
kk_id: practice-patch-other-projects-with-composer-patches
kk_derived_from:
  - 'https://github.com/cweagans/composer-patches'
  - 'https://docs.cweagans.net/composer-patches/usage/defining-patches/'
  - 'https://www.drupal.org/docs/develop/using-composer/manage-dependencies'
kk_relates_to:
  - practice-declare-dependencies-in-composer-and-info-yml
  - practice-use-the-drupalorg-gitlab-ci-templates
  - practice-keep-backwards-compatibility-with-semver-and-deprecations
kk_depends_on: []
kk_confidence: medium
---
Do not edit files of Drupal core or another project in `web/core`, `web/modules/contrib` or `vendor`. Composer replaces those files on the next install or update, and the change is lost. Open or find an issue in the upstream project, put the fix in a merge request or patch there, and apply the patch with `cweagans/composer-patches` in the root `composer.json` of the site or local development environment:

```json
"extra": {
    "patches": {
        "drupal/core": {
            "Short description and upstream issue URL": "patches/core-1234567.patch"
        }
    }
}
```

The path is relative to that root project. Keep the patch file in the repository instead of a remote URL, because a remote patch can change. drupal.org documents that core patches apply at patch level `-p2`.

In a contrib module, do not rely on a patch in the module's own `composer.json`: whether a site applies patches from its dependencies depends on that site's Composer setup. Write the module so it works with released versions of its dependencies. If it needs an upstream fix, depend on a release that contains it, or add a workaround in the module's own code and link the upstream issue.

<!-- kk:related:start -->
# Related

- Related: [practice-declare-dependencies-in-composer-and-info-yml](/drupal/contrib/practice-declare-dependencies-in-composer-and-info-yml.md)
- Related: [practice-use-the-drupalorg-gitlab-ci-templates](/drupal/contrib/practice-use-the-drupalorg-gitlab-ci-templates.md)
- Related: [practice-keep-backwards-compatibility-with-semver-and-deprecations](/drupal/contrib/practice-keep-backwards-compatibility-with-semver-and-deprecations.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://github.com/cweagans/composer-patches](https://github.com/cweagans/composer-patches)
[2] [https://docs.cweagans.net/composer-patches/usage/defining-patches/](https://docs.cweagans.net/composer-patches/usage/defining-patches/)
[3] [https://www.drupal.org/docs/develop/using-composer/manage-dependencies](https://www.drupal.org/docs/develop/using-composer/manage-dependencies)
<!-- kk:citations:end -->
