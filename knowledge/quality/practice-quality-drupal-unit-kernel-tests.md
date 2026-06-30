---
schema_version: 2
id: practice-quality-drupal-unit-kernel-tests
title: Use unit tests for pure logic and kernel tests for Drupal integration
kind: practice
tags:
  - quality
  - testing
  - drupal
  - kernel
derived_from: []
relates_to:
  - practice-quality-choose-lightest-drupal-test-type
  - practice-quality-drupal-functional-browser-tests
  - practice-quality-drupal-coding-standards
depends_on: []
confidence: high
summary: >-
  UnitTestCase is the default for isolated logic, while KernelTestBase is
  appropriate when entities, config, services, schemas, or a database are part
  of the behavior.
---
Use `UnitTestCase` for fast tests of pure logic that do not need Drupal bootstrap, database access, or real services. Mock dependencies such as config factories when isolated logic needs collaborators. Use `KernelTestBase` when the behavior interacts with Drupal services, entities, configuration, or the database; declare the required modules, call parent setup, install needed entity schemas with `installEntitySchema()`, and install module configuration with `installConfig()`. Data providers are appropriate for compactly covering state transitions or other input matrices. During development, `--stop-on-failure` is useful for quick feedback.
