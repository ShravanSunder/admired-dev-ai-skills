# blader-humanizer

- **Upstream:** https://github.com/blader/humanizer
- **Pinned SHA:** `9862685f575c65a8247f90369951df1b3416e3d6` (as of 2026-09-17)
- **Last reviewed:** 2026-09-17

Single-skill repo (`SKILL.md` v3.0.0). Rewrites AI-sounding prose so it reads like the writer without changing claims. Patterns are structural (staging, rhythm-by-rule, inflation, formatting-by-rule, chat leftovers), ranked strongest-first, grounded in Wikipedia's "Signs of AI writing."

## Skills / files I care about

| Path | Why | Used by (ai-tools) |
|------|-----|--------------------|
| `SKILL.md` | Strength-ranked AI-tell patterns, keep-claims/no-invented-facts, voice-sample override, pasted vs file vs embedded return modes | — (no local skill yet) |

## Preserve / avoid

- **Preserve:** structural tells over a frozen word list; every kept sentence must add information; do not invent facts; sample voice overrides pattern rules (including dashes); embedded mode returns only the final text for PR/commit/docs; code/YAML/paths stay untouched in file mode
- **Avoid:** wholesale prompt copy into every local skill; always-on rewrite of all agent output (fights presentation skills); applying the skill to code, commands, or schema; treating Wikipedia's article as a license to invent extra "tells"

## Open gaps

- [ ] Decide whether this becomes a named local skill, a docs/PR-prose pass inside `docs-maintain` / `implementation-pr-wrapup`, or stays index-only
