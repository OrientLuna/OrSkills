# Diagrams and Word build guidance

## Diagram workflow

Before drawing, describe the figure in plain text:

- columns or layers
- node list
- arrow directions
- one-sentence purpose of the figure

Then choose the medium:

- `mermaid` for simple process or hierarchy figures
- `draw.io` for cleaner manual layout, mixed routing, or publication-quality submission figures

## Layout preferences

- Prefer 2-3 clear groups instead of many swimlanes.
- Use aligned boxes with consistent spacing.
- Use straight horizontal or vertical connectors whenever possible.
- Keep feedback loops at the edge of the figure.
- Avoid arrows that pass through boxes.

## Figure types that usually help

- overall architecture
- main data flow
- execution feedback loop
- module relationship map
- multiple entry modes converging into one main processing path

## Word build and QA

When the repo already includes scripts, prefer a repeatable build path such as:

- build specification `.docx`
- build source attachment `.docx`
- render page images for QA

If a bundled office runtime fails because of dynamic library or sandbox issues, prefer a local or system LibreOffice render path.

Always visually inspect:

- page breaks
- figure overlap
- Chinese font rendering
- table borders and widths
- whether the figure caption and body text still fit the page naturally
