---
description: Initialize or refresh user context for the job search repository
---

Use the repository-setup agent to initialize or refresh the job search workspace.

This will:
1. Check for existing context in `user-context/`
2. Process any files in `inputs/data/` (resumes, job descriptions, etc.)
3. Organize imported materials into the appropriate structure
4. Identify gaps in user context that need to be filled
5. Optionally trigger the context-interviewer for missing information

Run this when first setting up the repository or when adding new source materials.
