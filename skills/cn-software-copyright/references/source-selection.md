# Source attachment selection

## Selection goal

Submit the smallest complete file set that proves the software's core chain.

Typical priority order:

1. protocol or message definitions
2. input or semantic understanding
3. core scheduling or orchestration
4. execution translation
5. queueing, feedback, timeout, safety control

## Counting rules

- Count only the files actually submitted.
- Keep core data definition files when they are part of the software logic.
- Do not count third-party dependencies, generated artifacts, screenshots, logs, or explanatory documents.
- Recount after any file-set change.

## Practical threshold

If the user is using the common "up to 60 pages, or all files when below roughly 3000 lines" strategy:

- include all selected files when the total remains within the threshold
- otherwise reduce to the main chain and record the new basis

## Attachment order

Order files to match the specification reading flow. A good sequence is:

1. message or protocol definitions
2. framework entry or application factory
3. text normalization and recognition
4. matching or retrieval
5. action registry and executor
6. transport or adapter
7. execution node and feedback queue

## Formatting

- Use code-like layout, usually monochrome and fixed-width.
- Keep line numbering stable when useful.
- Target about 50 lines per page if building a Word attachment.
- Keep the source list, actual source attachment, and specification counts synchronized.
