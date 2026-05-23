# Claude Code Instructions

## Prompt Optimization Workflow

When the user gives a prompt (casual, rough, or verbose), follow this process before doing anything else:

1. **Rewrite the prompt** — make it concise, unambiguous, and token-efficient while preserving full intent
2. **Show the optimized version** — display it clearly so the user can confirm or adjust
3. **Execute via CLI** — run `claude -p "<optimized prompt>"` unless the task is better handled directly in this session

### Optimization Rules
- Remove filler words, typos, and redundancy
- Use precise technical language
- Collapse multi-step instructions into structured bullet points
- Preserve ALL intent — never drop requirements to save tokens
- If the prompt is already optimal, say so and proceed

### When to Use CLI vs. Direct Response
- Use `claude -p` for: standalone tasks, file generation, scripts, one-off queries
- Handle directly: multi-step work, file edits, anything needing tool use across turns

## General Preferences
- Shell: use bash (not cmd or PowerShell)
- Python: use venv for project-level environments, not global installs
- Git: commit frequently with clear messages
- No unnecessary comments in code
- Concise responses — no trailing summaries
