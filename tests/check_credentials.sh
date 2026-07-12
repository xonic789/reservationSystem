#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SPRING_CONFIG="$ROOT/yollowa/src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"

fail() {
  printf 'FAIL: %s\n' "$1" >&2
  exit 1
}

require_placeholder() {
  local name="$1"
  grep -qF "value=\"\${$name}\"" "$SPRING_CONFIG" || fail "$name is not externalized"
}

if rg -n --hidden --glob '!.git/**' --glob '!**/tests/check_credentials.sh' \
  '(AKIA[0-9A-Z]{16}|AIza[0-9A-Za-z_-]{35}|github_pat_|ghp_|BEGIN (RSA |EC |OPENSSH )?PRIVATE KEY)' \
  "$ROOT"; then
  fail "provider credential pattern found"
fi

require_placeholder NAVER_CLIENT_ID
require_placeholder NAVER_CLIENT_SECRET
require_placeholder GOOGLE_CLIENT_ID
require_placeholder GOOGLE_CLIENT_SECRET
grep -qF "key=\${GOOGLE_API_KEY}" "$SPRING_CONFIG" || fail "GOOGLE_API_KEY is not externalized"

python3 -c 'import sys, xml.etree.ElementTree as ET; ET.parse(sys.argv[1])' "$SPRING_CONFIG"

printf 'Credential safety checks passed\n'
