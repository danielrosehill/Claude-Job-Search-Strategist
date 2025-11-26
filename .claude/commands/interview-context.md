---
description: Conduct an interactive interview to gather user context
arguments:
  - name: topic
    description: Specific area to focus on (e.g., career goals, preferences, background)
    required: false
---

Use the context-interviewer agent to gather information about the user through conversation.

Focus area: $ARGUMENTS.topic

The interview will:
1. Ask targeted questions about the specified topic (or general background if none specified)
2. Capture responses in structured format
3. Save gathered context to `user-context/`
4. Identify follow-up areas for future interviews

This is useful for building out user context when starting fresh or updating preferences.
