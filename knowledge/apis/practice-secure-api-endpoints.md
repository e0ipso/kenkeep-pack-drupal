---
schema_version: 2
id: practice-secure-api-endpoints
title: Secure every API endpoint before processing
kind: practice
tags:
  - security
  - api
  - validation
  - auth
derived_from:
  - "https://www.drupal.org/docs/administering-a-drupal-site/security-in-drupal"
  - "https://www.drupal.org/docs/drupal-apis/routing-system/access-checking-on-routes"
  - "https://www.drupal.org/docs/develop/security/cross-site-request-forgery"
relates_to:
  - practice-validate-input-server-side
  - map-drupal-security-patterns-by-context
  - map-search-api-concepts-and-extension-points
depends_on: []
confidence: high
summary: >-
  Authenticate, authorize, validate, rate limit, and avoid exposing internals in
  API responses.
---
API endpoints should authenticate callers and authorize the requested resource before processing. Token comparisons should use hash_equals(), and endpoints should return consistent errors where revealing existence would allow enumeration.

Validate JSON request bodies, required fields, types, and formats before use. Apply rate limits per IP, user, or endpoint as appropriate.

Responses should expose only public fields, avoid internal status or debug data, set security headers, use no-store caching for sensitive data, configure CORS with an explicit origin allowlist, and log access or failures without sensitive values.
