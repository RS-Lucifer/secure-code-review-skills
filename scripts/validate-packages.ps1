$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$codexSkill = Join-Path $root "packages/codex/secure-review-codex/.agents/skills/secure-review"
$claudeSkill = Join-Path $root "packages/claude-code/secure-review-claude-code/.claude/skills/secure-review"

$pythonFiles = @(
  (Join-Path $codexSkill "scripts/finding_schema_check.py"),
  (Join-Path $codexSkill "scripts/secret_redact.py"),
  (Join-Path $claudeSkill "scripts/finding_schema_check.py"),
  (Join-Path $claudeSkill "scripts/secret_redact.py")
)

python -m py_compile @pythonFiles
python -m json.tool (Join-Path $codexSkill "references/vulnerability-playbooks.json") | Out-Null
python -m json.tool (Join-Path $claudeSkill "references/vulnerability-playbooks.json") | Out-Null

$redacted = "api_key='abc123'`ntoken=tok123`nnormal text" | python (Join-Path $codexSkill "scripts/secret_redact.py")
if ($redacted -match "abc123|tok123") {
  throw "secret_redact.py failed to redact sample secrets"
}

Write-Host "Package validation passed."
