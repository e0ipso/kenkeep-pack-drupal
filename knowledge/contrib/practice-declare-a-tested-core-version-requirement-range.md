---
type: practice
title: Declare a core_version_requirement range you test
description: >-
  Contrib modules declare the Drupal core majors they support in
  core_version_requirement and test the previous and next majors in CI.
tags:
  - contrib
  - info-yml
  - compatibility
kk_schema_version: 3
kk_id: practice-declare-a-tested-core-version-requirement-range
kk_derived_from:
  - >-
    https://www.drupal.org/docs/develop/creating-modules/let-drupal-know-about-your-module-with-an-infoyml-file
  - 'https://project.pages.drupalcode.org/gitlab_templates/info/variants/'
  - 'https://www.drupal.org/project/upgrade_status'
kk_relates_to:
  - practice-use-the-drupalorg-gitlab-ci-templates
  - practice-keep-backwards-compatibility-with-semver-and-deprecations
  - practice-declare-dependencies-in-composer-and-info-yml
kk_depends_on: []
kk_confidence: high
---
A contrib module states which Drupal core versions it supports with the required `core_version_requirement` key in `mymodule.info.yml`. The key takes a Composer-style constraint, so one release can support more than one major, for example `core_version_requirement: ^10 || ^11`. Sites that use one codebase do not need a range; contrib modules usually do.

Declare only the majors that CI tests. The drupal.org GitLab CI templates test the current core version by default. Set `OPT_IN_TEST_PREVIOUS_MAJOR: 1` to test the lowest major in the range, and `OPT_IN_TEST_NEXT_MAJOR: 1` to find problems with the next major before it is released. `OPT_IN_TEST_PREVIOUS_MINOR` and `OPT_IN_TEST_NEXT_MINOR` do the same for minor versions.

Before you add the next major to the range, remove the deprecated API uses that it drops. Upgrade Status reports them, and its `upgrade-status:analyze` command returns exit code 3 when it finds problems for the next major, so a CI job can fail on them.

<!-- kk:related:start -->
# Related

- Related: [practice-use-the-drupalorg-gitlab-ci-templates](/drupal/contrib/practice-use-the-drupalorg-gitlab-ci-templates.md)
- Related: [practice-keep-backwards-compatibility-with-semver-and-deprecations](/drupal/contrib/practice-keep-backwards-compatibility-with-semver-and-deprecations.md)
- Related: [practice-declare-dependencies-in-composer-and-info-yml](/drupal/contrib/practice-declare-dependencies-in-composer-and-info-yml.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/creating-modules/let-drupal-know-about-your-module-with-an-infoyml-file](https://www.drupal.org/docs/develop/creating-modules/let-drupal-know-about-your-module-with-an-infoyml-file)
[2] [https://project.pages.drupalcode.org/gitlab_templates/info/variants/](https://project.pages.drupalcode.org/gitlab_templates/info/variants/)
[3] [https://www.drupal.org/project/upgrade_status](https://www.drupal.org/project/upgrade_status)
<!-- kk:citations:end -->
