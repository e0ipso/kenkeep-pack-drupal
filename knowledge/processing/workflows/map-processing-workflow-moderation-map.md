---
schema_version: 2
id: map-processing-workflow-moderation-map
title: Workflow API backs content moderation states and transitions
kind: map
tags:
  - drupal
  - workflow
  - moderation
derived_from:
  - "https://api.drupal.org/api/drupal/core%21modules%21workflows%21src%21Attribute%21WorkflowType.php/class/WorkflowType/11.x"
  - "https://api.drupal.org/api/drupal/core%21modules%21workflows%21src%21Plugin%21WorkflowTypeBase.php/class/WorkflowTypeBase/11.x"
  - "https://api.drupal.org/api/drupal/core%21modules%21content_moderation%21src%21ModerationInformationInterface.php/interface/ModerationInformationInterface/11.x"
relates_to:
  - practice-processing-content-moderation-workflow-guidance
  - practice-account-for-layout-builder-overrides
  - practice-align-content-entity-keys-with-base-fields
depends_on: []
confidence: high
summary: >-
  Drupal workflows expose states, transitions, and custom workflow type plugins;
  Content Moderation uses them to model Draft, Review, Published, and
  permissioned transitions.
---
Enable content_moderation to use editorial states such as Draft, Review, and Published. For moderated entities, read the current moderation_state field and transition by setting moderation_state before saving. Access the current workflow with ModerationInformationInterface, then inspect states and transitions through the workflow type plugin. Custom workflow behavior belongs in a WorkflowType plugin extending WorkflowTypeBase. Keep in mind that moderation_state is separate from the status field, transitions have permissions, and hook_entity_presave is the documented hook point for reacting to state changes.
