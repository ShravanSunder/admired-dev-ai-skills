# Agent Instructions — admired-dev-ai-skills

## Purpose

This is a **read-mostly research catalog** of admired upstream skill repositories.

- Submodules are upstream mirrors. **Do not edit submodule contents** for personal notes.
- Notes and provenance live in parent-owned docs.
- Canonical consumer: **`/Users/shravansunder/dev/ai-tools/`**
  (`plugins/shravan-dev-workflow`, `plugins/dev-workflow-tools`, `plugins/ai-scaffold`)

Dual index + date history:

| Index | Question | Path |
|-------|----------|------|
| Upstream → local | What do I care about in this admired repo? | `docs/repo-index/<upstream>.md` |
| Local → upstream | Which admired sources inspired this ai-tools skill? | `docs/my-ai-tools/<plugin>/<skill>.md` |
| Date-pinned history | Cheap compare between two pins | `docs/repo-index-changelog/<upstream>/YYYY-MM-DD.md` |

## Relationship to ai-tools

Canonical consumer: `/Users/shravansunder/dev/ai-tools/`

| ai-tools surface | Role vs this repo |
|------------------|-------------------|
| `plugins/shravan-dev-workflow/` | Primary consumer; most admired-source mappings |
| `plugins/dev-workflow-tools/` | Secondary; index under `docs/my-ai-tools/dev-workflow-tools/` |
| `plugins/ai-scaffold/` | Secondary; index under `docs/my-ai-tools/ai-scaffold/` |
| `plugins/shravan-dev-workflow/docs/source-inspiration-catalog.md` | Legacy plugin catalog; prefer this repo's indexes |
| `docs/changelog/references/*-source-inspirations.md` | Historical ledgers; promote durable mappings into `docs/my-ai-tools/` |

When auditing or updating a skill in ai-tools:

1. Open `docs/my-ai-tools/<plugin>/<skill>.md` here
2. Follow links into submodule paths for the admired files
3. Record bump/review outcomes as a **new date-pinned file** under `docs/repo-index-changelog/<upstream>/`

## When to load this repo

- `skill-audit` sessions
- `skills-creation` / authoring when provenance matters
- Checking upstream before borrowing mechanics
- **Not** during normal app-repo feature work

## File map

| Path | Role |
|------|------|
| `docs/my-ai-tools/` | Local skill → admired source index (start here from ai-tools) |
| `docs/repo-index/` | Upstream → local notes (current pin, cared-about paths, preserve/avoid) |
| `docs/repo-index-changelog/` | Date-pinned bump/review history with From/To SHAs for cheap compare |
| `CHANGELOG.md` | Parent meta changes only (layout, AGENTS, bulk syncs) |
| `curated-skills/` | Local snippets without upstream submodule |
| Submodule dirs | Upstream mirrors only |
| `scripts/bump-submodule.sh` | Preferred bump helper |

## Keep maintained and updated

### Triggers — when you MUST update this repo

| Trigger | What to update |
|---------|----------------|
| Upstream skill repo released / you want newer SHA | Bump submodule; update pin in `docs/repo-index/<name>.md`; add `docs/repo-index-changelog/<name>/YYYY-MM-DD.md` with From/To; parent `CHANGELOG.md` if bulk |
| Skill-audit finds new/changed admired paths | Both `docs/repo-index/<upstream>.md` and matching `docs/my-ai-tools/<plugin>/<skill>.md`; optional dated changelog entry if review-worthy |
| New local skill in ai-tools borrows from upstream | Add/update `docs/my-ai-tools/<plugin>/<skill>.md`; add reverse link in `docs/repo-index/<upstream>.md` |
| Local skill drops or replaces an inspiration | Edit both index sides; add dated changelog entry if review-worthy |
| New upstream collection added | `git submodule add`; new `docs/repo-index/<name>.md`; new `docs/repo-index-changelog/<name>/YYYY-MM-DD.md`; stub my-ai-tools links |
| `curated-skills/` snippet changes | Edit files under `curated-skills/`; dated entry under `docs/repo-index-changelog/curated-skills/`; parent `CHANGELOG.md` if structural |
| `AGENTS.md` / index layout changes | Parent `CHANGELOG.md` |

### Dual-index sync rule

Never update only one side of a relationship.

- Changing "what we care about" in an upstream → update `docs/repo-index/` **and** every `docs/my-ai-tools/` skill that lists that path.
- Changing a local skill's admired sources → update `docs/my-ai-tools/<plugin>/<skill>.md` **and** the reverse "Used by" links in `docs/repo-index/`.
- If unsure which local skills are affected, grep `docs/my-ai-tools/` for the upstream name before finishing.

### Date-pinned changelogs (`docs/repo-index-changelog/`)

**Goal:** cheap changelog comparison between two versions using stored commit hashes.

**One date file per review or bump — not one rolling CHANGELOG per repo.**

```text
docs/repo-index-changelog/<upstream>/YYYY-MM-DD.md
docs/repo-index-changelog/<upstream>/YYYY-MM-DD-<slug>.md   # second entry same day
```

#### How to store versions (required)

Every date file MUST include a `## Versions` block with **full 40-character commit hashes**:

```markdown
## Versions

- **Kind:** bump | review | initial-pin | initial-track
- **From:** `aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa`
- **To:** `bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb`
- **Compare:** `git -C <upstream> log <From>..<To> --oneline -- <cared-about-paths>`
```

Storage rules:

1. Always store **full 40-char SHAs** in `From` / `To`. Short form may appear in parentheses only as a convenience.
2. **Bump:** `From` = previous pin (usually previous date file's `To`, or current `docs/repo-index/<name>.md` pin before checkout); `To` = new pin after checkout.
3. **Review without bump:** `From` == `To` (same SHA); Kind is `review`.
4. **Initial pin:** `From` is `null`; `To` is the first pinned SHA.
5. **Never invent SHAs.** Copy from `git -C <name> rev-parse HEAD` or the previous date file's `To`.
6. **Never append to an old date file** for a new bump. Create a new `YYYY-MM-DD.md` (or `YYYY-MM-DD-<slug>.md`).
7. `Compare` must be a paste-ready command using those exact From/To values (and preferably cared-about paths from `docs/repo-index/<name>.md`).
8. Current pin always also lives in `docs/repo-index/<name>.md` (`Pinned SHA`). The date file is the history that makes From→To compare cheap.

#### Cheap compare workflow

1. Pick two pins: previous date file's `To` and the newer date file's `To` (or current repo-index pin).
2. Run the newer file's `Compare` line, or:
   ```bash
   git -C <upstream> log <From>..<To> --oneline -- <paths-from-repo-index>
   git -C <upstream> diff --stat <From>..<To> -- <paths-from-repo-index>
   ```
3. Record only cared-about findings under `## Notes` (action for ai-tools, paths reviewed, my-ai-tools links).
4. Ignore upstream noise outside cared-about paths.

#### Required Notes fields

| Field | Required |
|-------|----------|
| What changed upstream that you care about | yes (or `no cared-about diff`) |
| Action for ai-tools | yes (concrete action or `no local action`) |
| Paths reviewed | yes |
| Links to affected `docs/my-ai-tools/` files | when inspirations changed |

Example bump entry:

```markdown
# mattpocock-skills — 2026-08-01

## Versions

- **Kind:** bump
- **From:** `8515a080a74dbcf5019a1a78efc24b5fcafb36b8`
- **To:** `def5678901234567890abcdef1234567890abcde`
- **Compare:** `git -C mattpocock-skills log 8515a080a74dbcf5019a1a78efc24b5fcafb36b8..def5678901234567890abcdef1234567890abcde --oneline -- skills/productivity/writing-great-skills`

## Notes

- Upstream: writing-great-skills glossary refactor
- Action: update skills-creation progressive-disclosure
- Paths reviewed: skills/productivity/writing-great-skills/
- Local index: docs/my-ai-tools/shravan-dev-workflow/skills-creation.md
```

### How to update a submodule (sub-repo)

Prefer the helper:

```bash
./scripts/bump-submodule.sh <name> "<why>"
# optional explicit SHA:
./scripts/bump-submodule.sh <name> "<why>" <sha>
```

Manual checklist (same contract as the script):

1. Record **old SHA** (full): `git -C <name> rev-parse HEAD` — this becomes `From`. Also read the pin line in `docs/repo-index/<name>.md` and confirm it matches.
2. Fetch and move the submodule: `git -C <name> fetch origin` then `git -C <name> checkout <new-sha>`.
3. Record **new SHA** (full): `git -C <name> rev-parse HEAD` — this becomes `To`.
4. Cheap compare cared-about paths only:
   ```bash
   git -C <name> log <From>..<To> --oneline -- <paths-from-repo-index>
   git -C <name> diff --stat <From>..<To> -- <paths-from-repo-index>
   ```
5. Update **current state** in `docs/repo-index/<name>.md`: pinned SHA (`To`), last reviewed date, any preserve/avoid or cared-about path edits.
6. Add a **new** date-pinned file: `docs/repo-index-changelog/<name>/YYYY-MM-DD.md` with the required `## Versions` From/To/Compare block plus `## Notes`.
7. If inspirations or preserve/avoid guidance changed, update matching `docs/my-ai-tools/` files in the same parent commit.
8. Stage **together**: submodule gitlink + `docs/repo-index/<name>.md` + new changelog date file (+ my-ai-tools if touched). Do not leave a bump without a date file that includes From/To SHAs.
9. **Never** commit personal notes or edits inside the submodule working tree. Parent repo only.
10. Update parent `CHANGELOG.md` only for bulk multi-repo syncs or structural meta changes.

What to keep track of by date (minimum):

- `From` and `To` full commit hashes
- Paste-ready `Compare` command
- Which cared-about paths you actually reviewed that day
- Whether ai-tools needs a follow-up change
- Which local skill index files were updated that day

### After borrowing into ai-tools checklist

When you adapt a mechanic into `/Users/shravansunder/dev/ai-tools/`:

1. Update `docs/my-ai-tools/<plugin>/<skill>.md` (borrowed / do-not-copy columns).
2. Ensure `docs/repo-index/<upstream>.md` lists that local skill under "Used by".
3. Do **not** copy upstream prose wholesale; record the adapted judgment only.
4. Optionally add a dated review note under `docs/repo-index-changelog/<upstream>/` (`From` == `To`) if the borrow was driven by a fresh upstream read.
5. If ai-tools still has a legacy catalog/ledger entry, prefer promoting the durable mapping here and leaving a pointer there.

### Cadence (recommended)

- **On demand:** bump when a skill-audit or authoring session needs a newer upstream.
- **Periodic:** when reviewing a workflow area, update the 1–3 relevant repos, then run the bump checklist only for repos with meaningful cared-about diffs.
- **Do not** bulk-bump all 11 repos without reading cared-about paths — empty changelog noise is worse than a stale pin.

### Definition of done for maintenance work

A maintenance change is done only when:

- [ ] Submodule SHA (if bumped) matches `docs/repo-index/<name>.md`
- [ ] A **new** `docs/repo-index-changelog/<name>/YYYY-MM-DD.md` exists with full `From` / `To` SHAs and a `Compare` line
- [ ] `docs/my-ai-tools/` and `docs/repo-index/` agree on the relationship
- [ ] Parent `CHANGELOG.md` updated if the change is structural or multi-repo
- [ ] No uncommitted edits inside submodule working trees

## Submodule rules (short)

- Bump via `scripts/bump-submodule.sh` when possible
- Always pair SHA bump with repo-index pin update + **new date-pinned changelog file containing From/To full SHAs**
- Refresh `docs/my-ai-tools/` when inspirations change
- Never commit changes inside submodule working trees from audit sessions

## Skill-audit workflow

1. Start at `docs/my-ai-tools/<plugin>/<skill>.md` or `docs/repo-index/<upstream>.md`
2. Inspect only cared-about submodule paths
3. Classify update / create / merge / skip for ai-tools
4. Write outcomes using the Keep maintained checklists above (dual index + date file with From/To when review-worthy)
