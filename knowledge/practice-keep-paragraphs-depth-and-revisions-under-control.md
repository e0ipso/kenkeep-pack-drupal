---
schema_version: 2
id: practice-keep-paragraphs-depth-and-revisions-under-control
title: Keep Paragraphs Depth And Revisions Under Control
kind: practice
tags:
  - drupal
  - paragraphs
  - performance
derived_from: []
relates_to:
  - map-paragraphs-advanced-layout-library-performance
  - map-paragraphs-structured-content-composition
  - practice-batch-load-entities-after-querying-ids
depends_on: []
confidence: high
summary: >-
  Limit nesting, manage ERR revision growth, and choose widget modes that keep
  large paragraph forms usable.
---
Keep Paragraphs nesting shallow for performance. The documented good shape is `node -> paragraph -> paragraph`, while three or more nesting levels should be avoided because of query performance.

Entity Reference Revisions creates new paragraph revisions on every host save, so projects may need cron or presave cleanup to limit retained paragraph revisions. Large paragraph forms may also need relevant Paragraphs patches.

For many paragraphs, set the form display widget mode to `closed` so items are collapsed by default; `preview` shows rendered previews, and `edit` keeps items expanded.
