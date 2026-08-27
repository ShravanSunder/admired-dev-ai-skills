# cursor-plugins

- **Upstream:** https://github.com/cursor/plugins
- **Pinned SHA:** `fdf357fae76feff7e5f2e5aaff57f99f644b55f8` (as of 2026-08-27)
- **Last reviewed:** 2026-08-27
- **Focus subtree:** `pstack/` (poteto / pstack skills). Ignore third-party MCP plugins in this repo.

Local consumer is current `ShravanSunder/ai-tools` `plugins/shravan-dev-workflow/` (not the 2026-07 swarm skill names).

## Skills / files I care about

| Path | Why | Used by (ai-tools) |
|------|-----|--------------------|
| `pstack/skills/how/` | Architecture mental models: how a subsystem actually works | [program-design](../my-ai-tools/shravan-dev-workflow/program-design.md), [discuss-clarify-mental-models](../my-ai-tools/shravan-dev-workflow/discuss-clarify-mental-models.md) |
| `pstack/skills/why/` | Source coverage and confidence calibration | [research-swarm](../my-ai-tools/shravan-dev-workflow/research-swarm.md), [spec-design](../my-ai-tools/shravan-dev-workflow/spec-design.md) |
| `pstack/skills/poteto-mode/` | Playbook routing, verified iterations, parent-owned subagents | [implement-plan](../my-ai-tools/shravan-dev-workflow/implement-plan.md), [orchestrator-goal](../my-ai-tools/shravan-dev-workflow/orchestrator-goal.md) |
| `pstack/skills/interrogate/` | Challenge / clarification patterns | [discuss-clarify-mental-models](../my-ai-tools/shravan-dev-workflow/discuss-clarify-mental-models.md) |
| `pstack/skills/arena/` | Graft/reject decision trails | [review-implementation](../my-ai-tools/shravan-dev-workflow/review-implementation.md) (lens inspiration) |
| `pstack/skills/architect/` | Parallel design exploration before implementing | [program-design](../my-ai-tools/shravan-dev-workflow/program-design.md) |
| `pstack/skills/show-me-your-work/` | Decision/action trail (what / why / evidence / result) | [discuss-clarify-mental-models](../my-ai-tools/shravan-dev-workflow/discuss-clarify-mental-models.md), [discuss-pathfinding](../my-ai-tools/shravan-dev-workflow/discuss-pathfinding.md) |
| `pstack/skills/swarm/` | Parent-framed parallel coverage / race / aggregate | [manage-agents](../my-ai-tools/shravan-dev-workflow/manage-agents.md), [research-swarm](../my-ai-tools/shravan-dev-workflow/research-swarm.md) |
| `pstack/skills/principle-prove-it-works/` | Prove against the real artifact | [plan-implementation](../my-ai-tools/shravan-dev-workflow/plan-implementation.md), [implement-plan](../my-ai-tools/shravan-dev-workflow/implement-plan.md) |
| `pstack/skills/principle-boundary-discipline/` | Guards at boundaries | [plan-implementation](../my-ai-tools/shravan-dev-workflow/plan-implementation.md), [program-design](../my-ai-tools/shravan-dev-workflow/program-design.md) |
| `pstack/skills/principle-model-the-domain/` | Encode domain in structure, not scattered conditionals | [program-design](../my-ai-tools/shravan-dev-workflow/program-design.md) |
| `pstack/skills/automate-me/` | Working-style → skill | [skills-creation](../my-ai-tools/shravan-dev-workflow/skills-creation.md) |
| `pstack/skills/reflect/` | Session mining → skill edits | [skills-creation](../my-ai-tools/shravan-dev-workflow/skills-creation.md) |
| `pstack/skills/create-verification-skill/` | Project-local prove-it-works skill generator | [skills-creation](../my-ai-tools/shravan-dev-workflow/skills-creation.md) (proof-surface inspiration) |

## Preserve / avoid

- **Preserve:** one entry → playbooks, prove-it-works, minimize reader load, parent-owned subagent lifecycle, source-coverage confidence, parent frame-then-fan-out, decision trails with evidence pointers
- **Avoid:** Cursor-specific commands and model ids; `watch-pr` / babysit / shipping / orchestrate scripts; anti-planning stance; blanket autonomy (`Just do it`); style micro-rules (`unslop`, `no-comments`, `technical-writing`); `make-bot-ui` / `bro`

## Open gaps

- [x] Re-check poteto-mode after pin `0dda29e` — sticky reminder + playbook expansion landed; local still must not copy Cursor command names or autopilot playbooks wholesale
- [ ] If ai-tools later wants a dedicated verification-skill authoring path, map `maintain-verification-skill/` then
