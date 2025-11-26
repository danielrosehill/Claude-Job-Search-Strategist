---
description: Get recommendations for professional development
arguments:
  - name: skill
    description: Specific skill or gap to address
    required: false
---

Use the upskilling-advisor agent to create a professional development plan.

Focus: $ARGUMENTS.skill

Analyze and recommend:
- Relevant certifications and their value
- Training resources and courses
- Portfolio projects to demonstrate skills
- Timeline and prioritization
- ROI assessment for different learning paths

Save the plan to `outputs/career-planning/cpd/`.
