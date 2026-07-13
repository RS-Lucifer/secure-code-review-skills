# Usage

## Recommended Review Prompt

For more copyable prompts, see [Ready-to-Use Review Prompts](prompts.md).

```text
Use the secure-review skill. Review this application in detection-only mode.

Start with:
1. app profile,
2. attack surface,
3. role matrix,
4. permission matrix,
5. selected playbooks,
6. candidate findings,
7. validation gate,
8. final report.

Do not edit source code. Redact secrets.
```

## Review Flow

1. Confirm scope and authorization.
2. Profile the application stack and runtime.
3. Map attack surface: routes, APIs, jobs, webhooks, queues, file handlers, admin paths, and mobile paths.
4. Map authentication, sessions, JWT, OAuth/OIDC, SSO, MFA, API keys, and service-to-service auth.
5. Map roles, permissions, tenants, objects, and field-level access.
6. Build trust boundaries and threat model.
7. Select relevant vulnerability playbooks and safe static scans.
8. Collect candidate findings only.
9. Apply the validation gate and remove false positives.
10. Produce developer and management reports.

## Validation Gate

A candidate finding should not become final until these questions are answered:

1. Is the affected code reachable from a real entry point?
2. Is attacker-controlled or lower-privileged input involved?
3. Is there a proven source-to-sink path or missing authorization/security control?
4. Are relevant controls absent, weak, or bypassable?
5. Is impact real in this application's deployment and role model?
6. Is there concrete evidence for file, function, route/API/job, role, source, sink, and impact?
7. Is the finding not blocked by centralized middleware, framework guards, row-level security, gateway controls, or another effective mitigation?

## Output Expectations

Each final finding should include:

- status
- severity
- confidence
- OWASP/CWE mapping when applicable
- affected component, file, function/class, and route/API/job
- affected role and attacker role required
- evidence
- source-to-sink or missing-control flow
- scenarios checked
- bypass review
- false-positive review
- realistic impact
- remediation
- safe retest steps
