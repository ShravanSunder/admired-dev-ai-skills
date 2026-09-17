# humanlayer-skills

- **Upstream:** https://github.com/humanlayer/skills
- **Pinned SHA:** `ca7c8088db69e315a8b2deea43820270457f8f3c` (as of 2026-09-17)
- **Last reviewed:** 2026-09-17

HumanLayer Claude Code marketplace. Distinctive for this catalog: compact visual media-menu (`show-me`) and a PR-description skill that reuses those views so reviewers see the shape of the change, not a file-by-file changelog.

## Skills / files I care about

| Path | Why | Used by (ai-tools) |
|------|-----|--------------------|
| `plugins/visual-pr/skills/visual-pr/` | PR body as a short Why + 1-3 reviewer warnings + `/show-me`-style structural outline; template and final-answer refs | [implementation-pr-wrapup](../my-ai-tools/shravan-dev-workflow/implementation-pr-wrapup.md) |
| `plugins/show-me/skills/show-me/` | Smallest-view media menu: pseudocode, call/file/component trees, Mermaid, diffs, focused HTML | [tui-presentation](../my-ai-tools/shravan-dev-workflow/tui-presentation.md), [presentation-webui](../my-ai-tools/shravan-dev-workflow/presentation-webui.md) |

## Preserve / avoid

- **Preserve:** pick the smallest view that makes the point; PR Why is one sentence; special notes are 1-3 reviewer warnings (or `- None.`); change outline is structural views, not prose or a file list; prefer `diff` for existing shapes and the full target shape when new
- **Avoid:** `.humanlayer/tasks/` artifact paths; HumanLayer product/task URLs as a local requirement; `disable-model-invocation` / name-only trigger as a local default; wholesale copy of `improve-claude-md`, `narrow-react-prop-types`, `build-iterated-agentic-loop`, `design-control-loop`

## Open gaps

- [ ] Decide whether `implementation-pr-wrapup` should grow a visual change-outline obligation or stay lifecycle-only with an optional show-me-style body
- [ ] Skip unless a local skill needs them: `improve-claude-md`, `narrow-react-prop-types`, iterated/control-loop builders
