# docs/my-ai-tools

Local skill → admired upstream index for this meta-repo.

**Canonical consumer:** `/Users/shravansunder/dev/ai-tools/`

Start here when auditing or updating a skill in ai-tools. Follow links into submodule paths under this parent repo, update current state in [`docs/repo-index/`](../repo-index/), and record bump/review history as a **new date-pinned file** under [`docs/repo-index-changelog/<upstream>/YYYY-MM-DD.md`](../repo-index-changelog/) (with full From/To commit hashes for cheap compare).

## Plugins

| Plugin | Path in ai-tools | Index folder |
|--------|------------------|--------------|
| shravan-dev-workflow | `/Users/shravansunder/dev/ai-tools/plugins/shravan-dev-workflow/` | [shravan-dev-workflow/](shravan-dev-workflow/) |
| dev-workflow-tools | `/Users/shravansunder/dev/ai-tools/plugins/dev-workflow-tools/` | [dev-workflow-tools/](dev-workflow-tools/) |
| ai-scaffold | `/Users/shravansunder/dev/ai-tools/plugins/ai-scaffold/` | [ai-scaffold/](ai-scaffold/) |

## Workflow-area overview

| Workflow area | Useful upstream sources | Local skills |
|---------------|-------------------------|--------------|
| Discussion / mental models | pstack (cursor-plugins), Matt grilling/domain modeling, Addy interview/spec/doubt, Steipete owner briefs | [discuss-clarify-mental-models](shravan-dev-workflow/discuss-clarify-mental-models.md) |
| Spec creation | pstack `how`, Addy source/spec-driven, Matt domain modeling | [spec-creation-swarm](shravan-dev-workflow/spec-creation-swarm.md) |
| Plan creation | Obra `writing-plans`, pstack proof/boundary, Codex subagent guidance | [plan-creation-swarm](shravan-dev-workflow/plan-creation-swarm.md) |
| Implementation execution | pstack `poteto-mode`, Obra `subagent-driven-development` | [implementation-execute-plan](shravan-dev-workflow/implementation-execute-plan.md) |
| Review | Dimillian swarms, curated adversarial lenses, Steipete deep review | [implementation-review-swarm](shravan-dev-workflow/implementation-review-swarm.md), [spec-review-swarm](shravan-dev-workflow/spec-review-swarm.md), [plan-review-swarm](shravan-dev-workflow/plan-review-swarm.md) |
| Security | Codex curated security subset | [ops-security-review](shravan-dev-workflow/ops-security-review.md) |
| Skill authoring / audit | Matt writing-great-skills, Obra writing-skills, Sentry skill-writer, Codex skill-creator, pstack routing | [skills-creation](shravan-dev-workflow/skills-creation.md), [skill-audit](shravan-dev-workflow/skill-audit.md) |

## Rules

- Do not copy upstream prose wholesale; adapt mechanics only.
- When a local skill's inspirations change, update its file here **and** the reverse link in `docs/repo-index/`.
- Bumps and reviews get a new `docs/repo-index-changelog/<upstream>/YYYY-MM-DD.md` with full **From** / **To** SHAs (not a rolling CHANGELOG).
- Prefer this index over the legacy plugin catalog at `plugins/shravan-dev-workflow/docs/source-inspiration-catalog.md` in ai-tools.
- Skills marked "no admired sources recorded yet" are stubs — fill them during skill-audit, do not invent mappings.
- Full maintenance contract: root [`AGENTS.md`](../../AGENTS.md).
