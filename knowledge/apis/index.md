# kenkeep Index: drupal / apis

↑ Parent: [drupal](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Guard JSON-RPC entity CRUD access**](practice-guard-jsonrpc-entity-crud-access.md) to learn about: JSON-RPC CRUD methods should combine permission attributes, runtime entity checks, accessCheck, and current-user checks. #http #jsonrpc #crud #access
- Open [**Use JSON-RPC for business logic when the project already uses it**](practice-use-jsonrpc-for-business-logic.md) to learn about: In projects that already use the contrib JSON-RPC module, it is the documented fit for actions, workflows, batch operations, and other non-REST behavior. #http #jsonrpc #api #workflow
- Open [**Use JSON:API for entity CRUD when the site enables it**](practice-use-jsonapi-for-entity-crud.md) to learn about: When the site enables core JSON:API, it exposes entity collection, item, relationship, upload, filter, include, sort, and pagination endpoints. #http #jsonapi #entities #crud
- Open [**Secure every API endpoint before processing**](practice-secure-api-endpoints.md) to learn about: Authenticate, authorize, validate, rate limit, and avoid exposing internals in API responses. #security #api #validation #auth
- Open [**Tag custom normalizers explicitly**](practice-tag-custom-normalizers-explicitly.md) to learn about: Custom serialization normalizers need an explicit normalizer service tag with priority. #http #serialization #services
- Open [**Validate JSON-RPC business methods**](practice-validate-jsonrpc-business-methods.md) to learn about: Advanced JSON-RPC methods should validate transitions, limits, file inputs, and storage errors explicitly. #http #jsonrpc #validation #errors

## Components (what exists)
- Open [**JSON-RPC methods are attribute plugins**](map-jsonrpc-method-plugins.md) to learn about: The JSON-RPC API uses contrib method plugins declared with JsonRpcMethod and served through /jsonrpc. #http #jsonrpc #plugins
- Open [**REST resources are ResourceBase plugins**](map-rest-resource-plugins.md) to learn about: Custom REST endpoints live as Plugin\\rest\\resource classes with RestResource attributes and resource config. #http #rest #plugins

## By topic

### #http
- Open [**JSON-RPC methods are attribute plugins**](map-jsonrpc-method-plugins.md) — The JSON-RPC API uses contrib method plugins declared with JsonRpcMethod and served through /jsonrpc.
- Open [**Test JSON-RPC through handler and HTTP paths**](../quality/practice-test-jsonrpc-through-handler-and-http.md) — JSON-RPC testing covers kernel handler calls, functional HTTP calls, mocks, batch requests, and error responses.
- Open [**Guard JSON-RPC entity CRUD access**](practice-guard-jsonrpc-entity-crud-access.md) — JSON-RPC CRUD methods should combine permission attributes, runtime entity checks, accessCheck, and current-user checks.
### #jsonrpc
- Open [**JSON-RPC methods are attribute plugins**](map-jsonrpc-method-plugins.md) — The JSON-RPC API uses contrib method plugins declared with JsonRpcMethod and served through /jsonrpc.
- Open [**Test JSON-RPC through handler and HTTP paths**](../quality/practice-test-jsonrpc-through-handler-and-http.md) — JSON-RPC testing covers kernel handler calls, functional HTTP calls, mocks, batch requests, and error responses.
- Open [**Guard JSON-RPC entity CRUD access**](practice-guard-jsonrpc-entity-crud-access.md) — JSON-RPC CRUD methods should combine permission attributes, runtime entity checks, accessCheck, and current-user checks.
### #api
- Open [**Delete queue items only after successful processing**](../processing/queues-cron/practice-processing-queue-api-operations.md) — Manual Drupal queue code must explicitly create, claim, delete, release, and count items; claimed items remain until deleted or released.
- Open [**Search API concepts and extension points**](../content-model/media-seo-search/map-search-api-concepts-and-extension-points.md) — Search API indexes content through indexes, servers, datasources, and processors.
- Open [**Use JSON-RPC for business logic when the project already uses it**](practice-use-jsonrpc-for-business-logic.md) — In projects that already use the contrib JSON-RPC module, it is the documented fit for actions, workflows, batch operations, and other non-REST behavior.
### #crud
- Open [**Guard JSON-RPC entity CRUD access**](practice-guard-jsonrpc-entity-crud-access.md) — JSON-RPC CRUD methods should combine permission attributes, runtime entity checks, accessCheck, and current-user checks.
- Open [**Use JSON:API for entity CRUD when the site enables it**](practice-use-jsonapi-for-entity-crud.md) — When the site enables core JSON:API, it exposes entity collection, item, relationship, upload, filter, include, sort, and pagination endpoints.
### #plugins
- Open [**Derivative plugins generate dynamic plugin instances**](../architecture/plugins/map-derivative-plugins-generate-dynamic-plugin-instances.md) — A deriver creates multiple plugin definitions from one base plugin using dynamic data.
- Open [**Drupal mail flow**](../architecture/services/map-drupal-mail-flow.md) — MailManager builds messages with hook_mail(), resolves a mail plugin, formats the body, and sends or captures output.
- Open [**Alter and debug plugin definitions through managers**](../quality/practice-alter-and-debug-plugin-definitions-through-managers.md) — Use plugin alter hooks, Drush generators, and manager inspection commands for plugin definition work.
### #validation
- Open [**Validate input server-side before use**](../security/input-output/practice-validate-input-server-side.md) — Validate request, entity, and form data for type, format, range, and length before processing.
- Open [**Place custom validation constraints by convention**](../security/input-output/practice-place-custom-validation-constraints-by-convention.md) — Custom entity validation constraints and validators belong in Plugin/Validation/Constraint with matching names.
- Open [**Target form alters precisely**](../presentation/forms/practice-target-form-alters-precisely.md) — Prefer specific or base form alter hooks, use #states only for client-side behavior, and validate on the server.
### #access
- Open [**Include cache metadata in entity access handlers**](../security/access/practice-include-cache-metadata-in-entity-access-handlers.md) — Entity access results need cache metadata such as permission, user, or entity cache contexts/tags.
- Open [**Define route access with explicit requirements and cache metadata**](../security/access/practice-route-access-requirements-and-cacheability.md) — Use YAML requirements or tagged custom checkers, and always cache AccessResult decisions correctly.
- Open [**Return cacheable AccessResult decisions**](../security/access/practice-return-cacheable-access-results.md) — Drupal access checks must return AccessResult objects with the right cache metadata.
### #auth
- Open [**Secure every API endpoint before processing**](practice-secure-api-endpoints.md) — Authenticate, authorize, validate, rate limit, and avoid exposing internals in API responses.
### #entities
- Open [**Use Database API only for custom tables**](../data-cache/database/practice-use-database-api-only-for-custom-tables.md) — Use Entity API for content and reserve direct Database API queries for custom or audit tables.
- Open [**Use Database API sparingly for custom tables**](../data-cache/database/practice-use-database-api-sparingly-for-custom-tables.md) — Use Database API only for non-entity tables, complex joins, migrations, or rare SQL-specific performance needs.
- Open [**Typed Entity wrapper structure**](../content-model/entities-fields/map-typed-entity-wrapper-structure.md) — Business wrappers live under WrappedEntities and typed repository plugins expose wrapped entity loading.
### #errors
- Open [**Validate JSON-RPC business methods**](practice-validate-jsonrpc-business-methods.md) — Advanced JSON-RPC methods should validate transitions, limits, file inputs, and storage errors explicitly.
### #jsonapi
- Open [**Use JSON:API for entity CRUD when the site enables it**](practice-use-jsonapi-for-entity-crud.md) — When the site enables core JSON:API, it exposes entity collection, item, relationship, upload, filter, include, sort, and pagination endpoints.
### #rest
- Open [**REST resources are ResourceBase plugins**](map-rest-resource-plugins.md) — Custom REST endpoints live as Plugin\\rest\\resource classes with RestResource attributes and resource config.
### #security
- Open [**Secure custom table queries**](../security/input-output/practice-secure-custom-table-queries.md) — Use placeholders, escape LIKE patterns, and whitelist dynamic table names in custom SQL work.
- Open [**Drupal security patterns by context**](../security/input-output/map-drupal-security-patterns-by-context.md) — Security guidance is organized around common sequences and the context-specific docs to consult.
- Open [**Avoid common security vulnerability patterns**](../security/input-output/practice-avoid-common-security-vulnerabilities.md) — Prefer safe APIs, allowlists, generic errors, and cryptographic randomness for common risk areas.
### #serialization
- Open [**Tag custom normalizers explicitly**](practice-tag-custom-normalizers-explicitly.md) — Custom serialization normalizers need an explicit normalizer service tag with priority.
### #services
- Open [**Advanced Drupal service patterns**](../architecture/services/map-advanced-drupal-service-patterns.md) — Advanced service definitions cover factories, decorators, tagged collectors, HTTP clients, and service providers.
- Open [**Drupal service definitions and common services**](../architecture/services/map-drupal-service-definitions-and-common-services.md) — Module services are PHP classes registered in services.yml with injected core services and optional parameters.
- Open [**Cache computed service data with CacheBackendInterface**](../data-cache/cache-render/practice-cache-computed-service-data-with-cachebackendinterface.md) — Use CacheBackendInterface in services for computed data and attach tags for invalidation across bins.
### #workflow
- Open [**Workflow API backs content moderation states and transitions**](../processing/workflows/map-processing-workflow-moderation-map.md) — Drupal workflows expose states, transitions, and custom workflow type plugins; Content Moderation uses them to model Draft, Review, Published, and permissioned transitions.
- Open [**Treat moderation_state as the source of truth for moderated content**](../processing/workflows/practice-processing-content-moderation-workflow-guidance.md) — Content Moderation extends Drupal publishing with workflow states and transitions; code should use moderation services and transition validation rather than setting status directly.
- Open [**Keep debugging code out of commits**](../quality/practice-keep-debugging-code-out-of-commits.md) — Use Devel, Kint, logging, Xdebug, and Web Profiler for debugging, but remove debug code before committing.