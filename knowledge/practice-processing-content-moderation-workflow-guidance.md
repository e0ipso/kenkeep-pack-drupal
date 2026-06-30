---
schema_version: 2
id: practice-processing-content-moderation-workflow-guidance
title: Treat moderation_state as the source of truth for moderated content
kind: practice
tags:
  - drupal
  - moderation
  - workflow
derived_from: []
relates_to:
  - map-processing-workflow-moderation-map
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
depends_on: []
confidence: high
summary: >-
  Content Moderation extends Drupal publishing with workflow states and
  transitions; code should use moderation services and transition validation
  rather than setting status directly.
---
Attach bundles to a Workflow entity through the ContentModeration workflow type plugin. Inject content_moderation.moderation_information to detect moderated entities, resolve workflows, check pending revisions, and identify live revisions. Read or set the moderation_state field to transition content; do not set status directly on moderated entities because presave logic syncs publication status from the workflow state's published flag. Validate user transitions with content_moderation.state_transition_validation, remember transition permissions use the pattern 'use <workflow_id> transition <transition_id>', and react to state changes in hook_entity_presave by comparing the original and new moderation_state values.
