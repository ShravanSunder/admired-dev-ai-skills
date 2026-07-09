# getsentry-skills

- **Upstream:** https://github.com/getsentry/skills
- **Pinned SHA:** `5a64b36c62d042d3981b7937d9d6ca7bd1753b9a` (as of 2026-07-09)
- **Last reviewed:** 2026-07-09

## Skills / files I care about

| Path | Why | Used by (ai-tools) |
|------|-----|--------------------|
| `skills/skill-writer/` (+ SPEC/SOURCES/EVAL) | Meta skill-writer: sources, progressive disclosure, evals | [skills-creation](../my-ai-tools/shravan-dev-workflow/skills-creation.md), [skill-audit](../my-ai-tools/shravan-dev-workflow/skill-audit.md) |
| `skills/pr-writer/` | PR iteration / cover-note patterns | [implementation-pr-wrapup](../my-ai-tools/shravan-dev-workflow/implementation-pr-wrapup.md) |
| Security review / GitHub Actions security review skills | Security process patterns | [ops-security-review](../my-ai-tools/shravan-dev-workflow/ops-security-review.md) |
| `AGENTS.md` conventions | Repo agent-contract shape | Parent [AGENTS.md](../../AGENTS.md) (structure inspiration) |

## Preserve / avoid

- **Preserve:** skill-writer source/evidence model, SPEC maintenance contract, PR iteration patterns, agents-md registration discipline
- **Avoid:** Sentry-domain-specific process unless the local workflow has the same domain

## Open gaps

- [ ] Re-check AXIS eval guidance vs local pressure-test harness
