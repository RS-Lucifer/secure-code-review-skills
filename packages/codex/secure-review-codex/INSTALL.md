# Install: Codex Secure Review Skill

Codex reads skills from `.agents/skills` in your repository path and reads `AGENTS.md` for project guidance.

## Project-local install
Copy `AGENTS.md` and `.agents/` into the root of the application repository:

```bash
cp secure-review-codex/AGENTS.md /path/to/app/AGENTS.md
cp -R secure-review-codex/.agents /path/to/app/.agents
cd /path/to/app
codex
```

Then ask:

```text
Use the secure-review skill. Review this application in detection-only mode. Start with app profiling and role/permission mapping.
```

## Personal/global guidance only
For global Codex instructions:

```bash
mkdir -p ~/.codex
cp secure-review-codex/AGENTS.md ~/.codex/AGENTS.md
```

For the skill itself, prefer project-local `.agents/skills/secure-review` so teams can version it with each repo.

## Verify Codex sees instructions
Inside the repo:

```bash
codex "Summarize the loaded project instructions and available secure-review workflow."
```

## Optional Semgrep
Install Semgrep separately if your company allows it:

```bash
python3 -m pip install semgrep
```

Then ask Codex to run the safe Semgrep script in detection-only mode.
