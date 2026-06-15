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

For Codex, copy or symlink the desired skill folders into your Codex skills directory:

```bash
mkdir -p "${CODEX_HOME:-$HOME/.codex}/skills"
cp -R skills/cn-software-copyright "${CODEX_HOME:-$HOME/.codex}/skills/"
cp -R skills/fk-opencode "${CODEX_HOME:-$HOME/.codex}/skills/"
cp -R skills/duck-debug "${CODEX_HOME:-$HOME/.codex}/skills/"
```

For OpenCode or Claude-style runtimes, use the same `skills/<name>/SKILL.md` folders as the source of truth, then adapt the runtime-specific plugin metadata under `marketplace/`.

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

## License

MIT. See [LICENSE](LICENSE).
