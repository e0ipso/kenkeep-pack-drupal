---
type: practice
title: Declare contrib dependencies in composer.json and .info.yml
description: >-
  A contrib module lists module dependencies as project:module in .info.yml and
  as drupal/<project> in composer.json, and adds no dependency it does not need.
tags:
  - contrib
  - composer
  - dependencies
  - info-yml
kk_schema_version: 3
kk_id: practice-declare-dependencies-in-composer-and-info-yml
kk_derived_from:
  - >-
    https://www.drupal.org/docs/develop/creating-modules/let-drupal-know-about-your-module-with-an-infoyml-file
  - 'https://www.drupal.org/docs/develop/using-composer/add-a-composerjson-file'
kk_relates_to:
  - practice-declare-a-tested-core-version-requirement-range
  - practice-patch-other-projects-with-composer-patches
  - practice-use-jsonrpc-for-business-logic
kk_depends_on: []
kk_confidence: high
---
Declare each module dependency in two places. In `mymodule.info.yml`, list it under `dependencies` as `{project}:{module}`, where the project is the name in the drupal.org URL, for example `drupal:views` or `jsonrpc:jsonrpc`. In the module's `composer.json`, require the project as `drupal/{project}`. Drupal uses `.info.yml` to make sure the required modules are enabled; Composer uses `composer.json` to download them. Composer does not replace the `.info.yml` entry. A contrib module that has dependencies and automated tests on drupal.org must have a `composer.json`, or its merge request tests fail. PHP libraries from Packagist also go in `composer.json`. Use the package type `drupal-module`.

Every dependency becomes a requirement for every site that installs the module. Add one only when the module's own feature cannot work without it. Do not add a dependency on a contrib module only because a knowledge node recommends that module: nodes that say "use X for Y" describe site choices. If the integration is optional, put it in a submodule or check `moduleHandler->moduleExists()` at run time, and keep the base module free of the dependency.

<!-- kk:related:start -->
# Related

- Related: [practice-declare-a-tested-core-version-requirement-range](/drupal/contrib/practice-declare-a-tested-core-version-requirement-range.md)
- Related: [practice-patch-other-projects-with-composer-patches](/drupal/contrib/practice-patch-other-projects-with-composer-patches.md)
- Related: [practice-use-jsonrpc-for-business-logic](/drupal/apis/practice-use-jsonrpc-for-business-logic.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/creating-modules/let-drupal-know-about-your-module-with-an-infoyml-file](https://www.drupal.org/docs/develop/creating-modules/let-drupal-know-about-your-module-with-an-infoyml-file)
[2] [https://www.drupal.org/docs/develop/using-composer/add-a-composerjson-file](https://www.drupal.org/docs/develop/using-composer/add-a-composerjson-file)
<!-- kk:citations:end -->
