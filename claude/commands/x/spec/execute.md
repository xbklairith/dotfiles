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

3.  **Execute Tasks (TDD Cycle)**:
    *   Follow the task order from `tasks.md`.
    *   For each task, strictly follow the Red-Green-Refactor cycle:
        1.  **Red**: Write a failing test that corresponds to the acceptance criteria.
            - Update checkbox: `- ✅ **Red Phase**: Write failing test for [specific behavior]`
        2.  **Green**: Write the minimum amount of code required to make the test pass.
            - Update checkbox: `- ✅ **Green Phase**: Implement minimal code to pass test`
        3.  **Refactor**: Improve the code's structure and quality without changing its behavior.
            - Update checkbox: `- ✅ **Refactor Phase**: Clean up while keeping tests green`
    *   **Track progress with checkboxes**:
        - Update TDD step checkboxes as you complete each phase
        - Update test scenario checkboxes as tests are written
        - Update completion checklist items as they are done
    *   **After completing each task**:
        1.  Mark the main task checkbox as complete: `## ✅ Task [N]: [Component/Feature Name]`
        2.  **CREATE** a new file named `task_{nr}_completed.md` in the feature directory.
        3.  In this file, provide a concise **SUMMARY** of the work done, including files created/modified and key decisions made.
        4.  **ASK** for user confirmation: "Task {nr} is complete. Review the summary in `task_{nr}_completed.md`. Ready to proceed to next task?"
        5.  Show progress update: "Progress: X/Y tasks completed (Z%)"
    *   Run validation checks after each small implementation step.

4.  **Verify Implementation**:
    *   After completing all tasks, run the full test suite to ensure no regressions.
    *   Confirm that the final implementation meets all acceptance criteria from `requirements.md`.
    *   Perform any final validation steps mentioned in the design or tasks.

5.  **Complete**:
    *   Ensure all tasks from `tasks.md` are completed.
    *   Report completion status and a summary of the implementation.

Progress through each task systematically, ensuring quality at each step.