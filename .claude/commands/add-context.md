---
description: Add a quick note to user context
arguments:
  - name: title
    description: Title for the context note
    required: true
  - name: content
    description: Content to add (or leave blank to be prompted)
    required: false
---

Create a new context note in `user-context/` with the title "$ARGUMENTS.title".

If content is provided, write it directly. Otherwise, ask the user what they'd like to capture in this note.

Use kebab-case for the filename (e.g., "Career Goals" becomes `career-goals.md`).
