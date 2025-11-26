---
description: Research compensation for a specific role or company
arguments:
  - name: target
    description: Role title and/or company to research
    required: true
---

Use the compensation-researcher agent to analyze salary data for $ARGUMENTS.target.

Research and compile:
- Market salary ranges for the role
- Company-specific compensation practices (if applicable)
- Total compensation breakdown (base, equity, benefits)
- Geographic adjustments if relevant
- Negotiation benchmarks

Save the analysis to `outputs/analysis/`.
