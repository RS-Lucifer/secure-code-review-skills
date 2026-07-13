# Semgrep Layer

## Purpose
Use Semgrep as deterministic evidence, not as final truth. Semgrep findings must be triaged with reachability, attacker control, source-to-sink, and false-positive checks.

## Suggested Safe Commands
```bash
semgrep --config auto --json --output results/semgrep-auto.json .
semgrep --config p/security-audit --json --output results/semgrep-security-audit.json .
semgrep --config p/owasp-top-ten --sarif --output results/semgrep-owasp.sarif .
semgrep --config p/cwe-top-25 --json --output results/semgrep-cwe-top-25.json .
```

## Custom Rule Workflow
1. Understand the vulnerable and safe pattern.
2. Create positive, negative, and sanitizer test cases.
3. Inspect AST if needed.
4. Write Semgrep rule.
5. Run `semgrep --validate` and `semgrep --test`.
6. Triage false positives.
7. Promote to company rules only after tests pass.

## Rule Quality Gate
A custom rule must include:
- CWE/OWASP metadata when possible
- vulnerable sample with `ruleid`
- safe sample with `ok`
- sanitizer/guard sample
- framework-specific safe pattern
- short remediation text
