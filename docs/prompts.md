# Ready-to-Use Review Prompts

Use these prompts in Claude Code or Codex after installing the `secure-review` skill.

Recommended sequence:

1. Run the master full application review prompt.
2. Run the false-positive reduction prompt against the candidate findings.
3. Run the final report generation prompt from validated findings only.

## 1. Master Prompt: Full Application Review

```text
Use the secure-review skill.

Review this application end to end in detection-only mode. Do not modify code unless I explicitly approve.

Your goal is to find real, reachable, exploitable, evidence-backed security vulnerabilities with the lowest possible false-positive rate.

Start with:

1. Application profiling
2. Technology stack detection
3. Attack surface mapping
4. Authentication flow mapping
5. Role mapping
6. Permission matrix creation
7. Trust boundary mapping
8. Data flow mapping
9. Vulnerability playbook selection
10. Deterministic scan review
11. Specialist agent review
12. Exploitability validation
13. False-positive validation
14. Final reporting

Do not start reporting vulnerabilities until you complete attack surface, role, permission, and trust-boundary mapping.

For every candidate finding, validate:

1. Is the code reachable?
2. Is attacker-controlled input involved?
3. Is there a real source-to-sink path?
4. Is authentication required?
5. Is authorization missing, weak, or bypassable?
6. Is there existing validation, sanitization, middleware, or framework protection?
7. Is the impact realistic in this application?
8. Is the issue exploitable without relying only on assumptions?
9. Is there file, function, route/API, role, source, sink, and missing-control evidence?
10. Is this not just scanner output or theoretical risk?

Classify each issue as:

- TRUE POSITIVE
- LIKELY TRUE POSITIVE
- NEEDS MANUAL VALIDATION
- FALSE POSITIVE
- HARDENING

Only include TRUE POSITIVE and LIKELY TRUE POSITIVE in the final vulnerability section.

Move weak, theoretical, scanner-only, or uncertain issues to a separate section called:

Needs Manual Validation / Hardening Notes

For each confirmed finding, provide:

- Title
- Severity
- Confidence
- OWASP category
- CWE
- Affected file
- Affected function
- Affected route/API/job
- Affected role
- Attacker role required
- Source
- Sink
- Missing security control
- Evidence
- Exploit scenario, safe and high-level
- Bypass scenarios checked
- False-positive review
- Business impact
- Technical impact
- Remediation
- Retest steps

Do not report:

- generic best practices
- formatting issues
- lint-only issues
- theoretical bugs without reachability
- dependency issues without exploitability or context
- scanner findings without manual validation
- issues already mitigated by centralized middleware or framework controls
- WAF-only findings unless backend impact is proven

Focus deeply on:

- broken access control
- IDOR / BOLA
- tenant isolation bypass
- role bypass
- admin boundary bypass
- authentication flaws
- JWT/OAuth/OIDC issues
- injection
- SSRF
- file upload and path traversal
- insecure deserialization
- business logic flaws
- workflow abuse
- mass assignment
- excessive data exposure
- secrets
- cloud/IAM issues
- CI/CD issues
- mobile API authorization gaps
- insecure error handling
- race conditions
- DoS/resource exhaustion
- vulnerable dependencies with real impact

Before final output, run a strict false-positive review and remove anything that does not have strong evidence.
```

## 2. Maximum Vulnerability Discovery

```text
Use the secure-review skill.

Perform a deep source code security review of this application. I want maximum security coverage, but do not include false positives in the final report.

Use multiple specialist agents where useful:

- App Profiler Agent
- Architecture Mapper Agent
- Route/API Mapper Agent
- Auth Flow Agent
- Role Mapping Agent
- Permission Matrix Agent
- Access Control Agent
- Tenant Isolation Agent
- Object Ownership / IDOR Agent
- Admin Boundary Agent
- Business Logic Agent
- Workflow Abuse Agent
- Injection Agent
- SSRF Agent
- File Security Agent
- Deserialization Agent
- Secrets Agent
- Crypto Agent
- API Security Agent
- GraphQL Agent, if GraphQL exists
- Mobile Security Agent, if mobile code or mobile APIs exist
- Cloud Security Agent, if cloud/IaC exists
- CI/CD Security Agent
- Supply Chain / SCA Agent
- WAF / Firewall Assumption Agent
- Exploitability Validator Agent
- False Positive Validator Agent
- Evidence Hygiene Agent
- Report Writer Agent

Each agent must return only candidate findings, not final findings.

After all agents finish, deduplicate all findings and pass them through:

- exploitability validation
- reachability validation
- source-to-sink validation
- authorization validation
- existing-control validation
- false-positive validation
- evidence hygiene validation

Only final validated findings should appear in the final report.

For each vulnerability type, check at least:

- normal scenario
- alternate scenario
- bypass scenario

Examples:

Access control:
- URL object ID tampering
- request body object ID tampering
- old API/mobile API/admin API bypass

Injection:
- direct input to sink
- encoded/nested input
- framework-specific bypass

SSRF:
- direct URL input
- webhook/import/parser URL input
- cloud metadata/internal service bypass

File security:
- upload filename/path
- archive extraction
- path normalization bypass

Business logic:
- skipped workflow step
- direct status update
- race/replay scenario

Final output must separate:

- Confirmed vulnerabilities
- Likely vulnerabilities
- Needs manual validation
- Hardening notes
- False positives removed

Do not inflate severity. Do not report anything without evidence.
```

## 3. False-Positive Reduction

```text
Use the secure-review skill.

Review all current candidate findings and aggressively remove false positives.

For every finding, verify:

1. Is the affected file part of the real application runtime?
2. Is the vulnerable function reachable from an external, internal, mobile, admin, job, queue, webhook, or service-to-service entry point?
3. Is the input actually attacker-controlled?
4. Is there a complete source-to-sink path?
5. Is the dangerous sink actually reachable with attacker-controlled data?
6. Is the issue blocked by validation, sanitization, escaping, encoding, parameterization, authorization middleware, tenant filtering, row-level security, framework defaults, or cloud/IAM policy?
7. Is authentication required?
8. What attacker role is required?
9. Can a lower-privileged role abuse it?
10. Is the business impact real?
11. Is there exact evidence: file, function, route/API, role, source, sink, and missing control?
12. Would a senior AppSec reviewer accept this finding?

Classify each finding as:

- TRUE POSITIVE
- LIKELY TRUE POSITIVE
- NEEDS MANUAL VALIDATION
- FALSE POSITIVE
- HARDENING

Rules:

- If reachability is not proven, mark as NEEDS MANUAL VALIDATION.
- If attacker control is not proven, mark as FALSE POSITIVE or HARDENING.
- If source-to-sink is incomplete, mark as NEEDS MANUAL VALIDATION.
- If centralized security control blocks the issue, mark as FALSE POSITIVE.
- If impact is only theoretical, mark as HARDENING.
- If scanner output is not manually verified, do not mark TRUE POSITIVE.
- If evidence is missing, do not include it in confirmed findings.

Final output should include only high-confidence findings in the confirmed section.
```

## 4. Role, Permission, and Access-Control Bugs

```text
Use the secure-review skill.

Focus on role mapping, permission mapping, and access-control vulnerabilities.

First create:

- Role matrix
- Permission matrix
- Route/API access matrix
- Object ownership model
- Tenant/org/account boundary map
- Admin/support/service-account boundary map

Identify all roles from:

- code
- config
- database models
- JWT claims
- OAuth/OIDC scopes
- API keys
- service accounts
- cloud IAM
- frontend route guards
- backend middleware
- admin modules

Then review for:

- IDOR / BOLA
- broken function-level authorization
- horizontal privilege escalation
- vertical privilege escalation
- tenant isolation bypass
- object ownership bypass
- field-level authorization bypass
- admin boundary bypass
- support role abuse
- service account over-permission
- old API authorization bypass
- mobile API authorization gap
- frontend-only authorization
- workflow approval bypass

For every suspected issue, prove:

- affected route/API/function
- required role
- attacker role
- object being accessed
- missing ownership check
- missing tenant check
- missing role check
- whether middleware already protects it
- whether database/repository layer enforces filtering

Only report findings where authorization weakness is clearly proven.
```

## 5. Final Report Generation

```text
Use the secure-review skill.

Generate the final application security review report from validated findings only.

Do not include unvalidated scanner output in the confirmed findings section.

Report structure:

1. Executive Summary
   - Application reviewed
   - Review scope
   - Review mode: detection-only
   - Overall risk rating
   - Number of confirmed findings
   - Number of high-risk findings
   - Key business risks
   - Most affected components

2. Application Profile
   - Technology stack
   - App type
   - Authentication model
   - Authorization model
   - Roles identified
   - Data sensitivity
   - Cloud/deployment context
   - Main trust boundaries

3. Attack Surface
   - Routes/APIs
   - Admin functions
   - Mobile APIs, if any
   - Background jobs
   - Webhooks
   - File handlers
   - External integrations
   - CI/CD paths
   - Cloud resources

4. Role and Permission Matrix Summary
   - Summarize important roles and permission risks.

5. Confirmed Vulnerabilities
   - Title
   - Status
   - Severity
   - Confidence
   - OWASP
   - CWE
   - Affected file
   - Affected function
   - Affected route/API/job
   - Affected role
   - Attacker role required
   - Source
   - Sink
   - Missing control
   - Evidence
   - Exploit scenario
   - Bypass scenarios checked
   - False-positive review
   - Impact
   - Remediation
   - Retest steps

6. Likely Vulnerabilities
   - Include only issues with strong evidence but one missing runtime confirmation.

7. Needs Manual Validation
   - Include uncertain issues separately.

8. Hardening Notes
   - Include low-risk improvements separately.

9. False Positives Removed
   - Summarize removed findings and why they were removed.

10. Developer Remediation Plan
    - Prioritized fixes.

11. Management Summary
    - Business-friendly summary with risk and priority.

12. Retest Checklist
    - Step-by-step validation checklist.
```

