---
description: Prepare briefing materials for an upcoming interview
arguments:
  - name: company
    description: Company name for the interview
    required: true
  - name: interviewers
    description: Names of interviewers (comma-separated, optional)
    required: false
---

Use the interview-prep-researcher agent to prepare comprehensive interview briefing materials for $ARGUMENTS.company.

Research and compile:
- Company background and recent developments
- Interviewer backgrounds (if names provided: $ARGUMENTS.interviewers)
- Common interview questions for similar roles
- Company-specific talking points
- Questions to ask the interviewers

Save the briefing to `outputs/analysis/interview-prep/`.
