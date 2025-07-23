---
description: Execute the implementation plan from tasks.md. Optionally specify a feature name to load its context.
allowed-tools: Read(*), Write(*), Edit(*), MultiEdit(*), Glob(*), Grep(*), Bash(*), TodoRead, TodoWrite
---

# Execute Feature Implementation

## Feature: $ARGUMENTS

You are executing a feature implementation based on the structured specifications.

**Feature Selection Logic:**

1.  **IF a feature name is provided in `$ARGUMENTS`**:
    *   TRY to find a directory in `docx/features/` that matches `$ARGUMENTS`.
    *   IF no exact match is found, SEARCH for the closest directory name.
    *   IF a close match is found, ASK the user for confirmation: "Did you mean 'docx/features/[found_directory_name]'? (yes/no)"
    *   IF user confirms, PROCEED. IF user denies, STOP and ask for the correct name.

2.  **IF no feature name is provided**:
    *   LIST all directories under `docx/features/`.
    *   IF only one feature directory exists, automatically SELECT it and state which one you are using.
    *   IF multiple feature directories exist, LIST them and ASK the user to specify which one to proceed with.

**Context Loading:**

*   Once a feature is selected, READ these files into your context:
    *   `docx/features/[selected_feature_name]/requirements.md`
    *   `docx/features/[selected_feature_name]/design.md`
    *   `docx/features/[selected_feature_name]/tasks.md`

## Your Task
Implement the feature by executing the plan in `tasks.md`.

## Execution Process

1.  **Understand the Full Specification**:
    *   Read `requirements.md` to understand the "what" and "why".
    *   Read `design.md` to understand the "how" and the architecture.
    *   Thoroughly review `tasks.md` for the detailed implementation plan and TDD steps.

2.  **ULTRATHINK & Plan Execution**:
    *   Think hard before you execute. Create a comprehensive plan to tackle the tasks.
    *   Use your `TodoWrite` tool to break down the implementation of each task from `tasks.md` into smaller, manageable steps.
    *   Identify implementation patterns from the existing codebase as guided by `design.md`.
    *   Track checkbox progress in tasks.md:
        - [ ] uncompleted items
        - ✅ completed items
    *   Use your `TodoWrite` tool to create a task to run the complete test suite. All tests must pass otherwise you MUST fix them as we can only proceed to next task after the whole test suite is 100% passing.
    *   Use your `TodoWrite` tool to create a task for progress tracking and checkbox updates
    *   Use your `TodoWrite` tool to create a task to create the `task_{nr}_completed.md` with the completion summary after each task
    *   Use your `TodoWrite` tool to create a task to update checkboxes in tasks.md as work progresses

3. **Implementation Guidelines**
   - Write clean, maintainable code
   - Follow existing code patterns and conventions
   - Include appropriate error handling
   - Add unit tests where specified
   - Document complex logic

4. **Validation**
   - Verify implementation meets acceptance criteria
   - Run tests if they exist
   - Check for lint/type errors
   - Ensure integration with existing code

5. **Completion**
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
