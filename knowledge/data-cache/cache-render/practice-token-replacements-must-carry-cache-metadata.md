---
type: practice
title: Carry cache metadata through token replacements
description: >-
  Token replacement hooks and token service usage must attach bubbleable
  metadata for every data source used.
tags:
  - drupal
  - tokens
  - cache
kk_schema_version: 3
kk_id: practice-token-replacements-must-carry-cache-metadata
kk_derived_from:
  - 'https://www.drupal.org/docs/develop/drupal-apis/token-api/token-api-hooks'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Utility%21Token.php/function/Token%3A%3Areplace/11.x
kk_relates_to:
  - practice-define-and-replace-custom-tokens-with-bubbleable-metadata
  - practice-account-for-layout-builder-overrides
  - practice-build-configurable-and-context-aware-plugins-with-cache-contexts
kk_depends_on: []
kk_confidence: high
---
When implementing token replacement hooks, accept `BubbleableMetadata` and add cacheable dependencies for every entity, owner, config object, or other data source used to compute replacements. For chained tokens, use the token service's `findWithPrefix()` and `generate()` methods so metadata continues to propagate. When replacing tokens into render arrays, pass a `BubbleableMetadata` object to `Token::replace()` and apply it to the build array.

<!-- kk:related:start -->
# Related

- Related: [practice-define-and-replace-custom-tokens-with-bubbleable-metadata](/drupal/data-cache/cache-render/practice-define-and-replace-custom-tokens-with-bubbleable-metadata.md)
- Related: [practice-account-for-layout-builder-overrides](/drupal/data-cache/cache-render/practice-account-for-layout-builder-overrides.md)
- Related: [practice-build-configurable-and-context-aware-plugins-with-cache-contexts](/drupal/data-cache/cache-render/practice-build-configurable-and-context-aware-plugins-with-cache-contexts.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/drupal-apis/token-api/token-api-hooks](https://www.drupal.org/docs/develop/drupal-apis/token-api/token-api-hooks)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Utility%21Token.php/function/Token%3A%3Areplace/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Utility%21Token.php/function/Token%3A%3Areplace/11.x)
<!-- kk:citations:end -->
