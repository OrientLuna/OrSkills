# Debug Tools Setup

Use the strongest available runtime inspection tool. Prefer debuggers over speculation.

## DAP CLI

Check:

```bash
command -v dap && dap --version
```

Install options vary by environment:

```bash
brew install AlmogBaku/tap/dap
go install github.com/AlmogBaku/debug-skill/cmd/dap@latest
```

The `dap` CLI is provided by [AlmogBaku/debug-skill](https://github.com/AlmogBaku/debug-skill) (MIT).

Each language may need its own adapter.

## Native fallbacks

### Python

```bash
python -m pdb script.py
```

Useful commands: `n`, `s`, `p <expr>`, `w`, `b <file:line>`, `c`.

### Go

```bash
dlv debug ./cmd/app -- --arg1 value
```

Useful commands: `break`, `continue`, `next`, `step`, `print`, `stack`.

### Node.js

```bash
node --inspect-brk script.js
```

Use Chrome DevTools Protocol or an agent-accessible inspector when available.

### C, C++, Rust

```bash
gdb ./binary
lldb ./binary
```

Use breakpoints, stack inspection, and variable printing.

## If no debugger is available

Add focused logging, rerun the failing case, then remove the logging after diagnosis.

Do not use broad logging dumps when one targeted value answers the hypothesis.
