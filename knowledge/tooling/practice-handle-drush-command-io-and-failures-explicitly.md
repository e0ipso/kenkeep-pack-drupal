---
schema_version: 2
id: practice-handle-drush-command-io-and-failures-explicitly
title: Handle Drush command IO and failures explicitly
kind: practice
tags:
  - drush
  - commands
  - cli
derived_from:
  - "https://www.drush.org/14.x/commands/"
  - "https://www.drush.org/14.x/output-formats-filters/"
  - "https://github.com/drush-ops/drush/blob/14.x/includes/batch.inc"
relates_to:
  - practice-define-drush-commands-with-attributes-and-autowiring
  - practice-use-autowired-attribute-drush-commands
  - map-developer-tools-drush-docs-map
depends_on: []
confidence: medium
summary: >-
  Use Symfony or Drush output helpers, confirmations, structured rows, batches,
  validation, and exit codes for CLI behavior.
---
Custom Drush commands should use Symfony Console IO and Drush formatter helpers for user interaction and output. In legacy `DrushCommands` commandfiles, `$this->io()`, `$this->output()`, and `$this->logger()` remain available; in current Symfony Console commands, use `SymfonyStyle`, injected logging, `FormatterTrait`, and structured data such as `RowsOfFields` when callers may request table, JSON, YAML, or CSV output.

For destructive operations, prompt for confirmation and abort with `UserAbortException` when the user declines. For large imports or processing jobs, wire commands through Drupal batch operations and `drush_backend_batch_process()`.

Validate command input in `configure()`, `interact()`, `execute()`, or Drush validation attributes/listeners when arguments refer to plugin IDs or other constrained project values, and return `Command::SUCCESS` or `Command::FAILURE` exit codes when checks can fail.
