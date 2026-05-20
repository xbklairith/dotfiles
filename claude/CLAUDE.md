# 🛠️ Development Partnership

We're building **production-grade software** together. Your responsibility is to deliver clean, efficient, maintainable solutions — and catch issues early.

If things get overly complex or stuck, I'll guide you back on track.

---

## 📊 Confidence Score Reporting

**ALWAYS append a confidence score [0.0-1.0] to your responses**

### Format
End every response with: `[Confidence: X.X]`

### Score Guidelines
- **0.9-1.0**: Certain about the solution, have verified it works
- **0.7-0.8**: Fairly confident, standard pattern, but haven't fully tested
- **0.5-0.6**: Moderate confidence, some uncertainty about approach
- **0.3-0.4**: Low confidence, multiple possible solutions, needs research
- **0.0-0.2**: Very uncertain, guessing, or lacking critical information

### When to Lower Confidence
- Missing context or files not yet read
- External dependencies not verified
- Complex logic without tests
- First time using a pattern/library
- Conflicting requirements
- Assumptions made without verification

---

## 🔁 Workflow

Always follow this sequence — **no skipping**: Research → Plan → Implement

1. **Research** — Understand the existing system, patterns, and dependencies
2. **Plan** — Draft your solution and confirm it with me
3. **Implement** — Build in small, validated steps with periodic checkpoints

For kisune projects, use `spec-driven-planning`, `brainstorming`, and `spec-driven-implementation` skills for this workflow.

### Implementation Checkpoints

During implementation, periodically:

1. **Run existing tests** every 2-3 file changes — fix failures immediately before continuing
2. **Write tests BEFORE implementing** — strict TDD; no production code without a failing test first
3. **Commit** after each logical unit of work — one-line message, imperative mood, stage specific files (not `git add .`)

### Checkpoint Status Format

```
🔄 Checkpoint Update:
- ✅ Tests: 48/48 passing
- ✅ Type check: No errors
- ✅ Lint: Clean
- 📝 New tests: Added 5 tests for auth module
- 💾 Committed: "Add JWT token validation"
- 🎯 Next: Implement refresh token logic

[Confidence: 0.9]
```

---

## ✅ Quality Gate

**All automated checks must pass before proceeding.**

- [ ] No formatting issues
- [ ] No linter violations
- [ ] No runtime/config errors
- [ ] No type errors
- [ ] No test failures

**If any check fails:** STOP all other work → FIX the issue → VERIFY by rerunning → RESUME. Never ignore failures.

Run format, test, and lint commands frequently.

---

## File Structure of Knowledge Base

If a project has a `docx/` directory, it contains structured knowledge:

- `docx/core/` — Product goals, tech stack, codebase guide, critical knowledge
- `docx/features/[NN-feature-name]/` — Requirements, design, tasks, completed task summaries

Not all projects use this structure — check before assuming.

---

## 🤖 Use Multiple Agents

Leverage sub-agents for parallel execution:

- Explore different parts of the system simultaneously
- One agent writes tests while another implements logic
- Delegate research (one reviews schema, another checks external API)
- Refactors: one maps changes, another applies them

---

## 🤔 On Task Conflicts or Gaps

### When to Stop and Ask

Immediately pause when encountering:

1. **Conflicting Requirements** — Multiple valid interpretations or contradictory requirements
2. **Missing Critical Information** — Undefined business logic, missing API docs, unknown dependencies
3. **Multiple Valid Solutions** — Different architectures or libraries with significant trade-offs
4. **Scope Ambiguity** — Feature boundaries unclear, edge cases not specified

### How to Ask

Structure questions to get actionable answers:
- State current understanding
- Identify the specific uncertainty
- Present 2-3 options with trade-offs
- Give a recommendation with reasoning

### Red Flags That Require Immediate Clarification

- Security implications not addressed
- Data privacy requirements missing
- Performance requirements unspecified for data-heavy features
- Integration points with unknown systems
- Regulatory/compliance requirements unclear
- Cost implications of external services

### When NOT to Ask

Use standard patterns without asking for:
- Code formatting and style (follow existing patterns)
- Standard security practices (always implement)
- Error handling (always include comprehensive handling)
- Input validation (always validate)
- TypeScript types (always add proper types)
- Basic accessibility (always include)

---

## 📋 User Action Tasks

When a task requires manual user intervention that cannot be done programmatically, create a markdown file at `./docx/UserInstructions/[descriptive-name].md` (or an equivalent location if the project doesn't use `docx/`).

**Create a User Action Task for:**
- Environment variables / API keys / secrets
- External service setup (Supabase, Stripe, OAuth providers)
- Deployment steps (Vercel, AWS, DNS, SSL)
- Manual verification or one-time setup procedures

**Format:** Include overview, prerequisites checklist, numbered steps with code blocks, verification steps, and troubleshooting section.

Create the document proactively — don't wait for the user to ask.

---

## 🖥️ Command Execution

### Background Execution

For commands that take longer than 30 seconds and don't need to stay running, use the `run_in_background` parameter on the Bash tool. Use the Monitor tool to stream output from background processes.

### Persistent Services

For HTTP servers, workers, or daemons that must stay running — use PM2:

```bash
pm2 start npm --name "api-server" -- run start
pm2 logs api-server --lines 50
pm2 stop api-server
pm2 delete api-server
```

### Interactive Commands

If a command requires user input, create a User Action Task instead of attempting to automate it.

### Logging

If a command doesn't produce its own log output and the result matters for debugging, redirect to a timestamped file:

```bash
command > ./logs/command-$(date +%Y%m%d-%H%M%S).log 2>&1
```

### Token-Optimized CLI (RTK)

Commands are automatically rewritten by the RTK hook for token efficiency. For RTK meta commands and troubleshooting:

@RTK.md
