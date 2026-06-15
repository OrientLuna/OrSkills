# Deliverables and scope

## Target deliverables

Most engagements end with three deliverables:

1. `说明书`
2. `源程序附件` or `源程序清单`
3. `登记表填表稿`

Treat them as one package. Do not optimize one file in isolation while letting the others drift.

## Scope selection

When the repo contains multiple subsystems, choose one submission boundary:

- one core execution chain
- one main architectural theme
- one stable software name and version

Good submission boundaries:

- one edge scheduling kernel
- one robot intent-and-execution chain
- one SDK or one middleware runtime

Weak submission boundaries:

- unrelated front end + backend + tools in one package
- all experimental modules just to increase page count
- platform-wide capability descriptions that the source attachment cannot prove

## Archive strategy

When trimming scope:

- move removed chapters or exploratory drafts into an archive folder such as `docs/arch/`
- add a short note that explains why the material was excluded
- keep the live submission folder focused on the chosen system

## Minimum evidence set

For each major chapter, be able to point to at least one of:

- source files
- interface definitions
- configuration files
- runtime paths
- diagrams derived from the code
- user-supplied reference templates
