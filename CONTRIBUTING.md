# Contributing

Contributions should preserve the package goals:

- defensive review only by default
- one application at a time
- evidence-backed findings
- attack-surface and role mapping before vulnerability claims
- false-positive reduction before reporting
- no secrets in examples, tests, issues, or reports

Before opening a pull request, run:

```powershell
.\scripts\validate-packages.ps1
```

Keep skill instructions concise. Put detailed workflows in references instead of expanding `SKILL.md` unless the instruction must always be loaded.
