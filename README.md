# OrSkills

OrSkills is a personal collection of agent skills for Codex, Claude-style skill runtimes, and OpenCode-oriented workflows.

The repository is organized as a portable skill library: each skill lives under `skills/<name>/` with its own `SKILL.md`, optional `references/`, optional `assets/`, and optional `agents/openai.yaml` UI metadata.

## Skills

| Skill | Purpose |
|---|---|
| `cn-software-copyright` | Draft, review, and package Chinese software copyright registration materials from a real codebase. |
| `fk-opencode` | Delegate research, review, or parallel investigation to a persistent OpenCode agent through `fkoc`. |
| `duck-debug` | Use a rubber-duck debugging protocol that forces design intent, data-flow tracing, and verified hypotheses. |

## Install

Clone the repository:

```bash
git clone https://github.com/OrientLuna/OrSkills.git
cd OrSkills
```

### Codex

```bash
mkdir -p "${CODEX_HOME:-$HOME/.codex}/skills"
cp -R skills/* "${CODEX_HOME:-$HOME/.codex}/skills/"
```

See [docs/install-codex.md](docs/install-codex.md) for details.

### Claude Code

```bash
mkdir -p ~/.claude/skills
cp -R skills/* ~/.claude/skills/
```

### OpenCode

Copy the desired skill folders into your OpenCode skill location. For `fk-opencode`, install and configure `fkoc` separately.

See [docs/install-opencode.md](docs/install-opencode.md) for details.

### Install a single skill

Replace `skills/*` with the specific folder:

```bash
cp -R skills/duck-debug ~/.claude/skills/
```

## Update

Pull the latest changes and overwrite installed skills:

```bash
cd OrSkills
git pull
cp -R skills/* ~/.claude/skills/   # or your Codex / OpenCode path
```

Check the current version in `marketplace/claude-plugin.json` or `marketplace/opencode.json`.

## Validate

Run both checks before publishing:

```bash
scripts/validate-skills.sh
scripts/scan-secrets.sh
```

The checks look for missing frontmatter, invalid skill names, machine-specific paths, and common secret patterns.

## Publishing Notes

- Keep skill instructions generic and portable.
- Keep API keys in environment variables only.
- Keep private local directories, generated build output, and experimental source trees out of the repository.
- Add larger procedural details under `references/` so `SKILL.md` stays concise.

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for the fork, validate, and pull-request workflow.

## License

MIT. See [LICENSE](LICENSE).
