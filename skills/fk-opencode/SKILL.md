---
name: fk-opencode
description: Use when needing a second opinion, parallel codebase research, independent diff review, or to offload a bounded subtask to another OpenCode-backed agent session.
---

# fk-opencode

Use `fkoc` to control a long-running OpenCode agent session. Treat it as a bounded delegation channel, not as a replacement for your own verification.

## Prerequisites

- OpenCode server is running, commonly with `opencode serve`.
- `fkoc` is installed and configured in the user's environment.
- Any server password or authentication token is stored outside the repository, in local config or environment variables.

## Commands

| Command | Purpose |
|---|---|
| `fkoc status` | Check server health and current session info. |
| `fkoc ask "<message>"` | Send a task and wait for the final text reply. |
| `fkoc watch -n 10` | Show recent messages from the current session. |
| `fkoc abort` | Abort the current in-progress agent turn. |
| `fkoc use-session <id>` | Switch to another OpenCode session. |

## Usage Patterns

### Get a second opinion

```bash
fkoc ask "Review this architecture. Focus on edge cases, failure modes, and missing tests: <summary>"
```

### Offload research

```bash
fkoc ask "Search the codebase for all uses of TransportHub. Return file:line call sites and one sentence per use."
```

### Run an independent review

```bash
fkoc ask "Review the current diff for behavioral regressions. Prioritize concrete bugs with file:line references."
```

### Check progress

```bash
fkoc watch -n 10
```

### Stop a runaway task

```bash
fkoc abort
```

## Constraints

- `fkoc ask` is synchronous and may block until the OpenCode agent finishes or times out.
- `fkoc ask` returns final text only. Do not assume you have seen tool calls, intermediate reasoning, or edits.
- `fkoc watch` depends on local session storage and may only work on the same machine as the OpenCode server.
- If authentication is required, rely on the user's local `fkoc` config or environment variables. Never write credentials into prompts, scripts, or this repository.

## Delegation Discipline

When delegating:

1. Give the other agent a bounded task.
2. Include exact files, commands, or questions when known.
3. Ask for evidence, not just conclusions.
4. Verify important claims yourself before acting on them.
5. Treat the other agent's answer as advisory unless it includes reproducible evidence.

## Error Handling

- Exit code `0`: command succeeded.
- Exit code `1`: connection error, agent error, or timeout.
- On failure, inspect stderr and decide whether to retry, run `fkoc status`, or continue locally.
