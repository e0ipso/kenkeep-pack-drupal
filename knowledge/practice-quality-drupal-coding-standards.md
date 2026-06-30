---
schema_version: 2
id: practice-quality-drupal-coding-standards
title: Use Drupal PHPCS and PHPStan for custom module quality
kind: practice
tags:
  - quality
  - drupal
  - phpcs
  - phpstan
derived_from: []
relates_to:
  - practice-quality-choose-lightest-drupal-test-type
  - practice-quality-drupal-functional-browser-tests
  - practice-quality-drupal-unit-kernel-tests
depends_on: []
confidence: high
summary: >-
  Custom Drupal module code should be checked with Drupal and DrupalPractice
  PHPCS standards plus PHPStan, with level 5 or higher preferred for new code.
---
For custom Drupal modules, install `drupal/coder` and run PHPCS with `--standard=Drupal,DrupalPractice` against `web/modules/custom/mymodule`; use `phpcbf` with the same standards for automatic fixes. Add PHPStan with `phpstan/phpstan` and `mglaman/phpstan-drupal`, configure `phpstan.neon` for `level: 5`, `paths: web/modules/custom`, and `drupal_root: web`, and run analysis against the module. Keep docblocks, parameter and return type hints, no trailing whitespace, final newlines, and 80-character comment limits. A pre-commit hook can run Drupal PHPCS over custom modules. Treat `DrupalPractice` findings as important Drupal-specific guidance, and use `@phpstan-ignore-next-line` sparingly.
