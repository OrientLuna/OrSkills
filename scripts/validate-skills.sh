#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
status=0

for skill_dir in "$root"/skills/*; do
  [ -d "$skill_dir" ] || continue
  name="$(basename "$skill_dir")"
  file="$skill_dir/SKILL.md"

  if [ ! -f "$file" ]; then
    echo "ERROR: $name missing SKILL.md" >&2
    status=1
    continue
  fi

  if ! [[ "$name" =~ ^[a-z0-9-]+$ ]]; then
    echo "ERROR: invalid skill directory name: $name" >&2
    status=1
  fi

  first_line="$(sed -n '1p' "$file")"
  if [ "$first_line" != "---" ]; then
    echo "ERROR: $name SKILL.md missing YAML frontmatter start" >&2
    status=1
  fi

  if ! sed -n '1,20p' "$file" | grep -q "^name: $name$"; then
    echo "ERROR: $name frontmatter name must match directory" >&2
    status=1
  fi

  if ! sed -n '1,40p' "$file" | grep -q "^description: "; then
    echo "ERROR: $name frontmatter missing description" >&2
    status=1
  fi
done

if [ "$status" -eq 0 ]; then
  echo "Skill validation passed."
fi

exit "$status"
