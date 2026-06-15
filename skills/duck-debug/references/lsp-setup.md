# LSP Setup

Semantic navigation helps verify declarations precisely.

## Preferred capabilities

- go to definition
- find references
- type hover
- find implementations

Agent environments may provide these directly or through MCP/LSP integration.

## Common language servers

- TypeScript/JavaScript: `typescript-language-server`
- Python: `pylsp` or `pyright`
- Go: `gopls`
- Rust: `rust-analyzer`

## Fallback patterns

| Need | Fallback |
|---|---|
| Go to definition | search for `def name`, `function name`, `fn name`, or class definitions |
| Find references | search the symbol and manually filter real call sites |
| Type info | read the declaration or function signature |
| Find implementations | search class/interface implementation patterns |

Fallback is noisier but compatible with the duck protocol.
