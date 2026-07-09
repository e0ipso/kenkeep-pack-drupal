# kenkeep Index: drupal / processing / workflows

↑ Parent: [processing](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Treat moderation_state as the source of truth for moderated content**](practice-processing-content-moderation-workflow-guidance.md) to learn about: Content Moderation extends Drupal publishing with workflow states and transitions; code should use moderation services and transition validation rather than setting status directly. #drupal #moderation #workflow

## Components (what exists)
- Open [**Workflow API backs content moderation states and transitions**](map-processing-workflow-moderation-map.md) to learn about: Drupal workflows expose states, transitions, and custom workflow type plugins; Content Moderation uses them to model Draft, Review, Published, and permissioned transitions. #drupal #workflow #moderation

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #moderation
- Open [**Workflow API backs content moderation states and transitions**](map-processing-workflow-moderation-map.md) — Drupal workflows expose states, transitions, and custom workflow type plugins; Content Moderation uses them to model Draft, Review, Published, and permissioned transitions.
- Open [**Treat moderation_state as the source of truth for moderated content**](practice-processing-content-moderation-workflow-guidance.md) — Content Moderation extends Drupal publishing with workflow states and transitions; code should use moderation services and transition validation rather than setting status directly.
### #workflow
- Open [**Workflow API backs content moderation states and transitions**](map-processing-workflow-moderation-map.md) — Drupal workflows expose states, transitions, and custom workflow type plugins; Content Moderation uses them to model Draft, Review, Published, and permissioned transitions.
- Open [**Treat moderation_state as the source of truth for moderated content**](practice-processing-content-moderation-workflow-guidance.md) — Content Moderation extends Drupal publishing with workflow states and transitions; code should use moderation services and transition validation rather than setting status directly.
- Open [**Keep debugging code out of commits**](../../quality/practice-keep-debugging-code-out-of-commits.md) — Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing.