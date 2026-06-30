---
schema_version: 2
id: practice-token-replacements-must-carry-cache-metadata
title: Carry cache metadata through token replacements
kind: practice
tags:
  - drupal
  - tokens
  - cache
derived_from: []
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
When implementing token replacement hooks, accept `BubbleableMetadata` and add cacheable dependencies for every entity, owner, config object, or other data source used to compute replacements. For chained tokens, use `Token::findWithPrefix()` and delegate with `Token::generate()` so metadata continues to propagate. When replacing tokens into render arrays, collect metadata from `Token::replace()` and copy its cache tags, contexts, and max-age into the render array.
