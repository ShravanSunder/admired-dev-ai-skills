# docs/repo-index-changelog

Date-pinned bump/review notes for each upstream collection (and `curated-skills`).

Purpose: **cheap changelog comparison between two pinned versions** using stored commit hashes.

## Layout

```text
docs/repo-index-changelog/<upstream-name>/YYYY-MM-DD.md
docs/repo-index-changelog/<upstream-name>/YYYY-MM-DD-<slug>.md
```

One file per bump or review event. Never a rolling single CHANGELOG per upstream.

## Required `## Versions` block

Every file MUST start with a Versions section containing full commit hashes:

```markdown
## Versions

- **Kind:** bump | review | initial-pin | initial-track
- **From:** `<40-char-sha>` or `null` (first pin)
- **To:** `<40-char-sha>`
- **Compare:** `git -C <upstream> log <From>..<To> --oneline -- <cared-about-paths>`
```

Rules for storing hashes:

1. Always store **full 40-character SHAs** in `From` / `To` (short form optional in parentheses).
2. For a bump, `From` is the previous pin; `To` is the new pin.
3. For a review without bump, `From` == `To` (same SHA) and Kind is `review`.
4. For the first pin, `From` is `null` and `To` is the pinned SHA.
5. `Compare` is the exact command to skim cared-about diffs between those two SHAs.
6. Do not invent SHAs — copy from `git -C <name> rev-parse HEAD` / previous date file's `To`.

Cheap compare workflow:

1. Open the two date files (or the latest date file + current `docs/repo-index/<name>.md` pin).
2. Read `From` / `To` (or previous `To` → current `To`).
3. Run the `Compare` command (optionally limited to paths listed in `docs/repo-index/<name>.md`).
4. Record only cared-about findings under `## Notes`.

See root `AGENTS.md` for the full maintenance contract.
