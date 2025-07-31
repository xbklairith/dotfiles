---
description: Execute the implementation plan from tasks.md. Optionally specify a feature name to load its context.
allowed-tools: Read(*), Write(*), Edit(*), MultiEdit(*), Glob(*), Grep(*), Bash(*), TodoRead, TodoWrite
---

# Execute Implementation

## Context
You are executing feature implementation based on structured specifications. This is the final phase of the spec-driven development workflow, following task breakdown.

## Feature: $ARGUMENTS


## Instructions

1. **Identify Current Spec**
   - If no feature-name provided, look for specs in `docx/features/[NN-feature-name]/` (e.g., `docx/features/01-user-authentication/`).
   - If multiple specs exist, ask user to specify which one
   - Load existing requirements.md if it exists for the relevant feature based on the most recent edits or user preference. Ask the user to specify which feature if you are unsure.

2. **Context Loading:**

*   Once a feature is selected, READ these files into your context:
    *   `docx/features/[NN-feature-name]/requirements.md`
    *   `docx/features/[NN-feature-name]/design.md`
    *   `docx/features/[NN-feature-name]/tasks.md`

3. **Execution Process**

   a. **Understand the Full Specification**:
    *   Read `requirements.md` to understand the "what" and "why".
    *   Read `design.md` to understand the "how" and the architecture.
    *   Thoroughly review `tasks.md` for the detailed implementation plan and TDD steps.

   b. **ULTRATHINK & Plan Execution**:
    *   Think hard before you execute. Create a comprehensive plan to tackle the tasks.
    *   Use your `TodoWrite` tool to break down the implementation of each task from `tasks.md` into smaller, manageable steps.
    *   Identify implementation patterns from the existing codebase as guided by `design.md`.
    *   Track checkbox progress in tasks.md:
        - [ ] uncompleted items
        - [x] completed items
    *   Use your `TodoWrite` tool to create a task to run the complete test suite. All tests must pass otherwise you MUST fix them as we can only proceed to next task after the whole test suite is 100% passing.
    *   Use your `TodoWrite` tool to create a task for progress tracking and checkbox updates
    *   Use your `TodoWrite` tool to create a task to create the `task_{nr}_completed.md` with the completion summary after each task
    *   Use your `TodoWrite` tool to create a task to update checkboxes in tasks.md as work progresses

   c. **Implementation Guidelines**
   - Write clean, maintainable code
   - Follow existing code patterns and conventions
   - Include appropriate error handling
   - Add unit tests where specified
   - Document complex logic

   d. **Validation**
   - Verify implementation meets acceptance criteria
   - Run tests if they exist
   - Check for lint/type errors
   - Ensure integration with existing code

   e. **Completion**
   - **CRITICAL**: Mark task as complete in tasks.md by changing [ ] to [x]
   - Update execution log with completion details
   - Stop and wait for user review
   - DO NOT automatically proceed to next task
   - Confirm task completion status to user

## Task Selection
If no task-id specified:
- Look at tasks.md for the spec
- Recommend the next pending task
- Ask user to confirm before proceeding

## Important Rules
- Only execute ONE task at a time
- **ALWAYS** mark completed tasks as [x] in tasks.md
- Always stop after completing a task
- Wait for user approval before continuing
- Never skip tasks or jump ahead
- Confirm task completion status to user
- Progress through each task systematically, ensuring quality at each step.
