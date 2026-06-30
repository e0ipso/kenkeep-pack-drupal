---
schema_version: 2
id: map-drupal-mail-flow
title: Drupal mail flow
kind: map
tags:
  - drupal
  - mail
  - plugins
derived_from:
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Mail%21MailManagerInterface.php/function/MailManagerInterface%3A%3Amail/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Mail%21MailManager.php/function/MailManager%3A%3AgetInstance/11.x
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Mail%21Plugin%21Mail%21TestMailCollector.php/class/TestMailCollector/11.x
relates_to:
  - practice-alter-and-debug-plugin-definitions-through-managers
  - practice-build-configurable-and-context-aware-plugins-with-cache-contexts
  - practice-define-action-plugins-with-access-and-type-scope
depends_on: []
confidence: medium
summary: >-
  MailManager builds messages with hook_mail(), resolves a mail plugin, formats
  the body, and sends or captures output.
---
Drupal mail is sent through the `plugin.manager.mail` service. `MailManager::mail()` uses the module and key to invoke `{$module}_mail()`, compose a message ID like `{$module}_{$key}`, and pass arbitrary params into the mail hook.

Mail plugins implement `MailInterface::format()` and `MailInterface::mail()`. The `system.mail` configuration routes specific message IDs, module-wide messages, or the default route to plugins such as `php_mail`, custom mailers, or `null_mail`.

When the core test mail collector is configured, outgoing mail is captured in state under `system.test_mail_collector` instead of being sent.
