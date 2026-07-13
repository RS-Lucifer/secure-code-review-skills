# Role and Permission Mapping

## Role Discovery
Search for: role, roles, permission, permissions, authority, authorities, scope, scopes, claim, claims, policy, guard, middleware, decorator, tenant, org, account, group, admin, support, operator, service account.

## Role Matrix Template

| Role | Source | Privilege | Main Permissions | Sensitive Actions | Risk Notes |
|---|---|---:|---|---|---|
| Guest | unauthenticated | 0 | public routes | none | check public exposure |
| User | DB/JWT/IdP | 1 | own objects | profile/order actions | check IDOR/BOLA |
| Manager | DB/JWT/IdP | 2 | team objects | approve/reject | check workflow bypass |
| Admin | DB/JWT/IdP | 3 | user/settings management | critical actions | check vertical escalation |
| Support/Operator | internal role | 2/3 | customer support actions | impersonation/reset/view data | check support abuse |
| Service account | IAM/secret/token | system | service-to-service | backend operations | check least privilege |

## Permission Matrix Template

| Route / Function | Guest | User | Manager | Admin | Service Account | Object Check | Tenant Check | Notes |
|---|---|---|---|---|---|---|---|---|
| GET /api/users/{id} | No | Own only | Team only | Yes | Yes | user.id == auth.user.id | tenant match | IDOR risk if absent |

## High-Risk Questions
- Is role trusted from request body, query, header, or mutable JWT claim?
- Are admin checks only in frontend?
- Are object and tenant checks centralized and consistently applied?
- Are old API versions missing new authorization checks?
- Can support/operator roles access cross-tenant data without approval or audit?
- Do background jobs or webhooks bypass user-facing permission checks?
