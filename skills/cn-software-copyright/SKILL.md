---
name: cn-software-copyright
description: Use when an existing codebase needs to become submission-ready Chinese software copyright (软著) materials — drafting the 说明书, selecting source attachment within line-count limits, creating architecture diagrams, filling the 登记表, or cross-checking consistency across deliverables.
---

# Chinese software copyright submission workflow

Produce three aligned deliverables:

1. `说明书` or `软件设计说明书`
2. `源程序附件` or `源程序清单`
3. `登记表填表稿`

Treat the work as evidence-backed packaging of an existing software system, not free-form copywriting.

## Core rules

- Read the actual source tree before naming modules, functions, data flows, or interfaces.
- Keep only one clear software boundary per submission. If the repo contains multiple subsystems, choose one core chain and archive removed draft chapters instead of mixing everything together.
- Write in normal specification tone. Do not leave prompt-like sentences, agent instructions, review notes, or speculative wording in the deliverable.
- Prefer architecture, module responsibility, data transformation, execution flow, and deployment mode over product marketing.
- Back every important claim with code, config, interface definitions, logs, screenshots, or a user-supplied template.
- Leave uncertain registration-form fields blank instead of inventing values.

## Recommended workflow

### 1. Inspect inputs and lock the submission boundary

- Read the repo README, existing chapter drafts, registration-form drafts, and any user-supplied reference `.doc` or `.docx` templates.
- Identify the real core chain: input handling, semantic understanding, scheduling/orchestration, execution, feedback, safety control.
- Decide whether the current draft is too broad. If so, keep one system for this submission and archive removed material under a folder such as `docs/arch/`.

Read [references/document-set.md](references/document-set.md) for deliverable expectations and scope decisions.

### 2. Build a source-to-structure map

- List the core files that actually support the chosen software boundary.
- Group them into a small number of layers or modules.
- Reuse those groups consistently in the specification, source attachment, and registration-form summary text.

### 3. Draft or revise the specification

- Follow the reference template's breadth, table density, figure density, and page rhythm when the user provides one.
- Use enough material to look like a real submission document, but keep the story focused on the chosen system.
- Prefer chapter structures such as: overview, goals, overall architecture, core modules, data/interface definitions, execution flow, deployment/operation, source composition.
- When the system has several entry modes, explain how they converge into one main processing path.
- When highlighting innovation, explain the mechanism in software terms instead of reducing it to a single rule phrase.

Read [references/writing-style.md](references/writing-style.md) before large revisions.

### 4. Select the source attachment subset

- Keep the attachment synchronized with the specification's claimed modules.
- Prefer the main chain and the smallest complete set of files that proves the software works.
- If the total source is small enough, include all selected files. Otherwise reduce to the core subset and record the counting basis.
- Keep the line count, file count, and ordering consistent wherever they are mentioned.

Read [references/source-selection.md](references/source-selection.md).

### 5. Draft the registration form

- Reuse terminology from the specification.
- Keep environment, language, purpose, major functions, and technical characteristics concise and code-backed.
- Flag fields that require user/legal confirmation and leave them blank when needed.

### 6. Design diagrams and build the Word deliverables

- Sketch the architecture in text first. Use indentation, columns, or tabular layout to decide what the diagram should say before drawing it.
- Use `mermaid` for simple flowcharts and `draw.io` for figures that need cleaner manual layout.
- Prefer regular horizontal and vertical connectors. Avoid arrows crossing boxes, long zig-zag lines, or dense label overlap.
- If the repo already contains build scripts for `.docx`, diagrams, or render checks, use them. Otherwise create a minimal reproducible build path.
- If bundled office tooling is unstable, prefer a local/system LibreOffice-based render path for visual QA.

Read [references/diagrams-and-word.md](references/diagrams-and-word.md).

### 7. Run a consistency review before delivery

- Check that the specification, source attachment, and registration form describe the same software.
- Verify that module names, file names, line counts, diagrams, and summary paragraphs all agree.
- Remove leftover drafting notes, TODOs, and contradictory wording.

Read [references/review-checklist.md](references/review-checklist.md).

## Practical heuristics

- If a chapter feels long but not stronger, merge or delete it.
- If a technology appears only at the edge of the system, mention it lightly instead of centering it.
- If a diagram looks busy, collapse it into fewer columns or one clearer main chain.
- If wording sounds like "this text is for the reviewer to understand", rewrite it as ordinary specification prose.
- If a function or module name in the document does not exist in code, stop and verify it.

## Preferred outputs

- A submission-ready `.docx` specification
- A source attachment or source list `.docx`
- A registration-form draft `.docx` or `.md`
- Optional archived drafts and diagram source files
