# Agentic SAST Harness Layer

## Pipeline
1. Discovery and modeling
2. Threat-aware plan
3. Specialized lens review
4. Deterministic scan triage
5. Adversarial verification
6. Deduplication
7. Exploit-chain construction, defensive only
8. Structured reporting
9. Remediation proposal, no auto-edit by default
10. Remediation validation
11. Metrics and lessons learned

## Detection-Only Default
Do not modify source code unless the user explicitly requests remediation changes. Prefer report + patch proposal.

## Validation Panel
Use exploitability validator, false-positive validator, evidence hygiene, and risk scoring before final output.
