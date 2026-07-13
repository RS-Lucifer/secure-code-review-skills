# Agent Catalog

Do not run all agents blindly. Select based on app type and review goal. Agents return candidate findings only; validators decide final status.

## 01-app-profiler
Identify app type, languages, frameworks, package managers, runtime, data stores, auth style, deployment assumptions, and sensitive data.

## 02-architecture-mapper
Map services, modules, boundaries, data stores, external integrations, background jobs, and high-risk architectural patterns.

## 03-route-api-mapper
Map HTTP routes, controllers, GraphQL resolvers, RPC endpoints, webhooks, queues, mobile APIs, file handlers, and admin routes.

## 04-auth-flow-agent
Map login, session, JWT, OAuth/OIDC, SSO, MFA, password reset, API key, and service-to-service authentication.

## 05-role-mapping-agent
Discover roles, role sources, hierarchy, support/operator access, service accounts, and privilege escalation paths.

## 06-permission-matrix-agent
Build route/function/object/tenant/field/workflow permission matrices.

## 07-access-control-agent
Review broken access control, BOLA/IDOR, function-level auth, ownership, and field-level authorization.

## 08-tenant-isolation-agent
Review org/account/tenant boundaries, tenant filters, cache keys, old API versions, and support tenant switching.

## 09-object-ownership-idor-agent
Trace object identifiers from request to lookup/update/delete and validate ownership enforcement.

## 10-admin-boundary-agent
Review admin/user/support/operator separation, hidden APIs, frontend-only controls, and role confusion.

## 11-business-logic-agent
Review payment/order/status/coupon/refund/approval/maker-checker/workflow abuse paths.

## 12-workflow-abuse-agent
Review skipped steps, replayed states, forced browsing, race conditions, and state-machine abuse.

## 13-injection-agent
Review SQL/NoSQL/command/LDAP/XPath/template/ORM/GraphQL injection with source-to-sink evidence.

## 14-xss-client-agent
Review reflected/stored/DOM XSS, unsafe rendering, CSP gaps, postMessage, open redirect, and tabnabbing.

## 15-ssrf-network-agent
Review URL fetchers, webhooks, image importers, metadata access, internal service access, and SSRF mitigations.

## 16-file-security-agent
Review path traversal, arbitrary read/write, file overwrite, unsafe uploads, zip slip, and temp-file handling.

## 17-deserialization-agent
Review unsafe object/YAML/XML/parser deserialization and gadget-prone patterns.

## 18-secrets-agent
Review hardcoded secrets, cloud keys, tokens, private keys, credentials in logs/configs/env usage.

## 19-crypto-agent
Review weak encryption, hashing, random, key handling, TLS validation, and certificate pinning logic.

## 20-api-security-agent
Review mass assignment, excessive data exposure, rate limits, unsafe versioning, webhook auth, and API design.

## 21-graphql-agent
Review GraphQL auth, resolver-level access, batching, introspection exposure, depth/complexity, and injection.

## 22-mobile-security-agent
Review Android/iOS/Flutter/React Native static risks, mobile API authorization gaps, storage, WebView, deeplinks, and pinning weaknesses.

## 23-cloud-security-agent
Review AWS/Azure/GCP/Oracle cloud configs, storage, security groups, key vaults, metadata, and IaC.

## 24-iam-managed-identity-agent
Review IAM roles, managed identities, service principals, least privilege, key vault access, and token trust.

## 25-cicd-security-agent
Review GitHub Actions/GitLab/Azure DevOps, command injection, unsafe PR workflows, unpinned actions, artifacts, and deployment tokens.

## 26-supply-chain-sca-agent
Review dependency risk, SBOM, lockfile integrity, vulnerable packages, dependency confusion, and typosquatting patterns.

## 27-logging-monitoring-agent
Review sensitive data in logs, audit gaps, log injection, weak monitoring, and missing critical action alerting.

## 28-sensitive-data-privacy-agent
Review PII exposure, data minimization, retention, masking, caching, and excessive data returns.

## 29-waf-firewall-assumption-agent
Review reliance on WAF/firewall/gateway-only controls and internal paths that bypass centralized controls.

## 30-diff-pr-review-agent
Review diffs/PRs for newly introduced security risks and regression risks.

## 31-exploit-chain-agent
Build safe, defensive exploit-chain narratives without destructive exploitation.

## 32-pattern-mining-agent
Generalize recurring bug patterns into reusable rules, playbooks, and memory entries.

## 33-exploitability-validator
Validate reachability, attacker control, source-to-sink, missing controls, realistic impact, and safe verification.

## 34-false-positive-validator
Challenge each candidate finding and mark false positives, hardening, or needs manual validation.

## 35-risk-scoring-agent
Assign severity, confidence, OWASP, CWE, exploitability, and business impact.

## 36-evidence-hygiene-agent
Ensure findings include file/function/route/role/source/sink/impact/remediation and redact secrets.

## 37-report-writer-agent
Create final developer, management, JSON, SARIF, and PR-comment outputs.

## 38-code-quality-agent
Review unsafe code quality patterns that hide security bugs: duplicated auth, confusing tenant logic, dead code.

## 39-architecture-review-agent
Review design-level security and maintainability issues: missing central auth, weak boundaries, direct DB access.

## 40-performance-review-agent
Review DoS/resource-exhaustion risks: unbounded query, N+1, regex, file parsing, large payloads.

## 41-error-handling-agent
Review stack trace leaks, user enumeration, fallback-to-allow, swallowed exceptions, and insecure defaults.

## 42-test-quality-agent
Review missing negative tests, authz tests, tenant tests, regression tests, and security control coverage.

## 43-maintainability-agent
Review hardcoded roles, repeated permission checks, deprecated security code, TODO/FIXME security debt.

## 44-semgrep-scan-agent
Run Semgrep rulesets and collect JSON/SARIF outputs for triage.

## 45-semgrep-rule-author-agent
Create custom Semgrep rules for recurring company bug patterns using test-first workflow.

## 46-semgrep-rule-test-agent
Validate Semgrep rules with positive/negative/sanitizer cases and semgrep --test/--validate.

## 47-semgrep-triage-agent
Triage Semgrep findings using context, reachability, source-to-sink, and false-positive checks.

## 48-harness-orchestrator-agent
Coordinate discovery, threat modeling, specialized lens review, verification, deduplication, reporting, and remediation proposal.

## 49-threat-modeling-agent
Create trust boundaries, attacker roles, sensitive assets, and abuse cases before scanning.

## 50-adversarial-verification-agent
Act as skeptical reviewer: prove or disprove candidate findings and challenge assumptions.

## 51-exploit-chain-reporting-agent
Report safe exploit chains such as IDOR + excessive data exposure or CI/CD injection + secret leakage.

## 52-remediation-proposal-agent
Suggest safe fixes without editing source code unless explicitly approved.

## 53-remediation-validation-agent
Validate whether developer fixes close original and bypass scenarios without regressions.

## 54-sarif-output-agent
Convert validated findings into SARIF and JSON outputs.

## 55-mtta-metrics-agent
Track review metrics, false-positive rate, lifecycle, and mean time to adapt/fix.

