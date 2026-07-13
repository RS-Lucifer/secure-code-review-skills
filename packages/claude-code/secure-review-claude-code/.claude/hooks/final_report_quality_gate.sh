#!/usr/bin/env bash
# Optional hook: validate JSON finding schema if validated-findings.json exists.
if [ -f validated-findings.json ]; then
  python3 .claude/skills/secure-review/scripts/finding_schema_check.py validated-findings.json
fi
