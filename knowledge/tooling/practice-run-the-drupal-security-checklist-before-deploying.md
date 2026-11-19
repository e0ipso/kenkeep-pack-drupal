---
type: practice
title: Run the Drupal security checklist before deploying
description: >-
  Verify validation, database safety, escaping, access control, files, secrets,
  APIs, and infra.
tags:
  - security
  - deployment
  - checklist
  - site-architecture
kk_schema_version: 3
kk_id: practice-run-the-drupal-security-checklist-before-deploying
kk_derived_from:
  - 'https://www.drupal.org/docs/administering-a-drupal-site/security-in-drupal'
  - 'https://www.drupal.org/docs/develop/security'
  - 'https://www.drupal.org/security'
kk_relates_to:
  - map-drupal-security-patterns-by-context
  - practice-avoid-common-security-vulnerabilities
  - practice-handle-files-securely
kk_depends_on: []
kk_confidence: high
---
Before deployment, verify the project's security checklist across input validation, database access, output escaping, access control, file handling, secrets, API behavior, and infrastructure configuration.

After security-related changes, run drush cache:rebuild when permissions, custom access checks, route requirements, form validation, or security headers changed.

Security controls should be backed by tests and static checks such as PHPUnit kernel tests, PHPStan analysis, and Drupal/DrupalPractice coding standards.

<!-- kk:related:start -->
# Related

- Related: [map-drupal-security-patterns-by-context](/drupal/security/input-output/map-drupal-security-patterns-by-context.md)
- Related: [practice-avoid-common-security-vulnerabilities](/drupal/security/input-output/practice-avoid-common-security-vulnerabilities.md)
- Related: [practice-handle-files-securely](/drupal/security/input-output/practice-handle-files-securely.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/administering-a-drupal-site/security-in-drupal](https://www.drupal.org/docs/administering-a-drupal-site/security-in-drupal)
[2] [https://www.drupal.org/docs/develop/security](https://www.drupal.org/docs/develop/security)
[3] [https://www.drupal.org/security](https://www.drupal.org/security)
<!-- kk:citations:end -->
