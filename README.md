# admired-dev-ai-skills

Tracking meta-repo for admired upstream agent-skill collections.

- **Submodules** pin upstream trees at known SHAs
- **`docs/repo-index/`** — what you care about in each upstream (current pin)
- **`docs/my-ai-tools/`** — which admired sources each local ai-tools skill borrows from
- **`docs/repo-index-changelog/`** — date-pinned bump/review history with **From/To commit hashes** for cheap version compare
- **`AGENTS.md`** — how agents maintain indexes and update submodules

Canonical consumer: [`/Users/shravansunder/dev/ai-tools/`](/Users/shravansunder/dev/ai-tools/)

## Clone

```bash
git clone --recurse-submodules <this-repo-url>
# or after a plain clone:
git submodule update --init --recursive
```

## Layout

| Path | Role |
|------|------|
| `docs/my-ai-tools/` | Local skill → upstream index |
| `docs/repo-index/` | Upstream → local notes (current pin) |
| `docs/repo-index-changelog/<name>/YYYY-MM-DD.md` | Date-pinned history with From/To SHAs |
| `curated-skills/` | First-party snippets (not a submodule) |
| `scripts/bump-submodule.sh` | Bump helper |

## Cheap version compare

Each changelog date file stores full commit hashes:

```markdown
## Versions
- **From:** `<40-char-sha>`
- **To:** `<40-char-sha>`
- **Compare:** `git -C <name> log <From>..<To> --oneline -- <cared-about-paths>`
```

Paste the `Compare` line (or use `diff --stat`) to skim only cared-about paths between two pins. Rules: [`AGENTS.md`](AGENTS.md) and [`docs/repo-index-changelog/README.md`](docs/repo-index-changelog/README.md).

## Bump an upstream

```bash
./scripts/bump-submodule.sh mattpocock-skills "re-check writing-great-skills"
# or pin an explicit SHA:
./scripts/bump-submodule.sh mattpocock-skills "pin release" abc1234
```

Then fill Action / Paths reviewed in the new date file, refresh `docs/my-ai-tools/` if needed, and commit.

## Submodules

| Path | Upstream |
|------|----------|
| `addyosmani-agent-skills` | https://github.com/addyosmani/agent-skills |
| `codex-curated-skills` | https://github.com/openai/skills |
| `cursor-plugins` | https://github.com/cursor/plugins |
| `Dimillian-Skills` | https://github.com/Dimillian/Skills |
| `getsentry-skills` | https://github.com/getsentry/skills |
| `mattpocock-skills` | https://github.com/mattpocock/skills |
| `mitsupi-agent-stuff` | https://github.com/mitsuhiko/agent-stuff |
| `obra-superpowers` | https://github.com/obra/superpowers |
| `readwise-skills` | https://github.com/readwiseio/readwise-skills |
| `shadcn-improve` | https://github.com/shadcn/improve |
| `steipete-agent-scripts` | https://github.com/steipete/agent-scripts |
