# Install for OpenCode-Oriented Use

OpenCode can use these skills as prompt/workflow assets. Keep `skills/<name>/SKILL.md` as the canonical source.

Recommended usage:

1. Copy the desired skill folder into the skill location used by your OpenCode setup.
2. For `fk-opencode`, install and configure `fkoc` separately.
3. Keep authentication in environment variables or local config files outside this repository.

`fk-opencode` assumes a running OpenCode server, commonly:

```bash
opencode serve
fkoc status
```

Do not commit server passwords or local session databases.
