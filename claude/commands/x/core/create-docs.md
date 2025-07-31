/generate-docs

# 🎯 TASK: Generate Foundational Documentation from Codebase

## 🧠 INTROSPECTION PHASE (MANDATORY)

Before writing, perform deep inspection of the current project to extract key information:

- 🔍 Detect high-level purpose, goals, architecture style, and naming conventions
- 🗂 Analyze code layout: root directory, internal modules, entrypoints
- 🔧 Identify tech stack: languages, frameworks, build tools, CI/CD
- 📚 Find any existing `README.md`, `*.env.example`, `Makefile`, `.github`, or config files
- 🧩 Look for usage of design patterns, layered architecture, or ADRs
- 🚨 Surface common "gotchas", startup pitfalls, or onboarding blockers

> Output MUST reflect extracted realities — no hallucinated tools or workflows.

---

## 📂 OUTPUT FILES
Write all documentation in one response, segmented by file:

- `docx/core/01-MASTER_PLAN.md`
- `docx/core/02-TECH_STACK.md`
- `docx/core/03-CODEBASE_GUIDE.md`
- `docx/core/04-CRITICAL_KNOWLEDGE.md`

Use GitHub Flavored Markdown (GFM) best practices:
- > Alert blockquotes for warnings/tips
- ```lang``` for syntax
- `- [ ]` task lists
- Markdown tables
- `mermaid` for diagrams

---

## 🛠 MODULE SPECIFICATIONS

### 📘 01-MASTER_PLAN.md
- # Project Name: Master Plan
- Vision, strategic fit, success metrics
- Target audience, scope (in/out)
- RACI matrix and assumptions

### 🧱 02-TECH_STACK.md
- # Project Name: Technology & Architecture
- Stack table, architectural style + `mermaid` diagram
- 1 ADR blockquote (Title, Context, Decision, Consequences)
- Standards and testing overview

### 📂 03-CODEBASE_GUIDE.md
- # Project Name: Codebase Guide
- Repo overview, tree structure with annotations
- Deep dive into core directories
- Narrative use-case flow + `mermaid` sequence diagram

### 📎 04-CRITICAL_KNOWLEDGE.md
- # Project Name: Critical Knowledge & Workflows
- Dev setup guide with task list
- Required patterns with code examples
- Anti-patterns > quoted warnings
- Testing, debugging, PR/branching workflow

---

## 📌 RULES
- Never invent details — **extract or infer only from project**
- Write in active voice, with clarity for real-world teams
- Prioritize developer usability over documentation formality
