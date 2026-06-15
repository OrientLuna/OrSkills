# OrSkills repository design

## Goal

Create a personally maintained agent skill collection that is easy to publish, copy, install, and review. The first release contains three skills:

- Chinese software copyright submission drafting and review
- OpenCode delegation through the `fkoc` CLI
- Duck-style debugging protocol

## Repository shape

Use a multi-skill collection layout:

```text
skills/<skill-name>/SKILL.md
skills/<skill-name>/references/
skills/<skill-name>/agents/openai.yaml
docs/
scripts/
marketplace/
```

This matches the practical parts of Claude/OpenAI skill repositories: every skill remains self-contained, while the repository root provides installation, publishing, and validation docs.

## Portability rules

- Do not include machine-specific absolute paths.
- Do not include real API keys, tokens, cookies, or local service passwords.
- Keep example configuration clearly marked as example-only.
- Prefer relative paths inside skill instructions.
- Keep generated or experimental source repositories out of the collection unless a file is required by a skill.

## First-round skill decisions

`cn-software-copyright` is migrated as a mature Codex skill with its reference files and OpenAI UI metadata.

`fk-opencode` remains a small tool workflow skill. It documents the `fkoc` commands and their constraints without assuming a local server password or hardcoded endpoint beyond the OpenCode default.

`duck-debug` is a sanitized derivative of the duck debugging workflow. It keeps the explanation protocol, verification discipline, and optional references. It avoids assuming a specific home directory and ships only an example config.

## Validation

The repository includes scripts to validate skill frontmatter and scan for common accidental leaks. These scripts are intentionally simple so they can run in minimal environments.
