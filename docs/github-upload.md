# GitHub Upload

The repository is ready to push from a local git checkout.

## Option A: GitHub CLI

```bash
gh auth login
gh repo create secure-code-review-skills --public --source . --remote origin --push
```

For a private repository, replace `--public` with `--private`.

## Option B: Existing GitHub Repository

Create an empty repository on GitHub, then run:

```bash
git remote add origin https://github.com/YOUR-USERNAME/secure-code-review-skills.git
git push -u origin main
```

## GitHub Pages

This repo includes `.github/workflows/pages.yml`. After pushing:

1. Open the GitHub repository.
2. Go to `Settings` -> `Pages`.
3. Set source to `GitHub Actions`.
4. Run or wait for the `Deploy GitHub Pages` workflow.

The Pages site is served from the `docs/` directory.
