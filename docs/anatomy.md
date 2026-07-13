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
|   |       |   |-- 00-scope-and-rules.md
|   |       |   |-- 01-application-profiling.md
|   |       |   |-- 02-attack-surface-role-mapping.md
|   |       |   |-- 03-permission-matrix.md
|   |       |   |-- 04-technology-detection.md
|   |       |   |-- 05-vulnerability-playbook-selection.md
|   |       |   |-- 06-source-to-sink-analysis.md
|   |       |   |-- 07-scenario-and-bypass-review.md
|   |       |   |-- 08-deterministic-tooling.md
|   |       |   |-- 09-agent-execution-plan.md
|   |       |   |-- 10-seven-question-validation-gate.md
|   |       |   |-- 11-false-positive-control.md
|   |       |   |-- 12-evidence-hygiene.md
|   |       |   |-- 13-risk-scoring.md
|   |       |   |-- 14-reporting.md
|   |       |   |-- 15-retest-guidance.md
|   |       |   |-- 16-diff-aware-review.md
|   |       |   |-- 17-ci-cd-pr-review.md
|   |       |   |-- 18-learning-feedback-loop.md
|   |       |   |-- 19-code-quality-review.md
|   |       |   |-- 20-architecture-quality-review.md
|   |       |   |-- 21-performance-dos-review.md
|   |       |   |-- 22-error-handling-review.md
|   |       |   |-- 23-test-coverage-review.md
|   |       |   `-- 24-developer-feedback-style.md
|   |       |-- role-mapping/
|   |       |   |-- role-discovery.md
|   |       |   |-- role-hierarchy.md
|   |       |   |-- permission-matrix-template.md
|   |       |   |-- object-ownership-model.md
|   |       |   |-- tenant-boundary-review.md
|   |       |   |-- admin-boundary-review.md
|   |       |   |-- support-role-review.md
|   |       |   |-- service-account-review.md
|   |       |   `-- workflow-abuse-review.md
|   |       |-- validation-gates/
|   |       |   |-- seven-question-gate.md
|   |       |   |-- reachability-gate.md
|   |       |   |-- attacker-control-gate.md
|   |       |   |-- source-to-sink-gate.md
|   |       |   |-- authz-gate.md
|   |       |   |-- impact-gate.md
|   |       |   |-- exploitability-gate.md
|   |       |   |-- duplicate-finding-gate.md
|   |       |   `-- false-positive-gate.md
|   |       |-- evidence-hygiene/
|   |       |   |-- evidence-required.md
|   |       |   |-- pii-redaction.md
|   |       |   |-- secret-redaction.md
|   |       |   |-- code-evidence-rules.md
|   |       |   |-- safe-poc-rules.md
|   |       |   `-- report-evidence-checklist.md
|   |       |-- owasp/
|   |       |   |-- owasp-web-top-10.md
|   |       |   |-- owasp-api-top-10.md
|   |       |   |-- owasp-mobile-top-10.md
|   |       |   |-- owasp-asvs-mapping.md
|   |       |   |-- owasp-masvs-mapping.md
|   |       |   `-- cwe-mapping.md
|   |       |-- vulnerabilities/
|   |       |   |-- access-control/
|   |       |   |-- authentication/
|   |       |   |-- injection/
|   |       |   |-- xss-client/
|   |       |   |-- ssrf-network/
|   |       |   |-- file-security/
|   |       |   |-- deserialization/
|   |       |   |-- crypto/
|   |       |   |-- secrets/
|   |       |   |-- business-logic/
|   |       |   |-- api-security/
|   |       |   |-- cloud/
|   |       |   |-- ci-cd/
|   |       |   |-- supply-chain/
|   |       |   |-- mobile/
|   |       |   |-- logging-monitoring/
|   |       |   `-- privacy-data/
|   |       |-- scenarios/
|   |       |   |-- scenario-template.md
|   |       |   |-- bypass-template.md
|   |       |   |-- auth-bypass-scenarios.md
|   |       |   |-- access-control-bypass-scenarios.md
|   |       |   |-- api-abuse-scenarios.md
|   |       |   |-- mobile-bypass-scenarios.md
|   |       |   |-- cloud-bypass-scenarios.md
|   |       |   |-- waf-firewall-bypass-review.md
|   |       |   |-- business-logic-abuse-scenarios.md
|   |       |   |-- exploit-chain-thinking.md
|   |       |   `-- regression-bypass-scenarios.md
|   |       |-- code-review/
|   |       |   |-- code-review-principles.md
|   |       |   |-- four-phase-review-process.md
|   |       |   |-- automation-awareness.md
|   |       |   |-- review-feedback-style.md
|   |       |   |-- review-severity-labels.md
|   |       |   |-- architecture-review-guide.md
|   |       |   |-- performance-review-guide.md
|   |       |   |-- code-quality-anti-patterns.md
|   |       |   |-- error-handling-principles.md
|   |       |   |-- async-concurrency-patterns.md
|   |       |   |-- test-quality-review.md
|   |       |   |-- api-design-review.md
|   |       |   |-- database-review.md
|   |       |   `-- maintainability-review.md
|   |       |-- semgrep-layer/
|   |       |   |-- semgrep-strategy.md
|   |       |   |-- ruleset-selection.md
|   |       |   |-- taint-mode-guidance.md
|   |       |   |-- pattern-mode-guidance.md
|   |       |   |-- custom-rule-factory.md
|   |       |   |-- rule-test-driven-workflow.md
|   |       |   |-- semgrep-false-positive-review.md
|   |       |   |-- semgrep-result-triage.md
|   |       |   |-- semgrep-ci-integration.md
|   |       |   |-- semgrep-sarif-output.md
|   |       |   `-- semgrep-rule-quality-gate.md
|   |       |-- harness/
|   |       |   |-- 01-discovery-modeling.md
|   |       |   |-- 02-threat-aware-plan.md
|   |       |   |-- 03-specialized-lens-review.md
|   |       |   |-- 04-adversarial-verification.md
|   |       |   |-- 05-deduplication.md
|   |       |   |-- 06-exploit-chain-construction.md
|   |       |   |-- 07-structured-reporting.md
|   |       |   |-- 08-remediation-proposal.md
|   |       |   |-- 09-remediation-validation.md
|   |       |   |-- 10-human-approval-gates.md
|   |       |   `-- 11-mtta-metrics.md
|   |       |-- disclosed-patterns/
|   |       |   |-- README.md
|   |       |   |-- pattern-template.md
|   |       |   |-- access-control-patterns.md
|   |       |   |-- auth-patterns.md
|   |       |   |-- injection-patterns.md
|   |       |   |-- api-patterns.md
|   |       |   |-- cloud-patterns.md
|   |       |   |-- mobile-patterns.md
|   |       |   |-- business-logic-patterns.md
|   |       |   `-- ci-cd-patterns.md
|   |       |-- memory/
|   |       |   |-- memory-policy.md
|   |       |   |-- past-findings-schema.json
|   |       |   |-- false-positive-patterns.json
|   |       |   |-- company-security-controls.json
|   |       |   |-- framework-sink-map.json
|   |       |   |-- recurring-bug-patterns.json
|   |       |   `-- lessons-learned.md
|   |       |-- reference/
|   |       |   |-- frontend/
|   |       |   |-- backend/
|   |       |   |-- mobile/
|   |       |   |-- cloud/
|   |       |   `-- cross-cutting/
|   |       |-- rules/
|   |       |   |-- generic-rules.yml
|   |       |   |-- java-rules.yml
|   |       |   |-- spring-boot-rules.yml
|   |       |   |-- nodejs-rules.yml
|   |       |   |-- express-rules.yml
|   |       |   |-- nestjs-rules.yml
|   |       |   |-- python-rules.yml
|   |       |   |-- django-rules.yml
|   |       |   |-- flask-fastapi-rules.yml
|   |       |   |-- dotnet-rules.yml
|   |       |   |-- php-rules.yml
|   |       |   |-- laravel-rules.yml
|   |       |   |-- go-rules.yml
|   |       |   |-- ruby-rails-rules.yml
|   |       |   |-- mobile-android-rules.yml
|   |       |   |-- mobile-ios-rules.yml
|   |       |   |-- cloud-aws-rules.yml
|   |       |   |-- cloud-azure-rules.yml
|   |       |   |-- cloud-gcp-rules.yml
|   |       |   |-- oracle-rules.yml
|   |       |   |-- kubernetes-rules.yml
|   |       |   |-- terraform-rules.yml
|   |       |   |-- docker-rules.yml
|   |       |   `-- github-actions-rules.yml
|   |       |-- scripts/
|   |       |   |-- repo_profile.py
|   |       |   |-- route_mapper.py
|   |       |   |-- role_mapper.py
|   |       |   |-- permission_matrix_builder.py
|   |       |   |-- dependency_mapper.py
|   |       |   |-- sbom_generator.sh
|   |       |   |-- secret_scan.sh
|   |       |   |-- semgrep_runner.sh
|   |       |   |-- iac_scan.sh
|   |       |   |-- mobile_static_scan.sh
|   |       |   |-- diff_review.sh
|   |       |   |-- pr_context_extractor.sh
|   |       |   |-- finding_deduper.py
|   |       |   |-- evidence_checker.py
|   |       |   |-- memory_update.py
|   |       |   `-- report_builder.py
|   |       |-- templates/
|   |       |   |-- app-profile-template.json
|   |       |   |-- attack-surface-template.md
|   |       |   |-- role-matrix-template.md
|   |       |   |-- permission-matrix-template.md
|   |       |   |-- trust-boundary-template.md
|   |       |   |-- candidate-finding-template.json
|   |       |   |-- finding-template.md
|   |       |   |-- evidence-template.md
|   |       |   |-- false-positive-review-template.md
|   |       |   |-- developer-remediation-template.md
|   |       |   |-- management-summary-template.md
|   |       |   |-- pr-comment-template.md
|   |       |   `-- final-report-template.md
|   |       |-- sarif/
|   |       |   |-- sarif-schema-notes.md
|   |       |   |-- sarif-mapping.md
|   |       |   |-- sarif-output-contract.json
|   |       |   `-- sarif-to-management-summary.md
|   |       |-- remediation/
|   |       |   |-- remediation-policy.md
|   |       |   |-- safe-fix-proposal.md
|   |       |   |-- patch-review-template.md
|   |       |   |-- fix-validation-gates.md
|   |       |   |-- no-auto-edit-default.md
|   |       |   `-- developer-fix-guidance.md
|   |       |-- metrics/
|   |       |   |-- run-manifest-template.json
|   |       |   |-- mtta-metric.md
|   |       |   |-- agent-performance-metrics.md
|   |       |   |-- false-positive-rate.md
|   |       |   |-- finding-lifecycle.md
|   |       |   `-- review-efficiency.md
|   |       `-- output/
|   |           |-- finding-schema.json
|   |           |-- report-schema.json
|   |           |-- severity-model.md
|   |           |-- confidence-model.md
|   |           |-- validation-status.md
|   |           `-- json-output-contract.md
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
|   |   |-- secure-review.md
|   |   |-- app-profile.md
|   |   |-- map-roles.md
|   |   |-- map-permissions.md
|   |   |-- threat-model.md
|   |   |-- scan-secrets.md
|   |   |-- scan-sca.md
|   |   |-- semgrep-scan.md
|   |   |-- semgrep-rule.md
|   |   |-- semgrep-test-rule.md
|   |   |-- semgrep-triage.md
|   |   |-- diff-review.md
|   |   |-- pr-review.md
|   |   |-- harness-scan.md
|   |   |-- harness-validate.md
|   |   |-- generate-sarif.md
|   |   |-- propose-fix.md
|   |   |-- validate-fix.md
|   |   |-- validate-findings.md
|   |   |-- update-memory.md
|   |   |-- retest.md
|   |   `-- management-report.md
|   |-- hooks/
|   |   |-- pre_tool_guard.sh
|   |   |-- prompt_injection_guard.sh
|   |   |-- secret_redactor.sh
|   |   |-- post_scan_collector.sh
|   |   |-- evidence_required.sh
|   |   |-- unsafe_command_blocker.sh
|   |   |-- finding_schema_validator.sh
|   |   |-- cost_tracker.sh
|   |   `-- final_report_quality_gate.sh
|   `-- output-styles/
|       |-- security-report.md
|       |-- developer-fix-report.md
|       |-- management-summary.md
|       |-- pr-comment-style.md
|       `-- bug-bounty-style-report.md
|-- tools/
|   `-- semgrep/
|       |-- rules/
|       |   |-- company/
|       |   |-- generated/
|       |   `-- experimental/
|       |-- tests/
|       |-- baselines/
|       |-- sarif/
|       `-- semgrep-policy.yml
|-- inventory/
|   |-- applications.csv
|   |-- application-criticality.csv
|   |-- technology-matrix.csv
|   |-- cloud-mapping.csv
|   |-- role-models.csv
|   |-- data-classification.csv
|   `-- interconnection-map.csv
|-- results/
|   `-- sample-app/
|       |-- app-profile.json
|       |-- attack-surface.md
|       |-- roles-matrix.md
|       |-- permission-matrix.md
|       |-- trust-boundaries.md
|       |-- selected-playbooks.md
|       |-- raw-agent-findings/
|       |-- validated-findings.json
|       |-- false-positive-review.md
|       |-- evidence/
|       |-- secure-review.sarif
|       |-- final-security-report.md
|       |-- developer-remediation.md
|       |-- pr-comments.md
|       `-- management-summary.md
`-- examples/
    |-- sample-web-app-review.md
    |-- sample-api-review.md
    |-- sample-mobile-review.md
    |-- sample-cloud-review.md
    |-- sample-pr-review.md
    `-- sample-final-report.md
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
|       |-- rules/
|       |-- tests/
|       |-- baselines/
|       |-- sarif/
|       `-- semgrep-policy.yml
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
