---
type: practice
title: Use Drupal PHPCS and PHPStan for module quality
description: >-
  Custom and contrib Drupal module code should be checked with Drupal and
  DrupalPractice PHPCS standards plus PHPStan, preferably level 5 or higher for
  new code.
tags:
  - quality
  - drupal
  - phpcs
  - phpstan
kk_schema_version: 3
kk_id: practice-quality-drupal-coding-standards
kk_derived_from:
  - 'https://www.drupal.org/docs/develop/standards'
  - 'https://www.drupal.org/project/coder'
  - 'https://github.com/mglaman/phpstan-drupal'
  - 'https://github.com/ddev/ddev-drupal-contrib'
  - 'https://project.pages.drupalcode.org/gitlab_templates/jobs/'
kk_relates_to:
  - practice-quality-prefer-drupal-integration-tests
  - practice-quality-drupal-functional-browser-tests
  - practice-quality-drupal-unit-kernel-tests
kk_depends_on: []
kk_confidence: high
---
For Drupal modules, install `drupal/coder` and run PHPCS with `--standard=Drupal,DrupalPractice` against the module path, such as `web/modules/custom/mymodule` on a site; use `phpcbf` with the same standards for automatic fixes. Add PHPStan with `phpstan/phpstan` and `mglaman/phpstan-drupal`, configure `phpstan.neon` for a project-agreed level, `paths` set to the module directory, and `drupal_root: web`, and run analysis against the module. In a contrib module checkout, `ddev phpcs`, `ddev phpcbf` and `ddev phpstan` from ddev-drupal-contrib run the same tools, and the drupal.org GitLab CI templates run phpcs, and phpstan for the current core version, unless the project sets `SKIP_PHPCS` or `SKIP_PHPSTAN`. Keep docblocks, parameter and return type hints, no trailing whitespace, final newlines, and Drupal coding-standard line limits. A pre-commit hook can run Drupal PHPCS over the module. Treat `DrupalPractice` findings as important Drupal-specific guidance, and use `@phpstan-ignore-next-line` sparingly.

<!-- kk:related:start -->
# Related

- Related: [practice-quality-prefer-drupal-integration-tests](/drupal/quality/practice-quality-prefer-drupal-integration-tests.md)
- Related: [practice-quality-drupal-functional-browser-tests](/drupal/quality/practice-quality-drupal-functional-browser-tests.md)
- Related: [practice-quality-drupal-unit-kernel-tests](/drupal/quality/practice-quality-drupal-unit-kernel-tests.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/standards](https://www.drupal.org/docs/develop/standards)
[2] [https://www.drupal.org/project/coder](https://www.drupal.org/project/coder)
[3] [https://github.com/mglaman/phpstan-drupal](https://github.com/mglaman/phpstan-drupal)
[4] [https://github.com/ddev/ddev-drupal-contrib](https://github.com/ddev/ddev-drupal-contrib)
[5] [https://project.pages.drupalcode.org/gitlab_templates/jobs/](https://project.pages.drupalcode.org/gitlab_templates/jobs/)
<!-- kk:citations:end -->
