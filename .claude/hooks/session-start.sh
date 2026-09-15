#!/bin/bash
set -euo pipefail

# Only relevant for Claude Code on the web (remote/cloud sessions) — this
# environment's containers are recreated periodically, so user-level state
# like ~/.claude/skills doesn't reliably survive on its own.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

SKILLS_DIR="$HOME/.claude/skills"
TARGET="$SKILLS_DIR/book-to-skill"

# Idempotent: if it's already installed (e.g. container state was cached
# from a previous session), skip the network round-trip entirely.
if [ -f "$TARGET/SKILL.md" ]; then
  exit 0
fi

mkdir -p "$SKILLS_DIR"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

# Soft-fail: a transient network hiccup here should never block the rest of
# session startup. book-to-skill (MIT, https://github.com/virgiliojr94/book-to-skill)
# is an unrelated personal-use tool, not a dependency of this blog, so it's
# installed to the user-level skills dir rather than committed into the repo.
if GIT_LFS_SKIP_SMUDGE=1 git clone --depth 1 --quiet \
    https://github.com/virgiliojr94/book-to-skill "$TMP_DIR/book-to-skill" 2>/dev/null; then
  mkdir -p "$TARGET"
  cp -r "$TMP_DIR/book-to-skill/SKILL.md" \
        "$TMP_DIR/book-to-skill/book_to_skill" \
        "$TMP_DIR/book-to-skill/scripts" \
        "$TMP_DIR/book-to-skill/tools" \
        "$TMP_DIR/book-to-skill/pyproject.toml" \
        "$TMP_DIR/book-to-skill/README.md" \
        "$TARGET/"
else
  echo "session-start: could not fetch book-to-skill (network issue?) — skipping" >&2
fi

exit 0
