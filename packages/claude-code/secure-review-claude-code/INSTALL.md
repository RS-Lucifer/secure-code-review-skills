# Install: Claude Code Secure Review Skill

## Option A — Project-local install
Copy the `.claude/` folder into the root of the application repository you want to review:

```bash
cp -R secure-review-claude-code/.claude /path/to/app/.claude
cd /path/to/app
claude
/secure-review
```

## Option B — Personal/global install
Copy only the skill folder into your personal Claude skills directory:

```bash
mkdir -p ~/.claude/skills
cp -R secure-review-claude-code/.claude/skills/secure-review ~/.claude/skills/secure-review
claude
/secure-review
```

For subagents, copy `.claude/agents/` into the project `.claude/agents/` folder.

## Optional settings
Review `.claude/settings.example.json`. If it matches your policy, copy it to `.claude/settings.json`:

```bash
cp .claude/settings.example.json .claude/settings.json
```

## Test
Inside a repo:

```bash
claude
/secure-review Review this application in detection-only mode. Start with app profiling and role mapping.
```
