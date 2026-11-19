# kenkeep Index: drupal / contrib

↑ Parent: [drupal](../index.md)

> kenkeep navigation: the injected body above is the root index node, the top-level catalog of branches and root-level leaves. Do not expect the whole knowledge base here; descend on demand. Read the root index node, pick one or more branches whose intent and tags match your task (several branches can be relevant), and read those branch `index.md` nodes. Descend further only where the task needs it, opening only the leaves you have confirmed are relevant. Follow each leaf's `relates_to` and `depends_on` cross edges to reach related leaves in other branches. You decide how deep to go per branch.

> This index only orients you; leaves hold the durable guidance. Open at least one relevant leaf before acting.

Read this branch when the code is a contributed module or another project that other sites install, not a site. These nodes replace site habits such as config sync, deployment checklists and editing code in place. Nodes in other branches that recommend a contrib module apply only when the project already uses that module; do not add a dependency because a node recommends it.

## Subfolders
_None._

## Conventions (how we build)
- Open [**Declare a core_version_requirement range you test**](practice-declare-a-tested-core-version-requirement-range.md) to learn about: Contrib modules declare supported core versions in core_version_requirement, keep composer.json in line with it, and test the range in CI. #contrib #info-yml #compatibility
- Open [**Declare contrib dependencies in composer.json and .info.yml**](practice-declare-dependencies-in-composer-and-info-yml.md) to learn about: A contrib module lists module dependencies as project:module in .info.yml, requires contrib projects as drupal/<project> in composer.json, and adds no dependency it does not need. #contrib #composer #dependencies #info-yml
- Open [**Develop contrib modules locally with ddev-drupal-contrib**](practice-develop-contrib-modules-with-ddev-drupal-contrib.md) to learn about: The ddev-drupal-contrib add-on builds a Drupal site around a module checkout and runs many of the quality tools that drupal.org CI runs. #contrib #ddev #testing
- Open [**Keep backwards compatibility with semver and deprecations**](practice-keep-backwards-compatibility-with-semver-and-deprecations.md) to learn about: Contrib releases follow major.minor.patch; public API changes go through a deprecation with @trigger_error and a change record before removal. #contrib #releases #deprecation #compatibility
- Open [**Patch other projects with composer-patches, never in place**](practice-patch-other-projects-with-composer-patches.md) to learn about: Fix a bug in core or another contrib project with an upstream issue and a patch applied by cweagans/composer-patches, not by editing vendor code. #contrib #composer #patches
- Open [**Ship environment-neutral default config with a schema**](practice-ship-environment-neutral-default-config-with-schema.md) to learn about: A contrib module puts default configuration in config/install, with values that suit any site and a schema entry for every key. #contrib #config #schema
- Open [**Use the drupal.org GitLab CI templates**](practice-use-the-drupalorg-gitlab-ci-templates.md) to learn about: Contrib projects on drupal.org get phpcs, phpstan, cspell, phpunit and other jobs from one .gitlab-ci.yml copied from the gitlab_templates project. #contrib #ci #quality

## Components (what exists)
_None yet._

## By topic

### #info-yml
- Open [**Declare a core_version_requirement range you test**](practice-declare-a-tested-core-version-requirement-range.md) — Contrib modules declare supported core versions in core_version_requirement, keep composer.json in line with it, and test the range in CI.
- Open [**Declare contrib dependencies in composer.json and .info.yml**](practice-declare-dependencies-in-composer-and-info-yml.md) — A contrib module lists module dependencies as project:module in .info.yml, requires contrib projects as drupal/<project> in composer.json, and adds no dependency it does not need.
### #compatibility
- Open [**Declare a core_version_requirement range you test**](practice-declare-a-tested-core-version-requirement-range.md) — Contrib modules declare supported core versions in core_version_requirement, keep composer.json in line with it, and test the range in CI.
- Open [**Keep backwards compatibility with semver and deprecations**](practice-keep-backwards-compatibility-with-semver-and-deprecations.md) — Contrib releases follow major.minor.patch; public API changes go through a deprecation with @trigger_error and a change record before removal.
### #composer
- Open [**Declare contrib dependencies in composer.json and .info.yml**](practice-declare-dependencies-in-composer-and-info-yml.md) — A contrib module lists module dependencies as project:module in .info.yml, requires contrib projects as drupal/<project> in composer.json, and adds no dependency it does not need.
- Open [**Patch other projects with composer-patches, never in place**](practice-patch-other-projects-with-composer-patches.md) — Fix a bug in core or another contrib project with an upstream issue and a patch applied by cweagans/composer-patches, not by editing vendor code.