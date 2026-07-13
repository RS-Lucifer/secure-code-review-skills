# Secure Review Workflow

## Phase 0 — Scope and Rules
- Confirm repository/app scope.
- Default detection-only.
- No destructive commands.
- No production exploitation.
- Redact secrets.

## Phase 1 — Application Profiling
Collect: app type, languages, frameworks, package managers, databases, auth providers, cloud provider, CI/CD system, mobile frameworks, deployment model, sensitive data, business-critical flows.

## Phase 2 — Attack Surface, Role, Permission, and Trust Boundary Mapping
Map:
- HTTP routes, APIs, GraphQL resolvers, RPC handlers
- admin routes, support flows, mobile APIs, deeplinks
- webhooks, queues, jobs, schedulers
- upload/download handlers
- cloud functions and service-to-service calls
- roles, role sources, role hierarchy
- permission checks: route, function, object, tenant, field, workflow
- trust boundaries: frontend/backend, mobile/API, service/service, CI/CD/cloud, cloud/database

Required outputs: app profile, route map, role matrix, permission matrix, trust boundaries, selected playbooks.

## Phase 3 — Threat Model
Identify attackers, assets, abuse cases, high-risk flows, and controls.

## Phase 4 — Deterministic Tooling
Run safe static checks where available: Semgrep, secrets, SCA/SBOM, IaC, mobile static checks. Scanner output is candidate evidence only, not final truth.

## Phase 5 — Agent Review
Run relevant focused agents. Each agent returns candidate findings only.

## Phase 6 — Validation
Use the 7-question validation gate, false-positive review, bypass review, and adversarial verification.

## Phase 7 — Reporting
Generate developer report, management summary, JSON, SARIF, retest steps, and lessons learned.
