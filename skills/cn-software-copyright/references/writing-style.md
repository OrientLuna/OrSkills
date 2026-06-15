# Specification writing style

## Tone

Write like a normal software specification:

- objective
- declarative
- module-oriented
- readable by a reviewer who does not know the project

Avoid:

- prompt-like instructions
- agent-facing notes
- marketing slogans
- legal-claim or patent-claim phrasing unless the user asks for it

## What to emphasize

Prefer these topics:

- software purpose and boundary
- layered architecture
- core module responsibilities
- data formats and interface structures
- main processing path
- execution feedback and fault handling
- deployment or operation modes
- source composition and mapping

## Length and density

If the user provides a reference template, match its rhythm:

- similar section granularity
- enough tables to stabilize the page layout
- enough figures to explain architecture and flow
- enough prose to connect the tables and figures

Do not expand by repeating the same idea in different sections.

## Language checks

Rewrite phrases that sound like meta commentary. Examples:

- bad: "该图用于帮助审查人员理解……"
- better: "根据附件源代码所交存的核心文件，各模块及其职责如下表所示。"

- bad: "这里主要想表达的是……"
- better: "系统在该阶段完成……"

## Innovation wording

When the project has a strong technical highlight, explain the mechanism:

- what inputs it consumes
- how it transforms them
- where it connects to the main chain
- why it improves the software behavior

Do not reduce a meaningful capability to a weak placeholder such as "uses rules" if the real implementation is richer.

## Code-name discipline

- Use exact file names and module names when referencing implementation.
- Only mention function names when they are stable and useful to the reader.
- If a name in the prose cannot be found in code, remove or correct it.
