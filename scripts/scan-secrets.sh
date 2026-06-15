#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
status=0

patterns=(
  '/Users/'
  '/private/'
  'sk-[A-Za-z0-9_-]{20,}'
  'api[_-]?key[[:space:]]*[:=][[:space:]]*["'\'']?[A-Za-z0-9_./+=-]{16,}'
  'token[[:space:]]*[:=][[:space:]]*["'\'']?[A-Za-z0-9_./+=-]{16,}'
  'secret[[:space:]]*[:=][[:space:]]*["'\'']?[A-Za-z0-9_./+=-]{16,}'
  'Bearer[[:space:]]+[A-Za-z0-9_./+=-]{16,}'
)

for pattern in "${patterns[@]}"; do
  if grep -RInE --exclude-dir=.git --exclude='scan-secrets.sh' "$pattern" "$root" >/tmp/orskills-secret-scan.$$; then
    echo "ERROR: suspicious pattern found: $pattern" >&2
    cat /tmp/orskills-secret-scan.$$ >&2
    status=1
  fi
done

rm -f /tmp/orskills-secret-scan.$$

if [ "$status" -eq 0 ]; then
  echo "Secret/path scan passed."
fi

exit "$status"
