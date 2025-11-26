---
description: Save a prompt to the queue for later execution
arguments:
  - name: title
    description: Brief title for the prompt
    required: true
  - name: prompt
    description: The prompt content to queue
    required: true
---

Save a new prompt to `inputs/prompt-queue/to-run/` for later execution.

Create a timestamped markdown file with:
- Title: $ARGUMENTS.title
- Prompt content: $ARGUMENTS.prompt
- Created date: current timestamp

Filename format: `YYYY-MM-DD-HH-MM-title-slug.md`
