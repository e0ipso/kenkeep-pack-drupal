---
schema_version: 2
id: practice-define-and-replace-custom-tokens-with-bubbleable-metadata
title: Define and replace custom tokens with bubbleable metadata
kind: practice
tags:
  - drupal
  - tokens
  - cache
derived_from:
  - https://www.drupal.org/docs/develop/drupal-apis/token-api/token-api-hooks
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Utility%21Token.php/class/Token/11.x
relates_to:
  - practice-token-replacements-must-carry-cache-metadata
  - practice-account-for-layout-builder-overrides
  - practice-build-configurable-and-context-aware-plugins-with-cache-contexts
depends_on: []
confidence: medium
summary: >-
  Custom token types and replacements should declare token info, handle chained
  tokens, and add cache dependencies.
---
Define custom token types with `hook_token_info()` and provide replacements with `hook_tokens()`. Token definitions should use translatable names and descriptions, and `needs-data` should match the data key passed to token replacement.

When replacing tokens, validate the token type and expected data object, add cacheable dependencies to `BubbleableMetadata`, honor the replacement options such as `langcode`, and use the token service for chained tokens.
