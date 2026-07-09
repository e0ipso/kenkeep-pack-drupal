---
type: practice
title: Treat moderation_state as the source of truth for moderated content
description: >-
  Content Moderation extends Drupal publishing with workflow states and
  transitions; code should use moderation services and transition validation
  rather than setting status directly.
tags:
  - drupal
  - moderation
  - workflow
kk_schema_version: 3
kk_id: practice-processing-content-moderation-workflow-guidance
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21content_moderation%21src%21ModerationInformationInterface.php/interface/ModerationInformationInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21content_moderation%21src%21StateTransitionValidationInterface.php/interface/StateTransitionValidationInterface/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21content_moderation%21src%21Permissions.php/class/Permissions/11.x
kk_relates_to:
  - map-processing-workflow-moderation-map
  - map-advanced-drupal-service-patterns
  - map-ajax-command-reference-surface
kk_depends_on: []
kk_confidence: high
---
Attach bundles to a Workflow entity through the ContentModeration workflow type plugin. Inject content_moderation.moderation_information to detect moderated entities, resolve workflows, check pending revisions, and identify live revisions. Read or set the moderation_state field to transition content; do not set status directly on moderated entities because presave logic syncs publication status from the workflow state's published flag. Validate user transitions with content_moderation.state_transition_validation, remember transition permissions use the pattern 'use <workflow_id> transition <transition_id>', and react to state changes in hook_entity_presave by comparing the original and new moderation_state values.

<!-- kk:related:start -->
# Related

- Related: [map-processing-workflow-moderation-map](/drupal/processing/workflows/map-processing-workflow-moderation-map.md)
- Related: [map-advanced-drupal-service-patterns](/drupal/architecture/services/map-advanced-drupal-service-patterns.md)
- Related: [map-ajax-command-reference-surface](/drupal/presentation/frontend-theme/map-ajax-command-reference-surface.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21modules%21content_moderation%21src%21ModerationInformationInterface.php/interface/ModerationInformationInterface/11.x](https://api.drupal.org/api/drupal/core%21modules%21content_moderation%21src%21ModerationInformationInterface.php/interface/ModerationInformationInterface/11.x)
[2] [https://api.drupal.org/api/drupal/core%21modules%21content_moderation%21src%21StateTransitionValidationInterface.php/interface/StateTransitionValidationInterface/11.x](https://api.drupal.org/api/drupal/core%21modules%21content_moderation%21src%21StateTransitionValidationInterface.php/interface/StateTransitionValidationInterface/11.x)
[3] [https://api.drupal.org/api/drupal/core%21modules%21content_moderation%21src%21Permissions.php/class/Permissions/11.x](https://api.drupal.org/api/drupal/core%21modules%21content_moderation%21src%21Permissions.php/class/Permissions/11.x)
<!-- kk:citations:end -->
