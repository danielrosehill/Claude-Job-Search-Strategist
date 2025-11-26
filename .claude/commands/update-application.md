---
description: Update status of an existing application
arguments:
  - name: company
    description: Company name to update
    required: true
  - name: status
    description: New status (e.g., interview scheduled, rejected, offer)
    required: true
  - name: notes
    description: Additional notes about the update
    required: false
---

Use the application-data-manager agent to update the application for $ARGUMENTS.company:

- New status: $ARGUMENTS.status
- Notes: $ARGUMENTS.notes

Update the relevant entry in `data/processes.json`.
