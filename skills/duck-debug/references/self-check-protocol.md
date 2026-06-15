# Self-Check Protocol

Use these questions when stuck or when the current explanation feels too easy.

## After design intent

- Did I quote a specific source, or am I working from memory?
- Does the explanation cover happy paths and error paths?
- Are there edge cases in the source that I skipped?

## After data-flow tracing

- Did I trace every hop from entry to failure?
- Did I verify each transformation?
- Are there branches or conditionals I did not explain?

## After hypothesis testing

- Can the hypothesis explain all observed symptoms?
- What would prove the hypothesis wrong?
- Did I check disconfirming evidence, or only confirming evidence?

## After perspective shift

- Is this genuinely a new perspective?
- Have I checked the simplest explanation?
- Am I explaining the code that exists, or the code I expected to exist?

## Anti-rationalization table

| Thought | Required check |
|---|---|
| "It's probably an environment issue" | Verify versions, paths, env vars, and config. |
| "This API probably does not support it" | Read the relevant API docs or source. |
| "I've tried everything" | List attempts; if fewer than three, keep going. |
| "The code looks correct" | Explain it line by line against observed behavior. |
| "It must be a race condition" | Reproduce or instrument the timing assumption. |
| "This worked before" | Check git history, recent edits, and dependency changes. |
| "The test is flaky" | Prove flakiness; otherwise treat it as a real signal. |
| "It's a known issue" | Find the issue or documentation. |
| "I need more context from the user" | First exhaust what local tools can discover. |
| "This is a framework bug" | Inspect the framework behavior at the exact failure point. |
