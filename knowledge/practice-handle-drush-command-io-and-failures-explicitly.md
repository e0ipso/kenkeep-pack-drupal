---
schema_version: 2
id: practice-handle-drush-command-io-and-failures-explicitly
title: Handle Drush command IO and failures explicitly
kind: practice
tags:
  - drush
  - commands
  - cli
derived_from: []
relates_to:
  - practice-define-drush-commands-with-attributes-and-autowiring
  - practice-use-autowired-attribute-drush-commands
  - map-developer-tools-drush-docs-map
depends_on: []
confidence: medium
summary: >-
  Use Drush output helpers, confirmations, structured rows, batches, validation
  hooks, and exit codes for CLI behavior.
---
Custom Drush commands should use Drush and Symfony console helpers for user interaction and output. Use `$this->io()`, `$this->output()`, and `$this->logger()` instead of ad hoc output, and return structured data such as `RowsOfFields` when callers may request table, JSON, YAML, or CSV output.

For destructive operations, prompt for confirmation and abort with `UserAbortException` when the user declines. For large imports or processing jobs, wire commands through Drupal batch operations and `drush_backend_batch_process()`.

Validate command input through validation hooks when arguments refer to plugin IDs or other constrained project values, and return `CommandResult` with success or failure exit codes when checks can fail.
