---
schema_version: 1
summaries:
  apis: "HTTP APIs and serialization surfaces; read before exposing JSON:API, JSON-RPC, REST, or normalizer behavior."
  architecture: "Drupal extension architecture; read when wiring services, plugins, hooks, events, or dependency injection."
  architecture/hooks-events: "OOP hooks, procedural hook exceptions, entity lifecycle hooks, and event subscribers; read when choosing an extension point."
  architecture/plugins: "plugin managers, plugin definitions, derivatives, attributes, actions, and conditions; read before implementing Drupal plugins."
  architecture/services: "service definitions, dependency injection, logging, and service-oriented patterns; read before adding or changing services."
  content-model: "content entities, fields, layout, media, paragraphs, search, and SEO content structures; read before modeling Drupal content."
  content-model/entities-fields: "entity APIs, fields, typed entities, display modes, and entity queries; read before changing entity or field behavior."
  content-model/layout-paragraphs: "Layout Builder and Paragraphs composition patterns; read before building visual content assemblies."
  content-model/media-seo-search: "media, search, redirects, Pathauto, Metatag, and Views integrations; read before adding editorial discovery or SEO features."
  contrib: "contributed module development: core version ranges, drupal.org GitLab CI, ddev-drupal-contrib, dependencies, deprecations, patches, and default config; read before writing or changing a module that other sites install. These nodes replace site habits such as config sync, deployment checklists and editing code in place. Nodes in other branches that recommend a contrib module apply only when the project already uses that module; do not add a dependency because a node recommends it."
  data-cache: "cache metadata, render caching, state, config, storage, and database rules; read before persisting or caching data."
  data-cache/cache-render: "render arrays, cacheability metadata, cache tags, cache contexts, and invalidation; read before changing rendered output."
  data-cache/database: "Database API and custom table transaction rules; read before writing custom SQL or custom-table storage."
  data-cache/storage-config: "Config, State, Key-Value, TempStore, and runtime storage boundaries; read before storing settings or workflow state."
  presentation: "forms, routes, menus, AJAX, frontend assets, theme output, and user-facing UI behavior; read before building Drupal UI."
  presentation/forms: "Form API, entity forms, field widgets, validation forms, and config forms; read before changing forms."
  presentation/frontend-theme: "AJAX, JavaScript behaviors, frontend libraries, render elements, theme hooks, Twig, SDC, and flash messages; read before changing frontend output."
  presentation/routing-navigation: "routes, menus, breadcrumbs, links, URL generation, redirects, and modal route behavior; read before changing navigation."
  processing: "queues, cron, batch, workflow moderation, and long-running processing; read before adding background or state-transition work."
  processing/queues-cron: "queue workers, queue APIs, cron safety, batch APIs, and idempotent processing; read before adding background jobs."
  processing/workflows: "workflow and content moderation state handling; read before changing moderation or transition logic."
  quality: "testing, code quality, debugging workflow, and generated-code review; read before adding test coverage or quality gates."
  security: "security, access control, validation, secrets, file handling, and safe query patterns; read before handling input or protected data."
  security/access: "entity, route, form, and JSON-RPC access checks with cacheable access results; read before changing authorization."
  security/data-secrets: "SQL injection prevention, custom-table query safety, permissions, and secrets handling; read before touching sensitive data."
  security/input-output: "server-side validation, XSS prevention, file upload safety, stream wrappers, and security checklists; read before processing user input or output."
  tooling: "Drush, migrations, updates, install hooks, docs maps, and developer tooling; read before changing CLI or maintenance workflows."
---
# kenkeep Folder Summaries

- `apis`: HTTP APIs and serialization surfaces; read before exposing JSON:API, JSON-RPC, REST, or normalizer behavior.
- `architecture`: Drupal extension architecture; read when wiring services, plugins, hooks, events, or dependency injection.
- `architecture/hooks-events`: OOP hooks, procedural hook exceptions, entity lifecycle hooks, and event subscribers; read when choosing an extension point.
- `architecture/plugins`: plugin managers, plugin definitions, derivatives, attributes, actions, and conditions; read before implementing Drupal plugins.
- `architecture/services`: service definitions, dependency injection, logging, and service-oriented patterns; read before adding or changing services.
- `content-model`: content entities, fields, layout, media, paragraphs, search, and SEO content structures; read before modeling Drupal content.
- `content-model/entities-fields`: entity APIs, fields, typed entities, display modes, and entity queries; read before changing entity or field behavior.
- `content-model/layout-paragraphs`: Layout Builder and Paragraphs composition patterns; read before building visual content assemblies.
- `content-model/media-seo-search`: media, search, redirects, Pathauto, Metatag, and Views integrations; read before adding editorial discovery or SEO features.
- `contrib`: contributed module development: core version ranges, drupal.org GitLab CI, ddev-drupal-contrib, dependencies, deprecations, patches, and default config; read before writing or changing a module that other sites install. These nodes replace site habits such as config sync, deployment checklists and editing code in place. Nodes in other branches that recommend a contrib module apply only when the project already uses that module; do not add a dependency because a node recommends it.
- `data-cache`: cache metadata, render caching, state, config, storage, and database rules; read before persisting or caching data.
- `data-cache/cache-render`: render arrays, cacheability metadata, cache tags, cache contexts, and invalidation; read before changing rendered output.
- `data-cache/database`: Database API and custom table transaction rules; read before writing custom SQL or custom-table storage.
- `data-cache/storage-config`: Config, State, Key-Value, TempStore, and runtime storage boundaries; read before storing settings or workflow state.
- `presentation`: forms, routes, menus, AJAX, frontend assets, theme output, and user-facing UI behavior; read before building Drupal UI.
- `presentation/forms`: Form API, entity forms, field widgets, validation forms, and config forms; read before changing forms.
- `presentation/frontend-theme`: AJAX, JavaScript behaviors, frontend libraries, render elements, theme hooks, Twig, SDC, and flash messages; read before changing frontend output.
- `presentation/routing-navigation`: routes, menus, breadcrumbs, links, URL generation, redirects, and modal route behavior; read before changing navigation.
- `processing`: queues, cron, batch, workflow moderation, and long-running processing; read before adding background or state-transition work.
- `processing/queues-cron`: queue workers, queue APIs, cron safety, batch APIs, and idempotent processing; read before adding background jobs.
- `processing/workflows`: workflow and content moderation state handling; read before changing moderation or transition logic.
- `quality`: testing, code quality, debugging workflow, and generated-code review; read before adding test coverage or quality gates.
- `security`: security, access control, validation, secrets, file handling, and safe query patterns; read before handling input or protected data.
- `security/access`: entity, route, form, and JSON-RPC access checks with cacheable access results; read before changing authorization.
- `security/data-secrets`: SQL injection prevention, custom-table query safety, permissions, and secrets handling; read before touching sensitive data.
- `security/input-output`: server-side validation, XSS prevention, file upload safety, stream wrappers, and security checklists; read before processing user input or output.
- `tooling`: Drush, migrations, updates, install hooks, docs maps, and developer tooling; read before changing CLI or maintenance workflows.
