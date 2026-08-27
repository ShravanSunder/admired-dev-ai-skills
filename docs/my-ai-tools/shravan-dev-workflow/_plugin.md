# shravan-dev-workflow (plugin)

- **ai-tools path:** `/Users/shravansunder/dev/ai-tools/plugins/shravan-dev-workflow/`
- **Last reviewed:** 2026-08-27

Current local skills (ai-tools master): `discuss-pathfinding`, `discuss-clarify-mental-models`, `spec-design`, `program-design`, `spec-program-review`, `orchestrator-design`, `plan-implementation`, `implement-plan`, `review-implementation`, plus handoff/ops/research/skills helpers. Retired swarm names (`*-creation-swarm`, `implementation-execute-plan`) are not indexed.

## Source trees to preserve (plugin-level)

| Source tree (submodule) | Preserve | Narrow / avoid |
| --- | --- | --- |
| [cursor-plugins](../../repo-index/cursor-plugins.md) (pstack) | how / why / poteto-mode / interrogate / arena / swarm / show-me-your-work; prove-it-works; parent-owned subagents | Cursor-specific commands, anti-planning, blanket autonomy, watch-pr/autopilot |
| [mattpocock-skills](../../repo-index/mattpocock-skills.md) | writing-for-agents, grilling, domain modeling, to-spec/to-tickets | Discussion as substitute for source-backed specs |
| [addyosmani-agent-skills](../../repo-index/addyosmani-agent-skills.md) | interview-me / idea-refine / spec / source / doubt-driven | Wholesale workflow copy |
| [Dimillian-Skills](../../repo-index/Dimillian-Skills.md) | review / bug-hunt swarms, skill audit, batch refactor | Apple/UI-only skills outside macOS/iOS contexts |
| [getsentry-skills](../../repo-index/getsentry-skills.md) | skill-writer, pr-writer, security review, agents-md | Sentry-domain process unless local domain matches |
| [steipete-agent-scripts](../../repo-index/steipete-agent-scripts.md) | deep review, maintainer orchestration, skill cleanup | Full personal/tool-specific tree |
| [curated-skills](../../repo-index/curated-skills.md) | material finding bar; false-green / silent-failure lenses | Broad curated catalogs as general workflow |
| [codex-curated-skills](../../repo-index/codex-curated-skills.md) | security subset; skill-creator anatomy | Diluting normal review with security-heavy process |
| [obra-superpowers](../../repo-index/obra-superpowers.md) | writing-plans, subagent-driven-development, writing-skills, brainstorming three-path | Personal dir assumptions; Superpowers as normal authoring route |

OpenClaw ACPX / ACP is used for structured cross-agent review transport in ai-tools; it is **not** mirrored as a submodule here. Do not use it for normal discussion or implementation ownership.

## Maintenance

- Keep this catalog selective.
- Do not cite source inspiration as proof that local behavior works.
- When a workflow change is implemented in ai-tools, add pressure scenarios that prove the local adaptation.
