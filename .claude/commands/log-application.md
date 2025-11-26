---
description: Log a new job application to the tracking system
arguments:
  - name: company
    description: Company name
    required: true
  - name: role
    description: Job title/role
    required: true
  - name: source
    description: Where you found/applied (e.g., LinkedIn, company site)
    required: false
---

Use the application-data-manager agent to record a new application:

- Company: $ARGUMENTS.company
- Role: $ARGUMENTS.role
- Source: $ARGUMENTS.source
- Date: today

Update `data/processes.json` with this new entry and set initial status to "applied".
