---
schema_version: 2
summary: queue workers, queue APIs, cron safety, batch APIs, and idempotent processing; read before adding background jobs
---
# Queues Cron Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Delete queue items only after successful processing**](practice-processing-queue-api-operations.md) to learn about: Manual Drupal queue code must explicitly create, claim, delete, release, and count items; claimed items remain until deleted or released. #drupal #queue #api
- Open [**Design reliable queue processing for at-least-once delivery**](practice-processing-queue-error-handling-idempotency.md) to learn about: Reliable Drupal queues can duplicate work, so workers and manual processors should be idempotent and map queue exceptions to the intended retry behavior. #drupal #queue #reliability
- Open [**Keep cron hooks bounded and state-gated**](practice-processing-cron-basic-patterns.md) to learn about: Drupal cron work should be short, interval-gated with State API, and delegated to queue workers for long-running or high-volume processing. #drupal #cron #queue
- Open [**Match queue worker ID to queue name**](practice-match-queue-worker-id-to-queue-name.md) to learn about: QueueWorker plugin IDs must match the queue names used when adding items. #drupal #plugins #queue
- Open [**Use Drupal Batch API with sandbox progress and a finished callback**](practice-processing-batch-api-pattern.md) to learn about: Long-running browser-initiated processing should be modeled as a Drupal batch with chunked operations, sandbox progress, user-facing messages, and a final success/error callback. #drupal #batch #processing
- Open [**Use locks, resumable state, and success-only timestamps for advanced cron work**](practice-processing-cron-advanced-safety.md) to learn about: Advanced cron jobs should prevent overlap, preserve retry behavior, and save resumable progress for long operations. #drupal #cron #locks #state
- Open [**Use QueueWorker plugins for background processing and typed retry behavior**](practice-processing-queueworker-plugin-pattern.md) to learn about: QueueWorker plugins are the preferred Drupal pattern for emails, API calls, synchronization, and other background work that should run through cron or manual queue runners. #drupal #queue #worker

## Components (what exists)
_None._

