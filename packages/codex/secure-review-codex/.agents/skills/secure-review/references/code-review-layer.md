# Code Review Layer

## Goal
Add code-quality and architecture intelligence to the security review. Do not waste time on formatting or linter-only issues unless they affect security, correctness, reliability, or maintainability.

## Review Focus
- duplicated authorization logic
- inconsistent tenant checks
- frontend-only security decisions
- direct DB access from controllers
- unsafe error handling and fallback-to-allow
- unbounded queries, file processing, regex, payload parsing
- async/concurrency race risks
- missing negative tests for auth, roles, tenant isolation, and input validation
- hardcoded roles, deprecated security code, TODO/FIXME security debt

## Feedback Style
Be specific, actionable, respectful, and developer-friendly. Explain risk and safer pattern. Separate blocking security issues from suggestions.
