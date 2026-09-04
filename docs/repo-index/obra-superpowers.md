# obra-superpowers

- **Upstream:** https://github.com/obra/superpowers
- **Pinned SHA:** `b36e0829c6d0140e93cfef2ca599b1b07d4a7797` (as of 2026-08-30)
- **Last reviewed:** 2026-08-30

## Skills / files I care about

| Path | Why | Used by (ai-tools) |
|------|-----|--------------------|
| `skills/writing-plans/` | DAG-shaped plans with proof gates | [plan-implementation](../my-ai-tools/shravan-dev-workflow/plan-implementation.md) |
| `skills/subagent-driven-development/` | Parent-owned subagent lifecycle | [implement-plan](../my-ai-tools/shravan-dev-workflow/implement-plan.md), [manage-agents](../my-ai-tools/shravan-dev-workflow/manage-agents.md) |
| `skills/writing-skills/` | RED/GREEN/REFACTOR pressure-first skill writing, rationalization traps | [skills-creation](../my-ai-tools/shravan-dev-workflow/skills-creation.md) |
| `skills/brainstorming/` | Three-path spike/bounded/full router; design-before-code | [discuss-pathfinding](../my-ai-tools/shravan-dev-workflow/discuss-pathfinding.md), [discuss-clarify-mental-models](../my-ai-tools/shravan-dev-workflow/discuss-clarify-mental-models.md) (process inspiration) |
| `skills/using-superpowers/` | Skill invocation discipline | Reference only; local routes through `skills-creation` / plugin skills |

## Preserve / avoid

- **Preserve:** pressure tests before claims, failure-form matching, plan proof gates, parent-owned subagent coordination
- **Avoid:** personal directory assumptions, long tutorial bodies copied wholesale, treating Superpowers as the normal authoring route (use `skills-creation`)

## Open gaps

- [x] Diff `writing-skills` / `writing-plans` through v6.3.0 — recap sections dropped; SDD/brainstorming were the real diffs (see 2026-08-27 changelog)
