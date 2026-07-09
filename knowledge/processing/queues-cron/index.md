# kenkeep Index: drupal / processing / queues-cron

↑ Parent: [processing](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Delete queue items only after successful processing**](practice-processing-queue-api-operations.md) to learn about: Manual Drupal queue code must explicitly create, claim, delete, release, and count items; claimed items remain until deleted or released. #drupal #queue #api
- Open [**Keep cron hooks bounded and state-gated**](practice-processing-cron-basic-patterns.md) to learn about: Drupal cron work should be short, interval-gated with State API, and delegated to queue workers for long-running or high-volume processing. #drupal #cron #queue
- Open [**Match queue worker ID to queue name**](practice-match-queue-worker-id-to-queue-name.md) to learn about: QueueWorker plugin IDs must match the queue names used when adding items. #drupal #plugins #queue
- Open [**Use locks, resumable state, and success-only timestamps for advanced cron work**](practice-processing-cron-advanced-safety.md) to learn about: Advanced cron jobs should prevent overlap, preserve retry behavior, and save resumable progress for long operations. #drupal #cron #locks #state
- Open [**Design reliable queue processing for at-least-once delivery**](practice-processing-queue-error-handling-idempotency.md) to learn about: Reliable Drupal queues can duplicate work, so workers and manual processors should be idempotent and map queue exceptions to the intended retry behavior. #drupal #queue #reliability
- Open [**Use Drupal Batch API with sandbox progress and a finished callback**](practice-processing-batch-api-pattern.md) to learn about: Long-running browser-initiated processing should be modeled as a Drupal batch with chunked operations, sandbox progress, user-facing messages, and a final success/error callback. #drupal #batch #processing
- Open [**Use QueueWorker plugins for background processing and typed retry behavior**](practice-processing-queueworker-plugin-pattern.md) to learn about: QueueWorker plugins are the preferred Drupal pattern for emails, API calls, synchronization, and other background work that should run through cron or manual queue runners. #drupal #queue #worker

## Components (what exists)
_None yet._

## By topic

### #drupal
- Open [**Register custom plugin managers with default_plugin_manager**](../../architecture/services/practice-register-custom-plugin-managers-with-default-plugin-manager-parent.md) — Custom plugin manager services should use parent: default_plugin_manager, not plain autowiring.
- Open [**Extend Layout Builder With Storage Plugins, Filters, And Events**](../../data-cache/storage-config/practice-extend-layout-builder-with-storage-hooks-events.md) — Use SectionStorage plugins, block plugin filters, events, and access checks for advanced Layout Builder behavior.
- Open [**Drupal entity form bases**](../../presentation/forms/map-drupal-entity-form-bases.md) — Entity forms use ContentEntityForm or EntityForm, register handlers, and access the edited entity through the form object.
### #queue
- Open [**Delete queue items only after successful processing**](practice-processing-queue-api-operations.md) — Manual Drupal queue code must explicitly create, claim, delete, release, and count items; claimed items remain until deleted or released.
- Open [**Keep cron hooks bounded and state-gated**](practice-processing-cron-basic-patterns.md) — Drupal cron work should be short, interval-gated with State API, and delegated to queue workers for long-running or high-volume processing.
- Open [**Match queue worker ID to queue name**](practice-match-queue-worker-id-to-queue-name.md) — QueueWorker plugin IDs must match the queue names used when adding items.
### #cron
- Open [**Keep cron hooks bounded and state-gated**](practice-processing-cron-basic-patterns.md) — Drupal cron work should be short, interval-gated with State API, and delegated to queue workers for long-running or high-volume processing.
- Open [**Use locks, resumable state, and success-only timestamps for advanced cron work**](practice-processing-cron-advanced-safety.md) — Advanced cron jobs should prevent overlap, preserve retry behavior, and save resumable progress for long operations.
### #api
- Open [**Delete queue items only after successful processing**](practice-processing-queue-api-operations.md) — Manual Drupal queue code must explicitly create, claim, delete, release, and count items; claimed items remain until deleted or released.
- Open [**Search API concepts and extension points**](../../content-model/media-seo-search/map-search-api-concepts-and-extension-points.md) — Search API indexes content through indexes, servers, datasources, and processors.
- Open [**Use JSON-RPC for business logic**](../../apis/practice-use-jsonrpc-for-business-logic.md) — JSON-RPC is the documented fit for actions, workflows, batch operations, and other non-REST business behavior.
### #batch
- Open [**Use Drupal Batch API with sandbox progress and a finished callback**](practice-processing-batch-api-pattern.md) — Long-running browser-initiated processing should be modeled as a Drupal batch with chunked operations, sandbox progress, user-facing messages, and a final success/error callback.
### #locks
- Open [**Use locks, resumable state, and success-only timestamps for advanced cron work**](practice-processing-cron-advanced-safety.md) — Advanced cron jobs should prevent overlap, preserve retry behavior, and save resumable progress for long operations.
### #plugins
- Open [**Derivative plugins generate dynamic plugin instances**](../../architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md) — A deriver creates multiple plugin definitions from one base plugin using dynamic data.
- Open [**Drupal mail flow**](../../architecture/services/map-drupal-mail-flow.md) — MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output.
- Open [**Alter and debug plugin definitions through managers**](../../quality/practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.
### #processing
- Open [**Use Drupal Batch API with sandbox progress and a finished callback**](practice-processing-batch-api-pattern.md) — Long-running browser-initiated processing should be modeled as a Drupal batch with chunked operations, sandbox progress, user-facing messages, and a final success/error callback.
### #reliability
- Open [**Design reliable queue processing for at-least-once delivery**](practice-processing-queue-error-handling-idempotency.md) — Reliable Drupal queues can duplicate work, so workers and manual processors should be idempotent and map queue exceptions to the intended retry behavior.
### #state
- Open [**Data storage API purposes**](../../data-cache/storage-config/map-data-storage-api-purposes.md) — Key-Value, State, Config, Cache, and TempStore each serve distinct storage needs.
- Open [**Do not write directly to the state key-value collection**](../../data-cache/storage-config/practice-do-not-write-directly-to-state-key-value-collection.md) — Use the State API for state data and reserve direct Key-Value access for separate collections.
- Open [**Keep runtime storage out of config export**](../../data-cache/storage-config/practice-keep-runtime-storage-out-of-config-export.md) — Store environment-specific runtime values in State or Key-Value, not exported Config.
### #worker
- Open [**Use QueueWorker plugins for background processing and typed retry behavior**](practice-processing-queueworker-plugin-pattern.md) — QueueWorker plugins are the preferred Drupal pattern for emails, API calls, synchronization, and other background work that should run through cron or manual queue runners.