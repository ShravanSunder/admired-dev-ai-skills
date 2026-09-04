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
| Discussion / mental models | pstack interrogate/show-me-your-work, Matt grilling, Addy interview-me, Obra brainstorming, dzhng explore-unknowns | [discuss-pathfinding](shravan-dev-workflow/discuss-pathfinding.md), [discuss-clarify-mental-models](shravan-dev-workflow/discuss-clarify-mental-models.md) |
| Spec / program design | pstack `why`/`how`/`architect`, Addy spec/source-driven, Matt domain modeling, dzhng write-spec | [spec-design](shravan-dev-workflow/spec-design.md), [program-design](shravan-dev-workflow/program-design.md), [orchestrator-design](shravan-dev-workflow/orchestrator-design.md) |
| Plan creation | Obra `writing-plans`, pstack prove-it-works / boundary, Codex subagent guidance, dzhng write-spec seams | [plan-implementation](shravan-dev-workflow/plan-implementation.md) |
| Implementation execution | pstack `poteto-mode`, Obra `subagent-driven-development`, dzhng implement-spec | [implement-plan](shravan-dev-workflow/implement-plan.md) |
| Review | Dimillian swarms, curated adversarial lenses, Steipete deep review, pstack arena, dzhng audit-choices | [review-implementation](shravan-dev-workflow/review-implementation.md), [spec-program-review](shravan-dev-workflow/spec-program-review.md) |
| Security | Codex curated security subset | [ops-security-review](shravan-dev-workflow/ops-security-review.md) |
| Skill authoring / audit | Matt writing-for-agents, Obra writing-skills, Sentry skill-writer, Codex skill-creator, pstack automate-me/reflect, dzhng eval-skills | [skills-creation](shravan-dev-workflow/skills-creation.md), [skill-audit](shravan-dev-workflow/skill-audit.md) |

## Rules

- Do not copy upstream prose wholesale; adapt mechanics only.
- When a local skill's inspirations change, update its file here **and** the reverse link in `docs/repo-index/`.
- Bumps and reviews get a new `docs/repo-index-changelog/<upstream>/YYYY-MM-DD.md` with full **From** / **To** SHAs (not a rolling CHANGELOG).
- Prefer this index over the legacy plugin catalog at `plugins/shravan-dev-workflow/docs/source-inspiration-catalog.md` in ai-tools.
- Skills marked "no admired sources recorded yet" are stubs — fill them during skill-audit, do not invent mappings.
- Full maintenance contract: root [`AGENTS.md`](../../AGENTS.md).
