# Changelog

Parent-level meta changes for `admired-dev-ai-skills` (layout, AGENTS, bulk syncs).

Per-upstream bump/review history lives in date-pinned files under
[`docs/repo-index-changelog/`](docs/repo-index-changelog/) — each entry stores
full **From** / **To** commit hashes for cheap version comparison.

## 2026-08-27 — bulk submodule sync + ai-tools skill rename

- Bumped or reviewed all 11 upstream submodules; date-pinned From/To files under `docs/repo-index-changelog/<name>/2026-08-27.md`
- Meaningful bumps: `cursor-plugins`, `obra-superpowers`, `mattpocock-skills`, `addyosmani-agent-skills`, `getsentry-skills`, `steipete-agent-scripts`, `mitsupi-agent-stuff`
- Unchanged origin HEAD (review-only): `codex-curated-skills`, `Dimillian-Skills`, `readwise-skills`, `shadcn-improve`
- Retargeted `docs/my-ai-tools/` to current `ai-tools` skill names (`spec-design`, `program-design`, `implement-plan`, `review-implementation`, `plan-implementation`, `spec-program-review`, `discuss-pathfinding`, `orchestrator-design`, `manage-agents`)
- Matt path break: `writing-great-skills` → `writing-for-agents`; `to-issues` → `to-spec` + `to-tickets`

## 2026-07-09 — initial meta-repo

- Initialized parent git repo with 11 upstream submodules at recorded SHAs
- Renamed `curated skills/` → `curated-skills/` (tracked in parent)
- Added dual indexes: `docs/repo-index/` and `docs/my-ai-tools/`
- Added date-pinned history at `docs/repo-index-changelog/<name>/YYYY-MM-DD.md` with From/To SHA blocks
- Added `AGENTS.md` maintenance contract (submodule update + SHA compare rules)
- Added `scripts/bump-submodule.sh`
