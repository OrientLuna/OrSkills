# Install in Codex

Copy or symlink the skill directories into the Codex skills directory.

```bash
mkdir -p "${CODEX_HOME:-$HOME/.codex}/skills"
cp -R skills/cn-software-copyright "${CODEX_HOME:-$HOME/.codex}/skills/"
cp -R skills/fk-opencode "${CODEX_HOME:-$HOME/.codex}/skills/"
cp -R skills/duck-debug "${CODEX_HOME:-$HOME/.codex}/skills/"
```

Start a new Codex session after installation so skill metadata is loaded.

To install only one skill, copy only that skill folder.
