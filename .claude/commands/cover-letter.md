---
description: Generate a tailored cover letter for a specific role
arguments:
  - name: target
    description: Company and role (e.g., "Acme Corp - Senior Developer")
    required: true
---

Use the cover-letter-generator agent to create a tailored cover letter for $ARGUMENTS.target.

1. Review the user's context in `user-context/` for voice, style, and background
2. Research the target company if not already documented
3. Generate a cover letter that:
   - Matches the user's authentic voice
   - Highlights relevant experience for the specific role
   - Demonstrates knowledge of the company
4. Save to `outputs/cover-letters/` with a descriptive filename
