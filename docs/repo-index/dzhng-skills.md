# dzhng-skills

- **Upstream:** https://github.com/dzhng/skills
- **Pinned SHA:** `3631529b7305eec8dd08b3a827f4d8c16342a29a` (as of 2026-09-03)
- **Last reviewed:** 2026-09-03

Personal MIT library of domain-agnostic “software factory” skills: map unknowns, slice a living spec, implement unattended, then review **choices** and visuals — not vibes or raw diffs.

## Skills / files I care about

| Path | Why | Used by (ai-tools) |
|------|-----|--------------------|
| `skills/engineering/explore-unknowns/` | Four-quadrant walk; reactable artifacts instead of “imagine it” interviews | [discuss-pathfinding](../my-ai-tools/shravan-dev-workflow/discuss-pathfinding.md), [discuss-clarify-mental-models](../my-ai-tools/shravan-dev-workflow/discuss-clarify-mental-models.md) |
| `skills/engineering/write-spec/` | Independently verifiable slices at API seams; playable checkpoints; recursive re-slice | [spec-design](../my-ai-tools/shravan-dev-workflow/spec-design.md), [plan-implementation](../my-ai-tools/shravan-dev-workflow/plan-implementation.md) |
| `skills/engineering/implement-spec/` | Spec as living source of truth; parallel independent slices; visual gates on every pass | [implement-plan](../my-ai-tools/shravan-dev-workflow/implement-plan.md) |
| `skills/engineering/audit-choices/` | Review the implementer’s silent decisions (ledger, confidence-ranked), not the diff | [review-implementation](../my-ai-tools/shravan-dev-workflow/review-implementation.md) |
| `skills/engineering/close-spec/` | Flip a build plan into a why-record that points at code for how | [spec-handoff](../my-ai-tools/shravan-dev-workflow/spec-handoff.md), [docs-maintain](../my-ai-tools/shravan-dev-workflow/docs-maintain.md) |
| `skills/visual/compare-screenshots/`, `skills/visual/screenshot-critique/` | “Less wrong than the target” telemetry; unprimed second-eyes before visual-done | [peekaboo](../my-ai-tools/dev-workflow-tools/peekaboo.md), [implement-plan](../my-ai-tools/shravan-dev-workflow/implement-plan.md) |
| `skills/authoring/eval-skills/`, `skills/authoring/write-skills/` | Blind golden-case evals (fresh subagent + separate judge); authoring principles | [skills-creation](../my-ai-tools/shravan-dev-workflow/skills-creation.md), [skill-audit](../my-ai-tools/shravan-dev-workflow/skill-audit.md) |

## Preserve / avoid

- **Preserve:** quadrant map as the explore deliverable; slice-at-seam + playable checkpoint; choices ledger as the human review surface; baseline is a candidate not ground truth; blind skill evals
- **Avoid:** wholesale `specs/<feature>/` factory loop; `/goal` unattended-day runs as the local default; `implement-spec-with-codex` / `codex` / `claude` harness wrappers; `marketing-pages`; `graphics/renderer` unless a local skill is actually doing WebGPU; `preview-shots` macOS Preview ritual; copying write-tests/write-docs/code-review/review/refactor-clean (overlap with existing catalog)

## Open gaps

- [ ] Decide whether `audit-choices` becomes a first-class local review surface vs a lens inside `review-implementation`
- [ ] Decide whether `eval-skills` (blind subagent + judge) should land in `skills-creation` or stay audit-only
