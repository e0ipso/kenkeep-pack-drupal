---
schema_version: 2
id: practice-run-the-drupal-security-checklist-before-deploying
title: Run the Drupal security checklist before deploying
kind: practice
tags:
  - security
  - deployment
  - checklist
  - drupal
derived_from:
  - "https://www.drupal.org/docs/administering-a-drupal-site/security-in-drupal"
  - "https://www.drupal.org/docs/develop/security"
  - "https://www.drupal.org/security"
relates_to:
  - map-drupal-security-patterns-by-context
  - practice-avoid-common-security-vulnerabilities
  - practice-handle-files-securely
depends_on: []
confidence: high
summary: >-
  Verify validation, database safety, escaping, access control, files, secrets,
  APIs, and infra.
---
Before deployment, verify the project's security checklist across input validation, database access, output escaping, access control, file handling, secrets, API behavior, and infrastructure configuration.

After security-related changes, run drush cache:rebuild when permissions, custom access checks, route requirements, form validation, or security headers changed.

Security controls should be backed by tests and static checks such as PHPUnit kernel tests, PHPStan analysis, and Drupal/DrupalPractice coding standards.
