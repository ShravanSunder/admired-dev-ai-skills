# curated-skills

- **Upstream:** none (first-party tracked copies in this parent repo)
- **Path:** `curated-skills/`
- **Last reviewed:** 2026-07-09

## Skills / files I care about

| Path | Why | Used by (ai-tools) |
|------|-----|--------------------|
| `claude pr-review-toolkit/` agents (silent-failure-hunter, type-design-analyzer, comment-analyzer, pr-test-analyzer, …) | Material finding bar; false-green / silent-failure / type / test / comment lenses | [review-implementation](../my-ai-tools/shravan-dev-workflow/review-implementation.md), [spec-program-review](../my-ai-tools/shravan-dev-workflow/spec-program-review.md) |
| `codex adverserial/adversarial-review.md` | Adversarial review lens | [review-implementation](../my-ai-tools/shravan-dev-workflow/review-implementation.md), [spec-program-review](../my-ai-tools/shravan-dev-workflow/spec-program-review.md) |
| `codex adverserial/stop-review-gate.md` | Stop / gate before false-green | [review-implementation](../my-ai-tools/shravan-dev-workflow/review-implementation.md) |

## Preserve / avoid

- **Preserve:** material finding bar; false-green and silent-failure review lenses; type/test/comment review lenses
- **Avoid:** promoting broad curated catalogs as general workflow sources

## Open gaps

- [ ] Consider renaming nested dirs to drop spaces (`claude-pr-review-toolkit`, `codex-adversarial`) in a later cleanup
