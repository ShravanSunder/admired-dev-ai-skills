# cursor-plugins

- **Upstream:** https://github.com/cursor/plugins
- **Pinned SHA:** `0dda29e839d15464a137af9935665a5a47ee09b8` (as of 2026-07-09)
- **Last reviewed:** 2026-07-09
- **Focus subtree:** `pstack/` (poteto / pstack skills)

## Skills / files I care about

| Path | Why | Used by (ai-tools) |
|------|-----|--------------------|
| `pstack/skills/how/` | Architecture mental models | [spec-creation-swarm](../my-ai-tools/shravan-dev-workflow/spec-creation-swarm.md), [discuss-clarify-mental-models](../my-ai-tools/shravan-dev-workflow/discuss-clarify-mental-models.md) |
| `pstack/skills/why/` | Source coverage and confidence calibration | [research-swarm](../my-ai-tools/shravan-dev-workflow/research-swarm.md), [spec-creation-swarm](../my-ai-tools/shravan-dev-workflow/spec-creation-swarm.md) |
| `pstack/skills/poteto-mode/` | Playbook routing, verified iterations, parent-owned subagents | [implementation-execute-plan](../my-ai-tools/shravan-dev-workflow/implementation-execute-plan.md) |
| `pstack/skills/interrogate/` | Challenge / clarification patterns | [discuss-clarify-mental-models](../my-ai-tools/shravan-dev-workflow/discuss-clarify-mental-models.md) |
| `pstack/skills/arena/` | Graft/reject decision trails | [implementation-review-swarm](../my-ai-tools/shravan-dev-workflow/implementation-review-swarm.md) (lens inspiration) |
| `pstack/skills/architect/` | Architecture option framing | [spec-creation-swarm](../my-ai-tools/shravan-dev-workflow/spec-creation-swarm.md) |
| Decision/action trail patterns (`show-me-your-work` lineage) | Material interjections and session requirements | [discuss-clarify-mental-models](../my-ai-tools/shravan-dev-workflow/discuss-clarify-mental-models.md) |

## Preserve / avoid

- **Preserve:** one entry → playbooks/branches, prove-it-works, minimize reader load, parent-owned subagent lifecycle, source-coverage confidence
- **Avoid:** Cursor-specific commands, model names, anti-planning stance, blanket autonomy, style micro-rules

## Open gaps

- [ ] Re-check poteto-mode sticky-mode changes after pin `0dda29e`
