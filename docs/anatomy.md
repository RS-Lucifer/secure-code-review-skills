# Skill Anatomy

This page describes the intended enterprise anatomy for the `secure-review` skill family. The current repository ships a compact, working package; this anatomy is a reference for future expansion and for understanding how the workflow is organized.

## Claude Code Package

```text
secure-review-claude-code/
|-- README.md
|-- INSTALL.md
|-- usage.md
|-- changelog.md
|-- .claude/
|   |-- CLAUDE.md
|   |-- settings.example.json
|   |-- settings.local.example.json
|   |-- skills/
|   |   `-- secure-review/
|   |       |-- SKILL.md
|   |       |-- README.md
|   |       |-- workflow/
|   |       |-- role-mapping/
|   |       |-- validation-gates/
|   |       |-- evidence-hygiene/
|   |       |-- owasp/
|   |       |-- vulnerabilities/
|   |       |-- scenarios/
|   |       |-- code-review/
|   |       |-- semgrep-layer/
|   |       |-- harness/
|   |       |-- disclosed-patterns/
|   |       |-- memory/
|   |       |-- reference/
|   |       |-- rules/
|   |       |-- scripts/
|   |       |-- templates/
|   |       |-- sarif/
|   |       |-- remediation/
|   |       |-- metrics/
|   |       `-- output/
|   |-- agents/
|   |   |-- 01-app-profiler.md
|   |   |-- 02-architecture-mapper.md
|   |   |-- 03-route-api-mapper.md
|   |   |-- 04-auth-flow-agent.md
|   |   |-- 05-role-mapping-agent.md
|   |   |-- 06-permission-matrix-agent.md
|   |   |-- 07-access-control-agent.md
|   |   |-- 08-tenant-isolation-agent.md
|   |   |-- 09-object-ownership-idor-agent.md
|   |   |-- 10-admin-boundary-agent.md
|   |   |-- 11-business-logic-agent.md
|   |   |-- 12-workflow-abuse-agent.md
|   |   |-- 13-injection-agent.md
|   |   |-- 14-xss-client-agent.md
|   |   |-- 15-ssrf-network-agent.md
|   |   |-- 16-file-security-agent.md
|   |   |-- 17-deserialization-agent.md
|   |   |-- 18-secrets-agent.md
|   |   |-- 19-crypto-agent.md
|   |   |-- 20-api-security-agent.md
|   |   |-- 21-graphql-agent.md
|   |   |-- 22-mobile-security-agent.md
|   |   |-- 23-cloud-security-agent.md
|   |   |-- 24-iam-managed-identity-agent.md
|   |   |-- 25-cicd-security-agent.md
|   |   |-- 26-supply-chain-sca-agent.md
|   |   |-- 27-logging-monitoring-agent.md
|   |   |-- 28-sensitive-data-privacy-agent.md
|   |   |-- 29-waf-firewall-assumption-agent.md
|   |   |-- 30-diff-pr-review-agent.md
|   |   |-- 31-exploit-chain-agent.md
|   |   |-- 32-pattern-mining-agent.md
|   |   |-- 33-exploitability-validator.md
|   |   |-- 34-false-positive-validator.md
|   |   |-- 35-risk-scoring-agent.md
|   |   |-- 36-evidence-hygiene-agent.md
|   |   |-- 37-report-writer-agent.md
|   |   |-- 38-code-quality-agent.md
|   |   |-- 39-architecture-review-agent.md
|   |   |-- 40-performance-review-agent.md
|   |   |-- 41-error-handling-agent.md
|   |   |-- 42-test-quality-agent.md
|   |   |-- 43-maintainability-agent.md
|   |   |-- 44-semgrep-scan-agent.md
|   |   |-- 45-semgrep-rule-author-agent.md
|   |   |-- 46-semgrep-rule-test-agent.md
|   |   |-- 47-semgrep-triage-agent.md
|   |   |-- 48-harness-orchestrator-agent.md
|   |   |-- 49-threat-modeling-agent.md
|   |   |-- 50-adversarial-verification-agent.md
|   |   |-- 51-exploit-chain-reporting-agent.md
|   |   |-- 52-remediation-proposal-agent.md
|   |   |-- 53-remediation-validation-agent.md
|   |   |-- 54-sarif-output-agent.md
|   |   `-- 55-mtta-metrics-agent.md
|   |-- commands/
|   |-- hooks/
|   `-- output-styles/
|-- tools/
|   `-- semgrep/
|-- inventory/
|-- results/
`-- examples/
```

## Codex Package

Codex uses the same review logic with Codex-native project instructions.

```text
secure-review-codex/
|-- AGENTS.md
|-- README.md
|-- INSTALL.md
|-- usage.md
|-- .agents/
|   `-- skills/
|       `-- secure-review/
|           |-- SKILL.md
|           |-- README.md
|           |-- workflow/
|           |-- role-mapping/
|           |-- validation-gates/
|           |-- evidence-hygiene/
|           |-- owasp/
|           |-- vulnerabilities/
|           |-- scenarios/
|           |-- code-review/
|           |-- semgrep-layer/
|           |-- harness/
|           |-- disclosed-patterns/
|           |-- memory/
|           |-- reference/
|           |-- rules/
|           |-- scripts/
|           |-- templates/
|           |-- sarif/
|           |-- remediation/
|           |-- metrics/
|           `-- output/
|-- tools/
|   `-- semgrep/
|-- inventory/
|-- results/
`-- examples/
```

Codex entry points:

- Project guidance: `AGENTS.md`
- Skill instructions: `.agents/skills/secure-review/SKILL.md`

## What the Skill Does

The main purpose is end-to-end secure source code review for one application at a time.

It performs:

1. Application profiling
2. Technology detection
3. Attack surface mapping
4. Authentication mapping
5. Role mapping
6. Permission matrix creation
7. Trust boundary mapping
8. Vulnerability playbook selection
9. Deterministic Semgrep/SCA/secrets scans
10. Multi-agent security review
11. Scenario and bypass review
12. Source-to-sink validation
13. False-positive removal
14. SARIF / JSON / Markdown reporting
15. Developer remediation
16. Management summary

## Main Review Flow

```text
/secure-review
|
|-- Phase 1: Scope and rules
|-- Phase 2: App profiling
|-- Phase 3: Technology detection
|-- Phase 4: Attack surface mapping
|-- Phase 5: Role mapping
|-- Phase 6: Permission matrix
|-- Phase 7: Trust boundary mapping
|-- Phase 8: Vulnerability playbook selection
|-- Phase 9: Semgrep / SCA / secrets scan
|-- Phase 10: Agent-based review
|-- Phase 11: Exploitability validation
|-- Phase 12: False-positive validation
|-- Phase 13: Evidence hygiene
|-- Phase 14: Risk scoring
|-- Phase 15: Report generation
`-- Phase 16: Memory / lessons update
```

## Vulnerability Coverage

- Access control
- Authentication
- Authorization
- IDOR / BOLA
- Tenant isolation
- Admin boundary
- Business logic
- Workflow abuse
- Injection
- XSS
- SSRF
- File upload
- Path traversal
- Deserialization
- Crypto
- Secrets
- API security
- GraphQL
- Cloud
- IAM
- CI/CD
- Supply chain
- SCA / SBOM
- Mobile
- Logging / monitoring
- Privacy / data exposure
- Error handling
- Race conditions
- DoS / resource exhaustion
- WAF / firewall assumptions

## False-Positive Control

Every finding must pass:

1. Is the code reachable?
2. Is attacker-controlled input involved?
3. Is there a real source-to-sink path?
4. Is the affected route/API/job reachable?
5. Is auth/authz missing, weak, or bypassable?
6. Is there any existing middleware, sanitizer, validator, framework control, or IAM policy that blocks it?
7. Is the impact real?
8. Is there exact evidence?
9. Is it not only scanner output?
10. Would a senior AppSec reviewer accept it?

Final statuses:

- TRUE POSITIVE
- LIKELY TRUE POSITIVE
- NEEDS MANUAL VALIDATION
- FALSE POSITIVE
- HARDENING

## Dynamic Agent Selection

Do not run all 55 agents every time. Select agents based on the target application.

Normal Web/API app:

- App Profiler
- Route/API Mapper
- Auth Flow Agent
- Role Mapping Agent
- Permission Matrix Agent
- Access Control Agent
- Injection Agent
- API Security Agent
- Secrets Agent
- SCA Agent
- Exploitability Validator
- False Positive Validator
- Report Writer

Cloud-heavy app:

- Add Cloud Security Agent
- Add IAM Agent
- Add CI/CD Agent
- Add Semgrep Scan Agent
- Add SARIF Output Agent

Mobile app:

- Add Mobile Security Agent
- Add API Security Agent
- Add Secrets Agent
- Add SSL/pinning review through mobile playbooks

PR review:

- Add Diff PR Review Agent
- Add Semgrep Triage Agent
- Add SARIF Output Agent

