---
schema_version: 2
id: practice-token-replacements-must-carry-cache-metadata
title: Carry cache metadata through token replacements
kind: practice
tags:
  - drupal
  - tokens
  - cache
derived_from:
  - https://www.drupal.org/docs/develop/drupal-apis/token-api/token-api-hooks
  - https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Utility%21Token.php/function/Token%3A%3Areplace/11.x
relates_to:
  - practice-define-and-replace-custom-tokens-with-bubbleable-metadata
  - practice-account-for-layout-builder-overrides
  - practice-build-configurable-and-context-aware-plugins-with-cache-contexts
depends_on: []
confidence: high
summary: >-
  Token replacement hooks and token service usage must attach bubbleable
  metadata for every data source used.
---
When implementing token replacement hooks, accept `BubbleableMetadata` and add cacheable dependencies for every entity, owner, config object, or other data source used to compute replacements. For chained tokens, use the token service's `findWithPrefix()` and `generate()` methods so metadata continues to propagate. When replacing tokens into render arrays, pass a `BubbleableMetadata` object to `Token::replace()` and apply it to the build array.
