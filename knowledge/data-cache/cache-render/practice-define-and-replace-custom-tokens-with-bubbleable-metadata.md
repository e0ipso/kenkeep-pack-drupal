---
type: practice
title: Define and replace custom tokens with bubbleable metadata
description: >-
  Custom token types and replacements should declare token info, handle chained
  tokens, and add cache dependencies.
tags:
  - drupal
  - tokens
  - cache
kk_schema_version: 3
kk_id: practice-define-and-replace-custom-tokens-with-bubbleable-metadata
kk_derived_from:
  - 'https://www.drupal.org/docs/develop/drupal-apis/token-api/token-api-hooks'
  - >-
    https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Utility%21Token.php/class/Token/11.x
kk_relates_to:
  - practice-token-replacements-must-carry-cache-metadata
  - practice-account-for-layout-builder-overrides
  - practice-build-configurable-and-context-aware-plugins-with-cache-contexts
kk_depends_on: []
kk_confidence: medium
---
Define custom token types with `hook_token_info()` and provide replacements with `hook_tokens()`. Token definitions should use translatable names and descriptions, and `needs-data` should match the data key passed to token replacement.

When replacing tokens, validate the token type and expected data object, add cacheable dependencies to `BubbleableMetadata`, honor the replacement options such as `langcode`, and use the token service for chained tokens.

<!-- kk:related:start -->
# Related

- Related: [practice-token-replacements-must-carry-cache-metadata](/drupal/data-cache/cache-render/practice-token-replacements-must-carry-cache-metadata.md)
- Related: [practice-account-for-layout-builder-overrides](/drupal/data-cache/cache-render/practice-account-for-layout-builder-overrides.md)
- Related: [practice-build-configurable-and-context-aware-plugins-with-cache-contexts](/drupal/data-cache/cache-render/practice-build-configurable-and-context-aware-plugins-with-cache-contexts.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://www.drupal.org/docs/develop/drupal-apis/token-api/token-api-hooks](https://www.drupal.org/docs/develop/drupal-apis/token-api/token-api-hooks)
[2] [https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Utility%21Token.php/class/Token/11.x](https://api.drupal.org/api/drupal/core%21lib%21Drupal%21Core%21Utility%21Token.php/class/Token/11.x)
<!-- kk:citations:end -->
