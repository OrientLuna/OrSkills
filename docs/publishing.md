# Publishing Checklist

Before publishing this repository or sharing a release:

1. Run `scripts/validate-skills.sh`.
2. Run `scripts/scan-secrets.sh`.
3. Check `git status --short` for unintended generated files.
4. Review each `SKILL.md` for local-only assumptions.
5. Review `marketplace/` metadata for stale version numbers or private links.

Do not publish:

- Real API keys or tokens
- Local absolute paths
- Private server passwords
- Session databases
- Large experimental repositories copied only as background reference

Example config files are allowed when they clearly use environment variable names instead of secret values.
