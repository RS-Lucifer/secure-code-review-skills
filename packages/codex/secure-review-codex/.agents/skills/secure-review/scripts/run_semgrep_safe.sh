#!/usr/bin/env bash
set -euo pipefail
mkdir -p results
if ! command -v semgrep >/dev/null 2>&1; then
  echo "semgrep not found. Install semgrep or skip deterministic scan."
  exit 0
fi
semgrep --config auto --json --output results/semgrep-auto.json . || true
semgrep --config p/security-audit --json --output results/semgrep-security-audit.json . || true
semgrep --config p/owasp-top-ten --sarif --output results/semgrep-owasp.sarif . || true
