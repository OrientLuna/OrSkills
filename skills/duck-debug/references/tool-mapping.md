# Tool Mapping

Use the right verification tool for each declaration.

| Agent says | Primary tool | Fallback |
|---|---|---|
| "Design doc says format is X" | read the design doc at the relevant section | same |
| "This function's implementation is..." | semantic go-to-definition, then read | search for the definition and read directly |
| "Who calls this function" | semantic find-references | search the function name and filter real call sites |
| "This interface has implementations A, B, C" | semantic go-to-implementation | search interface/class names |
| "This variable's type is..." | hover or type definition | read the declaration line |
| "This variable should be W at runtime" | debugger eval or inspect | add focused logging and rerun |
| "Data transforms from A to B here" | read code plus debugger before/after | read code plus manual trace |
| "The call stack goes through X -> Y -> Z" | debugger stack | read and trace calls manually |
| "Config file says V" | read the config file | same |
| "This error only occurs under X" | conditional breakpoint | add a focused condition/log and rerun |

## Reading large output

Declare what you are looking for before reading large output.

Examples:

```bash
grep -B 5 "ERROR" build.log
grep -E "(PASS|FAIL|ok |FAILED)" test-output.txt | tail -20
```

Do not dump entire logs into context when a targeted extraction would answer the question.
