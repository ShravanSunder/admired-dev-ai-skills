# skills-creation

- **ai-tools path:** [`/Users/shravansunder/dev/ai-tools/plugins/shravan-dev-workflow/skills/skills-creation/`](file:///Users/shravansunder/dev/ai-tools/plugins/shravan-dev-workflow/skills/skills-creation/)
- **Plugin:** shravan-dev-workflow
- **Last reviewed:** 2026-07-09

## Local admired skill paths

### Primary authoring

- [getsentry-skills/skills/skill-writer/SKILL.md](../../../getsentry-skills/skills/skill-writer/SKILL.md) — Sentry’s full create/update workflow
- [codex-curated-skills/skills/.system/skill-creator/SKILL.md](../../../codex-curated-skills/skills/.system/skill-creator/SKILL.md) — Codex’s canonical skill authoring guide
- [mattpocock-skills/skills/productivity/writing-great-skills/SKILL.md](../../../mattpocock-skills/skills/productivity/writing-great-skills/SKILL.md) — Matt Pocock skill authoring vocabulary
- [obra-superpowers/skills/writing-skills/SKILL.md](../../../obra-superpowers/skills/writing-skills/SKILL.md) — Superpowers pressure-first skill writing
- [`~/.cursor/skills-cursor/create-skill/SKILL.md`](file:///Users/shravansunder/.cursor/skills-cursor/create-skill/SKILL.md) — Cursor built-in (not in this repo)

### Decide what to create

- [Dimillian-Skills/project-skill-audit/SKILL.md](../../../Dimillian-Skills/project-skill-audit/SKILL.md) — recommends skills from project history, then hands off to `skill-creator`

### Orchestration around creation

- [cursor-plugins/pstack/skills/automate-me/SKILL.md](../../../cursor-plugins/pstack/skills/automate-me/SKILL.md) — turns your working style into a `-mode` skill via `create-skill`
- [cursor-plugins/pstack/skills/reflect/SKILL.md](../../../cursor-plugins/pstack/skills/reflect/SKILL.md) — mines a session and routes learnings into skill edits via `create-skill`

### Plugin / companion scaffolding

- [codex-curated-skills/skills/.system/plugin-creator/SKILL.md](../../../codex-curated-skills/skills/.system/plugin-creator/SKILL.md) — Codex plugin scaffold (can bundle skills)
- [cursor-plugins/create-plugin/skills/create-plugin-scaffold/SKILL.md](../../../cursor-plugins/create-plugin/skills/create-plugin-scaffold/SKILL.md) — Cursor plugin scaffold with `skills/<name>/SKILL.md`
- [codex-curated-skills/skills/.curated/cli-creator/SKILL.md](../../../codex-curated-skills/skills/.curated/cli-creator/SKILL.md) — builds a CLI + companion skill

### Adjacent (audit/review)

- [getsentry-skills/skills/skill-scanner/SKILL.md](../../../getsentry-skills/skills/skill-scanner/SKILL.md) — security audit
- [steipete-agent-scripts/skills/skill-cleaner/SKILL.md](../../../steipete-agent-scripts/skills/skill-cleaner/SKILL.md) — budget/duplicates/usage audit
- [cursor-plugins/create-plugin/skills/review-plugin-submission/SKILL.md](../../../cursor-plugins/create-plugin/skills/review-plugin-submission/SKILL.md) — marketplace readiness (includes skill frontmatter checks)

## Admired sources (borrowed / do-not-copy)

| Upstream repo | Path | What we borrowed | Do not copy |
|---------------|------|------------------|-------------|
| [getsentry-skills](../../repo-index/getsentry-skills.md) | [skills/skill-writer/](../../../getsentry-skills/skills/skill-writer/) | source/evidence model, SPEC maintenance, create/update workflow | Sentry-domain process |
| [codex-curated-skills](../../repo-index/codex-curated-skills.md) | [skills/.system/skill-creator/](../../../codex-curated-skills/skills/.system/skill-creator/) | folder anatomy, `agents/openai.yaml`, validation scripts | treating scaffolding as authoring philosophy |
| [mattpocock-skills](../../repo-index/mattpocock-skills.md) | [skills/productivity/writing-great-skills/](../../../mattpocock-skills/skills/productivity/writing-great-skills/) | predictability, invocation tradeoffs, trigger-only descriptions, information hierarchy, leading words, pruning | full prose, private glossary dependency |
| [obra-superpowers](../../repo-index/obra-superpowers.md) | [skills/writing-skills/](../../../obra-superpowers/skills/writing-skills/) | RED/GREEN/REFACTOR pressure-first skill writing, rationalization capture | personal directory assumptions, long tutorial body |
| [Dimillian-Skills](../../repo-index/Dimillian-Skills.md) | [project-skill-audit/](../../../Dimillian-Skills/project-skill-audit/) | decide-what-to-create from project evidence, handoff to creator | Apple/UI-only audit rituals |
| [cursor-plugins](../../repo-index/cursor-plugins.md) | [automate-me](../../../cursor-plugins/pstack/skills/automate-me/), [reflect](../../../cursor-plugins/pstack/skills/reflect/) | working-style → skill; session mining → skill edits | Cursor-only create-skill coupling as the only path |
| [cursor-plugins](../../repo-index/cursor-plugins.md) | [create-plugin-scaffold](../../../cursor-plugins/create-plugin/skills/create-plugin-scaffold/), [review-plugin-submission](../../../cursor-plugins/create-plugin/skills/review-plugin-submission/) | plugin skill layout; marketplace frontmatter checks | Cursor marketplace process wholesale |
| [codex-curated-skills](../../repo-index/codex-curated-skills.md) | [plugin-creator](../../../codex-curated-skills/skills/.system/plugin-creator/), [cli-creator](../../../codex-curated-skills/skills/.curated/cli-creator/) | plugin/CLI companion scaffolding | treating scaffolds as authoring philosophy |
| [getsentry-skills](../../repo-index/getsentry-skills.md) | [skills/skill-scanner/](../../../getsentry-skills/skills/skill-scanner/) | security audit lens for skills | Sentry-only scanner assumptions |
| [steipete-agent-scripts](../../repo-index/steipete-agent-scripts.md) | [skills/skill-cleaner/](../../../steipete-agent-scripts/skills/skill-cleaner/) | budget/duplicates/usage cleanup | personal machine paths |
| (outside this repo) | [`~/.cursor/skills-cursor/create-skill/`](file:///Users/shravansunder/.cursor/skills-cursor/create-skill/) | Cursor built-in create-skill mechanics | assuming Cursor paths in portable skills |

## Reverse links

- [getsentry-skills](../../repo-index/getsentry-skills.md)
- [codex-curated-skills](../../repo-index/codex-curated-skills.md)
- [mattpocock-skills](../../repo-index/mattpocock-skills.md)
- [obra-superpowers](../../repo-index/obra-superpowers.md)
- [Dimillian-Skills](../../repo-index/Dimillian-Skills.md)
- [cursor-plugins](../../repo-index/cursor-plugins.md)
- [steipete-agent-scripts](../../repo-index/steipete-agent-scripts.md)

## Provenance already in ai-tools

- Historical ledger: [`docs/changelog/references/creating-skills-source-inspirations.md`](file:///Users/shravansunder/dev/ai-tools/docs/changelog/references/creating-skills-source-inspirations.md)
- Lite plugin catalog: [`plugins/shravan-dev-workflow/docs/source-inspiration-catalog.md`](file:///Users/shravansunder/dev/ai-tools/plugins/shravan-dev-workflow/docs/source-inspiration-catalog.md)
