---
type: practice
title: Use the drupal.org GitLab CI templates
description: >-
  Contrib projects on drupal.org get phpcs, phpstan, cspell, phpunit and other
  jobs from one .gitlab-ci.yml copied from the gitlab_templates project.
tags:
  - contrib
  - ci
  - quality
kk_schema_version: 3
kk_id: practice-use-the-drupalorg-gitlab-ci-templates
kk_derived_from:
  - 'https://project.pages.drupalcode.org/gitlab_templates/'
  - 'https://project.pages.drupalcode.org/gitlab_templates/info/setup/'
  - 'https://project.pages.drupalcode.org/gitlab_templates/jobs/'
  - >-
    https://git.drupalcode.org/project/gitlab_templates/-/blob/main/gitlab-ci/template.gitlab-ci.yml
kk_relates_to:
  - practice-declare-a-tested-core-version-requirement-range
  - practice-quality-drupal-coding-standards
  - practice-develop-contrib-modules-with-ddev-drupal-contrib
kk_depends_on: []
kk_confidence: high
---
For a contrib module hosted on drupal.org, use the Drupal Association GitLab CI templates instead of writing pipeline jobs by hand. Add one `.gitlab-ci.yml` file to the project root: select `template.gitlab-ci.yml` from the template list when you add the file in the GitLab UI, or copy it from `gitlab-ci/template.gitlab-ci.yml` in the `gitlab_templates` project. That file includes `include.drupalci.main.yml`, `include.drupalci.variables.yml` and `include.drupalci.workflows.yml`, which define the jobs.

The validation jobs are composer-lint, cspell, eslint, phpcs, phpstan, secret detection and stylelint. The testing jobs include phpunit, nightwatch, test-only changes and upgrade status. Jobs for the current core version run by default. Turn a job off with its `SKIP_*` variable, such as `SKIP_PHPCS: 1` or `SKIP_CSPELL: 1`, only when the module has a documented reason. Turn on other core versions with the `OPT_IN_TEST_*` variables.

Fix the code so the jobs pass. Do not change the included template files, and do not skip a failing job to make the pipeline green.

<!-- kk:related:start -->
# Related

- Related: [practice-declare-a-tested-core-version-requirement-range](/drupal/contrib/practice-declare-a-tested-core-version-requirement-range.md)
- Related: [practice-quality-drupal-coding-standards](/drupal/quality/practice-quality-drupal-coding-standards.md)
- Related: [practice-develop-contrib-modules-with-ddev-drupal-contrib](/drupal/contrib/practice-develop-contrib-modules-with-ddev-drupal-contrib.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://project.pages.drupalcode.org/gitlab_templates/](https://project.pages.drupalcode.org/gitlab_templates/)
[2] [https://project.pages.drupalcode.org/gitlab_templates/info/setup/](https://project.pages.drupalcode.org/gitlab_templates/info/setup/)
[3] [https://project.pages.drupalcode.org/gitlab_templates/jobs/](https://project.pages.drupalcode.org/gitlab_templates/jobs/)
[4] [https://git.drupalcode.org/project/gitlab_templates/-/blob/main/gitlab-ci/template.gitlab-ci.yml](https://git.drupalcode.org/project/gitlab_templates/-/blob/main/gitlab-ci/template.gitlab-ci.yml)
<!-- kk:citations:end -->
