---
type: practice
title: Develop contrib modules locally with ddev-drupal-contrib
description: >-
  The ddev-drupal-contrib add-on builds a Drupal site around a module checkout
  and runs the same quality tools as drupal.org CI.
tags:
  - contrib
  - ddev
  - testing
kk_schema_version: 3
kk_id: practice-develop-contrib-modules-with-ddev-drupal-contrib
kk_derived_from:
  - 'https://github.com/ddev/ddev-drupal-contrib'
kk_relates_to:
  - practice-use-the-drupalorg-gitlab-ci-templates
  - practice-scope-tests-to-the-module
  - practice-declare-dependencies-in-composer-and-info-yml
kk_depends_on: []
kk_confidence: high
---
A contrib module repository contains only the module, not a Drupal site. To run it locally, use the `ddev/ddev-drupal-contrib` add-on in the module checkout:

```bash
ddev config --project-type=drupal11 --docroot=web
ddev add-on get ddev/ddev-drupal-contrib
ddev start
ddev poser
ddev symlink-project
```

`ddev poser` writes a temporary `composer.contrib.json` that adds `drupal/core-recommended` as a development dependency and runs `composer update`; it does not change the module's own `composer.json`. `ddev symlink-project` links the module files into the site, by default under `web/modules/custom`.

Run checks with the add-on commands: `ddev phpunit`, `ddev phpcs`, `ddev phpcbf`, `ddev phpstan`, `ddev eslint`, `ddev stylelint` and `ddev nightwatch`. To test against another core version, run `ddev core-version ^10` (or set `DRUPAL_CORE` in `.ddev/.env.web`, then run `ddev restart` and `ddev poser`). Do not commit the generated site files, such as `web/` and `vendor/`, to the module repository.

<!-- kk:related:start -->
# Related

- Related: [practice-use-the-drupalorg-gitlab-ci-templates](/drupal/contrib/practice-use-the-drupalorg-gitlab-ci-templates.md)
- Related: [practice-scope-tests-to-the-module](/drupal/quality/practice-scope-tests-to-the-module.md)
- Related: [practice-declare-dependencies-in-composer-and-info-yml](/drupal/contrib/practice-declare-dependencies-in-composer-and-info-yml.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://github.com/ddev/ddev-drupal-contrib](https://github.com/ddev/ddev-drupal-contrib)
<!-- kk:citations:end -->
