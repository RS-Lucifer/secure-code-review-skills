# Installation

This repository ships two package formats:

- Claude Code: `packages/claude-code/secure-review-claude-code`
- Codex: `packages/codex/secure-review-codex`

## Claude Code

### Project-local install

Use this when a single application repository should carry the review workflow.

```bash
cp -R packages/claude-code/secure-review-claude-code/.claude /path/to/app/.claude
cd /path/to/app
claude
```

Run:

```text
/secure-review Review this application in detection-only mode. Start with app profiling and role mapping.
```

### Personal install

Use this when you want the skill available across your local Claude Code work.

```bash
mkdir -p ~/.claude/skills
cp -R packages/claude-code/secure-review-claude-code/.claude/skills/secure-review ~/.claude/skills/secure-review
```

If you want the packaged specialist agents too, copy them into a project:

```bash
mkdir -p /path/to/app/.claude/agents
cp -R packages/claude-code/secure-review-claude-code/.claude/agents/* /path/to/app/.claude/agents/
```

## Codex

### Project-local install

```bash
cp packages/codex/secure-review-codex/AGENTS.md /path/to/app/AGENTS.md
cp -R packages/codex/secure-review-codex/.agents /path/to/app/.agents
cd /path/to/app
codex
```

Run:

```text
Use the secure-review skill. Review this application in detection-only mode. Start with app profiling and role/permission mapping.
```

### Optional Semgrep

Install Semgrep only if it is approved for your environment.

```bash
python -m pip install semgrep
```

Then ask the agent to run the safe Semgrep workflow in detection-only mode.
