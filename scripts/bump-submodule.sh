#!/usr/bin/env bash
# Bump an upstream submodule and write a date-pinned changelog entry
# with full From/To SHAs for cheap version comparison.
#
# Usage:
#   ./scripts/bump-submodule.sh <name> "<why>"
#   ./scripts/bump-submodule.sh <name> "<why>" <explicit-sha>
#
# Creates: docs/repo-index-changelog/<name>/YYYY-MM-DD.md
#          (or YYYY-MM-DD-N.md if that date file already exists)
# Updates: docs/repo-index/<name>.md pinned SHA + last reviewed date
# Stages:  submodule gitlink + docs + changelog (does not commit)

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

NAME="${1:-}"
WHY="${2:-}"
EXPLICIT_SHA="${3:-}"

if [[ -z "$NAME" || -z "$WHY" ]]; then
  echo "Usage: $0 <submodule-name> \"<why>\" [explicit-sha]" >&2
  exit 2
fi

if [[ ! -f ".gitmodules" ]] || ! git config -f .gitmodules --get "submodule.$NAME.path" >/dev/null 2>&1; then
  echo "Unknown submodule: $NAME (not in .gitmodules)" >&2
  exit 1
fi

PATH_NAME="$(git config -f .gitmodules --get "submodule.$NAME.path")"
NOTE="docs/repo-index/${NAME}.md"
CHANGELOG_DIR="docs/repo-index-changelog/${NAME}"
TODAY="$(date +%Y-%m-%d)"

if [[ ! -f "$NOTE" ]]; then
  echo "Missing repo-index note: $NOTE" >&2
  exit 1
fi

mkdir -p "$CHANGELOG_DIR"

FROM_SHA="$(git -C "$PATH_NAME" rev-parse HEAD)"
FROM_SHORT="$(git -C "$PATH_NAME" rev-parse --short HEAD)"

echo "Fetching $NAME ..."
git -C "$PATH_NAME" fetch origin --tags

if [[ -n "$EXPLICIT_SHA" ]]; then
  TO_SHA="$(git -C "$PATH_NAME" rev-parse "$EXPLICIT_SHA")"
else
  DEFAULT_REF="$(git -C "$PATH_NAME" symbolic-ref -q refs/remotes/origin/HEAD 2>/dev/null || true)"
  if [[ -n "$DEFAULT_REF" ]]; then
    TO_SHA="$(git -C "$PATH_NAME" rev-parse "$DEFAULT_REF")"
  else
    TO_SHA="$(git -C "$PATH_NAME" rev-parse origin/main 2>/dev/null || git -C "$PATH_NAME" rev-parse origin/master)"
  fi
fi

TO_SHORT="$(git -C "$PATH_NAME" rev-parse --short "$TO_SHA")"

if [[ "$FROM_SHA" == "$TO_SHA" ]]; then
  echo "Already at $TO_SHORT — no bump. Writing review-only date entry."
  KIND="review"
else
  echo "Checking out $TO_SHORT ..."
  git -C "$PATH_NAME" checkout --detach "$TO_SHA" >/dev/null
  KIND="bump"
fi

# Prefer cared-about paths from repo-index note (backtick paths in tables)
CARED_PATHS="$(
  grep -oE '\`[^`]+\`' "$NOTE" 2>/dev/null \
    | tr -d '`' \
    | grep -E '^(skills/|pstack/|curated)' \
    | head -8 \
    | tr '\n' ' ' \
    || true
)"
COMPARE_CMD="git -C ${NAME} log ${FROM_SHA}..${TO_SHA} --oneline"
if [[ -n "${CARED_PATHS// }" ]]; then
  COMPARE_CMD="${COMPARE_CMD} -- ${CARED_PATHS}"
fi

# Choose date filename; avoid clobbering same-day entries
ENTRY="${CHANGELOG_DIR}/${TODAY}.md"
if [[ -f "$ENTRY" ]]; then
  n=2
  while [[ -f "${CHANGELOG_DIR}/${TODAY}-${n}.md" ]]; do
    n=$((n + 1))
  done
  ENTRY="${CHANGELOG_DIR}/${TODAY}-${n}.md"
fi

{
  echo "# ${NAME} — ${TODAY}"
  echo
  echo "## Versions"
  echo
  echo "- **Kind:** ${KIND}"
  echo "- **From:** \`${FROM_SHA}\` (\`${FROM_SHORT}\`)"
  echo "- **To:** \`${TO_SHA}\` (\`${TO_SHORT}\`)"
  echo "- **Compare:** \`${COMPARE_CMD}\`"
  echo
  echo "## Notes"
  echo
  echo "- Why: ${WHY}"
  echo "- Action: (fill) no local action | update docs/my-ai-tools/..."
  echo "- Paths reviewed: (fill from docs/repo-index/${NAME}.md cared-about paths)"
  if [[ "$FROM_SHA" != "$TO_SHA" ]]; then
    echo "- Log skim (trim to cared-about only):"
    # shellcheck disable=SC2086
    git -C "$PATH_NAME" log --oneline "${FROM_SHA}..${TO_SHA}" -- ${CARED_PATHS} 2>/dev/null | head -40 | sed 's/^/  - /' \
      || git -C "$PATH_NAME" log --oneline "${FROM_SHA}..${TO_SHA}" 2>/dev/null | head -40 | sed 's/^/  - /' \
      || true
  else
    echo "- no cared-about diff expected (review-only; From == To)"
  fi
  echo "- Local index: (update docs/my-ai-tools/* if inspirations changed)"
} > "$ENTRY"

# Update pin + last reviewed in repo-index note
tmp="$(mktemp)"
awk -v sha="$TO_SHA" -v today="$TODAY" '
  /^\- \*\*Pinned SHA:\*\*/ {
    print "- **Pinned SHA:** `" sha "` (as of " today ")"
    next
  }
  /^\- \*\*Last reviewed:\*\*/ {
    print "- **Last reviewed:** " today
    next
  }
  { print }
' "$NOTE" > "$tmp"
mv "$tmp" "$NOTE"

git add "$PATH_NAME" "$NOTE" "$ENTRY"

echo
echo "Wrote $ENTRY"
echo "Updated $NOTE"
echo "Staged: $PATH_NAME $NOTE $ENTRY"
echo
echo "Cheap compare:"
echo "  $COMPARE_CMD"
echo
echo "REMINDER: refresh docs/my-ai-tools/* if inspirations or preserve/avoid guidance changed."
echo "Suggested commit message:"
echo "  bump(${NAME}): ${FROM_SHORT} -> ${TO_SHORT} — ${WHY}"
echo
echo "Fill Action / Paths reviewed in $ENTRY before committing."
