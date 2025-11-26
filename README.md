[![Built with Claude Code](https://img.shields.io/badge/Built%20with-Claude%20Code-6366f1?logo=anthropic&logoColor=white)](https://claude.ai/code)
[![Claude Code Projects](https://img.shields.io/badge/More%20Claude%20Code-Projects-blue)](https://github.com/danielrosehill/Claude-Code-Repos-Index)
[![GitHub Index](https://img.shields.io/badge/GitHub-Master%20Index-green)](https://github.com/danielrosehill/Github-Master-Index)

# Claude Job Search Strategist

Structured workspace for orchestrating Claude sub-agents during a job search. See `CLAUDE.md` for the full playbook.

## Quick layout
- `user-context/` — Source docs about the user (resume, goals, voice notes)
- `inputs/prompt-queue/` — `to-run/` for queued prompts, `run/` for in-flight/recent
- `inputs/data/` — Drop raw files (job descriptions, PDFs, CSVs)
- `data/processes.json` — Application pipeline database
- `outputs/` — Generated artifacts
  - `analysis/` (+ `company-reports/`, `interview-prep/`)
  - `cover-letters/`
  - `resume-versions/`
  - `career-planning/cpd/`
  - `personal-branding/`
- `agents/` and `.claude/agents/` — Paired agent instruction files
- `populate-gitkeep.sh` — Re-seeds `.gitkeep` into empty dirs

## Slash command conventions
Use if your client supports them; otherwise perform the equivalent file writes:
- `/agent <name> "<objective>"` → call a sub-agent
- `/queue "<prompt title>"` → create a prompt in `inputs/prompt-queue/to-run/`
- `/context "<note title>"` → add a stub note in `user-context/`
- `/resume-tailor "<company/role>"` → save a tailored resume to `outputs/resume-versions/`
- `/cover-letter "<company/role>"` → save a draft to `outputs/cover-letters/`

---

To view an index of my Claude Code related projects, [click here](https://github.com/danielrosehill/Claude-Code-Repos-Index).
