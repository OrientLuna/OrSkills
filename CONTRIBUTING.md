# Contributing

Bug fixes, new skills, improved references, and better docs are all welcome.

## Fork and clone

1. Fork the repository on GitHub.
2. Clone your fork and add the upstream remote:

```bash
git clone git@github.com:YOUR_USERNAME/OrSkills.git
cd OrSkills
git remote add upstream https://github.com/OrientLuna/OrSkills.git
```

## Make changes

Each skill lives under `skills/<name>/`. Follow the existing structure:

- `SKILL.md` — required, with YAML frontmatter (`name` + `description`)
- `references/` — optional, for detailed reference material
- `assets/` — optional, for templates and examples
- `agents/openai.yaml` — optional, for UI metadata

Keep skills portable: no absolute paths, no real secrets, no machine-specific assumptions.

Description field convention: write trigger conditions only ("Use when..."), do not summarize the skill's workflow.

## Validate before submitting

```bash
scripts/validate-skills.sh   # frontmatter, naming, structure
scripts/scan-secrets.sh       # paths, API keys, tokens
```

Both must pass. If the secret scanner flags your content, remove or parameterize the value.

## Submit a pull request

```bash
git checkout -b your-branch-name
git add -A
git commit -m "describe your change"
git push origin your-branch-name
```

Open a PR against `main`. Reference any relevant issues in the description.

## Add a new skill

1. Create `skills/your-skill-name/SKILL.md`.
2. Register it in `marketplace/opencode.json` and `marketplace/openai-skills.yaml`.
3. Run both validation scripts.
4. Add the skill to the table in `README.md`.

## Sync with upstream

```bash
git fetch upstream
git merge upstream/main
```
