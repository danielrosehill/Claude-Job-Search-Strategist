---
description: Create a tailored resume variant for a specific opportunity
arguments:
  - name: target
    description: Company/role or focus area for the resume
    required: true
---

Use the resume-tailor agent to create a customized version of the user's resume for $ARGUMENTS.target.

1. Read the base resume from `user-context/`
2. Analyze the target opportunity requirements
3. Reframe and emphasize relevant experience
4. Generate a tailored resume variant
5. Save to `outputs/resume-versions/` (never modify the base resume)
