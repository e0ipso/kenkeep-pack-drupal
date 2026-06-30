---
schema_version: 2
summary: server-side validation, XSS prevention, file upload safety, stream wrappers, and security checklists; read before processing user input or output
---
# Input Output Index

> kenkeep navigation: read this index, choose the subfolder or leaf whose intent and tags match your task, then descend only where needed. Follow each leaf's `relates_to` and `depends_on` cross edges for adjacent context.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Avoid common security vulnerability patterns**](practice-avoid-common-security-vulnerabilities.md) to learn about: Prefer safe APIs, allowlists, generic errors, and cryptographic randomness for common risk areas. #security #vulnerabilities #drupal
- Open [**Handle uploads and private files securely**](practice-handle-files-securely.md) to learn about: Validate uploads server-side, store sensitive files privately, and gate private downloads. #security #files #uploads #drupal
- Open [**Place custom validation constraints by convention**](practice-place-custom-validation-constraints-by-convention.md) to learn about: Custom entity validation constraints and validators belong in Plugin/Validation/Constraint with matching names. #drupal #entities #validation
- Open [**Prevent XSS with context-aware output**](practice-prevent-xss-with-context-aware-output.md) to learn about: Use render arrays, placeholders, URL helpers, drupalSettings, and Twig auto-escaping. #security #xss #rendering #drupal
- Open [**Secure custom table queries**](practice-secure-custom-table-queries.md) to learn about: Use placeholders, escape LIKE patterns, and whitelist dynamic table names in custom SQL work. #drupal #database #security
- Open [**Use stream wrappers for files**](practice-use-stream-wrappers-for-files.md) to learn about: Use Drupal file stream wrappers and explicit collision handling instead of absolute filesystem paths. #files #storage #drupal
- Open [**Validate input server-side before use**](practice-validate-input-server-side.md) to learn about: Validate request, entity, and form data for type, format, range, and length before processing. #security #validation #forms #drupal

## Components (what exists)
- Open [**Drupal security patterns by context**](map-drupal-security-patterns-by-context.md) to learn about: Security guidance is organized around common sequences and the context-specific docs to consult. #security #patterns #drupal

