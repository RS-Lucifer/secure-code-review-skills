# Validation

The package contents should be validated before release.

## Checks Run for This Repository

- Python helper scripts compile with `py_compile`.
- `vulnerability-playbooks.json` parses as valid JSON.
- `secret_redact.py` smoke test redacts quoted and unquoted secret assignments.
- Both `secure-review` skill folders pass `quick_validate.py`.
- A basic text scan found no real secret values in the package; matches were documentation references to redacting secrets.

## Local Validation

PowerShell:

```powershell
.\scripts\validate-packages.ps1
```

Manual commands:

```bash
python -m py_compile packages/codex/secure-review-codex/.agents/skills/secure-review/scripts/*.py
python -m py_compile packages/claude-code/secure-review-claude-code/.claude/skills/secure-review/scripts/*.py
python -m json.tool packages/codex/secure-review-codex/.agents/skills/secure-review/references/vulnerability-playbooks.json
python -m json.tool packages/claude-code/secure-review-claude-code/.claude/skills/secure-review/references/vulnerability-playbooks.json
```

Codex skill validation uses Codex's `quick_validate.py`. If it fails with `ModuleNotFoundError: No module named 'yaml'`, install `PyYAML` into a temporary directory and set `PYTHONPATH` for the validator.
