# Project Instructions for Codex

Use the `secure-review` skill for authorized defensive source code security review.

## Default mode
Detection-only. Do not modify source code, run destructive commands, expose secrets, or perform active exploitation unless explicitly approved by the user and scoped to an authorized test environment.

## Standard review flow
1. Profile the application.
2. Map attack surface.
3. Map authentication, roles, and permissions.
4. Build trust boundaries and threat model.
5. Select relevant vulnerability playbooks.
6. Run safe deterministic scans when available.
7. Use subagents only when explicitly requested or when the task asks for parallel review.
8. Validate all candidate findings using the 7-question validation gate.
9. Remove false positives.
10. Produce developer-friendly and management-friendly reports.

## Review commands to prefer
- Ask for `secure-review` when doing full app review.
- Use `/review` with custom instructions from `.agents/skills/secure-review/references/report-templates.md` for PR/diff review.
- Use subagents for focused review only when the user wants broad parallel analysis.

## Evidence requirements
A finding needs file, function, entry point, attacker-controlled source, missing control or dangerous sink, role/tenant/object impact when applicable, safe retest steps, and remediation.
