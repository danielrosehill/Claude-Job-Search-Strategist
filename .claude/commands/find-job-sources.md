---
description: Evaluate and recommend job search channels
arguments:
  - name: focus
    description: Specific industry, role type, or geographic focus
    required: false
---

Use the job-source-evaluator agent to identify and evaluate the best job search channels.

Focus area: $ARGUMENTS.focus

Analyze and recommend:
- Relevant job boards and aggregators
- Industry-specific platforms
- Networking events and meetups
- Professional communities
- Remote job APIs and services

Save recommendations to `outputs/analysis/`.
