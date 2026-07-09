---
type: practice
title: Handle Drush command IO and failures explicitly
description: >-
  Use Symfony or Drush output helpers, confirmations, structured rows, batches,
  validation, and exit codes for CLI behavior.
tags:
  - drush
  - commands
  - cli
kk_schema_version: 3
kk_id: practice-handle-drush-command-io-and-failures-explicitly
kk_derived_from:
  - 'https://www.drush.org/14.x/commands/'
  - 'https://www.drush.org/14.x/output-formats-filters/'
  - 'https://github.com/drush-ops/drush/blob/14.x/includes/batch.inc'
kk_relates_to:
  - practice-define-drush-commands-with-attributes-and-autowiring
  - practice-use-autowired-attribute-drush-commands
  - map-developer-tools-drush-docs-map
kk_depends_on: []
kk_confidence: medium
---
Custom Drush commands should use Symfony Console IO and Drush formatter helpers for user interaction and output. In legacy `DrushCommands` commandfiles, `$this->io()`, `$this->output()`, and `$this->logger()` remain available; in current Symfony Console commands, use `SymfonyStyle`, injected logging, `FormatterTrait`, and structured data such as `RowsOfFields` when callers may request table, JSON, YAML, or CSV output.

For destructive operations, prompt for confirmation and abort with `UserAbortException` when the user declines. For large imports or processing jobs, wire commands through Drupal batch operations and `drush_backend_batch_process()`.

Validate command input in `configure()`, `interact()`, `execute()`, or Drush validation attributes/listeners when arguments refer to plugin IDs or other constrained project values, and return `Command::SUCCESS` or `Command::FAILURE` exit codes when checks can fail.

<!-- kk:related:start -->
# Related

- Related: [practice-define-drush-commands-with-attributes-and-autowiring](/drupal/tooling/practice-define-drush-commands-with-attributes-and-autowiring.md)
- Related: [practice-use-autowired-attribute-drush-commands](/drupal/tooling/practice-use-autowired-attribute-drush-commands.md)
- Related: [map-developer-tools-drush-docs-map](/drupal/tooling/map-developer-tools-drush-docs-map.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drush.org/14.x/commands/](https://www.drush.org/14.x/commands/)
[2] [https://www.drush.org/14.x/output-formats-filters/](https://www.drush.org/14.x/output-formats-filters/)
[3] [https://github.com/drush-ops/drush/blob/14.x/includes/batch.inc](https://github.com/drush-ops/drush/blob/14.x/includes/batch.inc)
<!-- kk:citations:end -->
