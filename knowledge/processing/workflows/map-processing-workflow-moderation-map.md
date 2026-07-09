---
type: map
title: Workflow API backs content moderation states and transitions
description: >-
  Drupal workflows expose states, transitions, and custom workflow type plugins;
  Content Moderation uses them to model Draft, Review, Published, and
  permissioned transitions.
tags:
  - drupal
  - workflow
  - moderation
kk_schema_version: 3
kk_id: map-processing-workflow-moderation-map
kk_derived_from:
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21workflows%21src%21Attribute%21WorkflowType.php/class/WorkflowType/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21workflows%21src%21Plugin%21WorkflowTypeBase.php/class/WorkflowTypeBase/11.x
  - >-
    https://api.drupal.org/api/drupal/core%21modules%21content_moderation%21src%21ModerationInformationInterface.php/interface/ModerationInformationInterface/11.x
kk_relates_to:
  - practice-processing-content-moderation-workflow-guidance
  - practice-account-for-layout-builder-overrides
  - practice-align-content-entity-keys-with-base-fields
kk_depends_on: []
kk_confidence: high
---
Enable content_moderation to use editorial states such as Draft, Review, and Published. For moderated entities, read the current moderation_state field and transition by setting moderation_state before saving. Access the current workflow with ModerationInformationInterface, then inspect states and transitions through the workflow type plugin. Custom workflow behavior belongs in a WorkflowType plugin extending WorkflowTypeBase. Keep in mind that moderation_state is separate from the status field, transitions have permissions, and hook_entity_presave is the documented hook point for reacting to state changes.

<!-- kk:related:start -->
# Related

- Related: [practice-processing-content-moderation-workflow-guidance](/drupal/processing/workflows/practice-processing-content-moderation-workflow-guidance.md)
- Related: [practice-account-for-layout-builder-overrides](/drupal/data-cache/cache-render/practice-account-for-layout-builder-overrides.md)
- Related: [practice-align-content-entity-keys-with-base-fields](/drupal/content-model/layout-paragraphs/practice-align-content-entity-keys-with-base-fields.md)
<!-- kk:related:end -->

<!-- kk:citations:start -->
# Citations

[1] [https://api.drupal.org/api/drupal/core%21modules%21workflows%21src%21Attribute%21WorkflowType.php/class/WorkflowType/11.x](https://api.drupal.org/api/drupal/core%21modules%21workflows%21src%21Attribute%21WorkflowType.php/class/WorkflowType/11.x)
[2] [https://api.drupal.org/api/drupal/core%21modules%21workflows%21src%21Plugin%21WorkflowTypeBase.php/class/WorkflowTypeBase/11.x](https://api.drupal.org/api/drupal/core%21modules%21workflows%21src%21Plugin%21WorkflowTypeBase.php/class/WorkflowTypeBase/11.x)
[3] [https://api.drupal.org/api/drupal/core%21modules%21content_moderation%21src%21ModerationInformationInterface.php/interface/ModerationInformationInterface/11.x](https://api.drupal.org/api/drupal/core%21modules%21content_moderation%21src%21ModerationInformationInterface.php/interface/ModerationInformationInterface/11.x)
<!-- kk:citations:end -->
