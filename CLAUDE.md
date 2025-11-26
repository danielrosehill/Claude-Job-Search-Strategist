# Claude Job Search Strategist

This repository is a structured workspace for assisting the user with a job search process. It is organized into a structured file system to facilitate orderly agent operation.

> **Note:** Unless otherwise stated, all paths in this document are relative to the repository root.

---

## Repository Structure

### Core folders
- `user-context/` — Source of truth for user context (resume, voice notes, goals). Prefer many small markdown files; `.gitkeep` keeps the folder present even when empty.
- `inputs/`
  - `inputs/prompt-queue/to-run/` — Pending prompts to execute
  - `inputs/prompt-queue/run/` — Prompts in progress or recently handled
  - `inputs/data/` — Raw/structured files dropped in by the user (job descriptions, PDFs, CSVs)
- `data/processes.json` — Application pipeline database maintained by the application-data-manager agent
- `outputs/`
  - `outputs/analysis/` — Research and strategy artifacts (company reports, compensation workups, job-source evaluations, upskilling plans)
    - `outputs/analysis/company-reports/` — Company research outputs
    - `outputs/analysis/interview-prep/` — Interview prep briefs
  - `outputs/cover-letters/` — Generated cover letters and outreach drafts
  - `outputs/resume-versions/` — Tailored resume variants (base resume stays in `user-context/`)
  - `outputs/career-planning/cpd/` — Career planning and professional development materials
  - `outputs/personal-branding/` — Brand guidelines, bios, and positioning docs
- `agents/` — Human-readable agent playbooks (mirrored in `.claude/agents/` for tool execution)
- `populate-gitkeep.sh` — Utility to place `.gitkeep` into empty dirs; safe to rerun anytime

---

## MCP Tooling

Available MCP tools for taking actions against external services:

| Tool | Purpose |
|------|---------|
| WebFetch / FireCrawl | Retrieve information about companies |
| Hunter MCP | Gather email addresses when requested |
| Resend | Send emails to potential employers |

---

## Operational Guidelines

### Human-in-the-Loop Assumption

**Important:** This repository is NOT designed for mass-emailing potential companies. It is intended as a thoughtful, focused workspace where the user maintains control over outreach decisions.

### Workflow Philosophy

1. **Clarify Objectives First**
   - Encourage the user to clarify both short-term (this job hunt) and long-term (career growth and evolution) objectives
   - Store captured information in `user-context/`
   - If initial data is sparse, prioritize gathering and developing this material
   - Use the subagent interview workflow or support text ingestion for existing context data

2. **Ensure Timely Information**
   - The user is likely in a tech field where things evolve rapidly
   - Always use web search to ensure retrieved information is current and up-to-date

3. **Maintain User Voice**
   - When generating cover letters and emails, adopt the user's tone of voice as you learn it over time
   - Record voice/style observations in memory
   - Expect the user will make their own adjustments to generated content

---

## Agent Workspaces

- repository-setup → reads `inputs/data/`, writes organized context into `user-context/`
- context-interviewer → writes structured interview notes into `user-context/`
- application-data-manager → maintains `data/processes.json` (plus supporting files in `inputs/data/` when needed)
- resume-tailor → reads base resume in `user-context/`, outputs to `outputs/resume-versions/`
- cover-letter-generator → outputs to `outputs/cover-letters/`
- company-researcher → outputs to `outputs/analysis/company-reports/`
- interview-prep-researcher → outputs to `outputs/analysis/interview-prep/`
- career-strategy-advisor / job-source-evaluator / compensation-researcher / upskilling-advisor → outputs to `outputs/analysis/`
- personal-brand-architect → outputs to `outputs/personal-branding/`

Keep paired instructions in `agents/` and `.claude/agents/` aligned when updating agent behavior.

---

## Slash Command Conventions

If your client supports slash commands, use these shorthands to keep work organized:

- `/agent <name> "<objective>"` — Explicitly call a sub-agent (matches files in `agents/`)
- `/queue "<prompt title>"` — Save a new prompt to `inputs/prompt-queue/to-run/` (timestamped file)
- `/context "<note title>"` — Add a quick note into `user-context/` (markdown stub to be filled)
- `/resume-tailor "<company/role>"` — Generate a tailored resume into `outputs/resume-versions/`
- `/cover-letter "<company/role>"` — Draft and file a cover letter into `outputs/cover-letters/`

These commands are conventions; if slash commands are unavailable, perform the equivalent file writes manually.
