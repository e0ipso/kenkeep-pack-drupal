---
schema_version: 2
summary: workflow and content moderation state handling; read before changing moderation or transition logic
---
# Workflows Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Treat moderation_state as the source of truth for moderated content**](practice-processing-content-moderation-workflow-guidance.md) to learn about: Content Moderation extends Drupal publishing with workflow states and transitions; code should use moderation services and transition validation rather than setting status directly. #drupal #moderation #workflow

## Components (what exists)
- Open [**Workflow API backs content moderation states and transitions**](map-processing-workflow-moderation-map.md) to learn about: Drupal workflows expose states, transitions, and custom workflow type plugins; Content Moderation uses them to model Draft, Review, Published, and permissioned transitions. #drupal #workflow #moderation

