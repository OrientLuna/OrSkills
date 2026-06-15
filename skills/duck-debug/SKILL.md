---
name: duck-debug
description: Use for bugs, crashes, exceptions, failing tests, wrong output, regressions, unexpected behavior, or explicit /duck requests. Especially useful when the agent is guessing without evidence, skipping root-cause analysis, or claiming a fix without rerunning the failing case.
---

# Duck Debug

Debug by explaining the system precisely to a silent duck. The duck does not answer. The value is that clear explanation exposes gaps between design intent and actual behavior.

## Required references

Read these before acting:

1. [references/tool-mapping.md](references/tool-mapping.md) for which tool verifies each type of claim.
2. [references/self-check-protocol.md](references/self-check-protocol.md) for anti-rationalization checks.

If debugger setup matters, read [references/debug-tools-setup.md](references/debug-tools-setup.md). If semantic navigation matters, read [references/lsp-setup.md](references/lsp-setup.md).

## Explanation Protocol

Follow the four steps in order. Each step must produce an artifact before continuing.

### 1. Explain design intent

Find and read the relevant design document, specification, API contract, function signature, type definition, or test expectation.

Explain:

- what the module or function is supposed to do
- what data flow is expected
- what invariants should hold

Required artifact: a source quote or file:line reference plus a concise explanation of expected behavior.

Do not rely on memory when a source can be read.

### 2. Trace actual data flow

Trace from the data entry point to the observed failure.

For each hop, record:

- location
- transformation
- expected value or state
- actual value or state when available
- verification method

Required artifact: hop-by-hop data flow with file:line references and tool verification.

### 3. State hypothesis, then verify

Before looking, state:

1. the hypothesis
2. what you expect to observe if it is correct
3. what you expect to observe if it is wrong

Then verify with tools and compare the actual result against both expectations.

Required artifact: hypothesis, expected observations, command or inspection used, actual output, and conclusion.

### 4. Shift perspective

If steps 1-3 do not find the bug:

- invert the hypothesis
- trace backward from the failure
- start from a different entry point
- inspect an unexamined branch, caller, config, or error path

Then rerun steps 1-3 with the new framing.

## Hard Constraints

- Do not guess. Verify claims with tools.
- Do not skip design intent.
- Make every declaration refutable.
- Declare expected observations before looking.
- Do not reread files without a new question or a file change.
- Do not call something "fixed" until the failing case has been rerun.

## Output Modes

Default: quiet. Execute the protocol internally and report the final debug conclusion, fix, and verification.

Verbose: show each declaration, verification, and gap analysis.

Teaching: verbose plus why each verification tool was chosen.

## Escalation

If two complete rounds of the protocol produce no new information, prepare a Duck Debug Report:

```markdown
## Duck Debug Report

### Problem Statement
[one-line bug description]

### Step 1: Design Intent
[source references, expected behavior, actual behavior]

### Step 2: Data Flow Trace
| Hop | Location | Transform | Expected | Actual | Verified |
|---|---|---|---|---|---|

### Step 3: Hypotheses Tested
1. [hypothesis] -> [confirmed or ruled out, with evidence]

### Step 4: Perspectives Tried
- [perspective]: [result]

### Current Blocker
[what remains unexplained]

### Code Context
[only relevant snippets or file references]
```

Then either:

- ask a subagent or external reviewer for a new angle
- export the report to a human
- use a locally configured expert API if the user has explicitly configured one

Do not place API keys in this repository. If using an expert API, read the key from an environment variable named in local config.

## Optional local config

Users may keep local config outside this repository, for example at a path such as `~/.duck/config.json`. Use [assets/config.example](assets/config.example) as a template only.

If no config exists, proceed with defaults:

- no API expert
- human report export allowed when useful
- native read/search/debugger tools as available
