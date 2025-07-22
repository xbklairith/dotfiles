---
description: Display help and overview for spec-driven development commands
allowed-tools: none
---

# Spec-Driven Development Help

## Overview

The spec-driven development methodology provides a structured approach to building software with clear phases, approval gates, and quality controls. It transforms complex features into manageable, well-defined steps.

## Available Commands

### Core Workflow Commands

1. **`/x:spec:plan [project-description]`**
   - Breaks down a project into manageable features
   - Creates feature directories with placeholder files
   - Interactive process to refine feature breakdown

2. **`/x:spec:requirements [feature-name]`**
   - Details requirements using EARS format
   - Interactive conversation to elicit requirements
   - Creates comprehensive requirements.md

3. **`/x:spec:design`**
   - Generates technical design from requirements
   - Offers tech stack selection
   - Creates design.md with architecture details

4. **`/x:spec:tasks`**
   - Breaks design into TDD implementation tasks
   - Uses checkbox format [ ] for tracking
   - Creates tasks.md with structured steps

5. **`/x:spec:execute [feature-name]`**
   - Executes implementation following tasks.md
   - Updates checkboxes to ✅ as work progresses
   - Follows Red-Green-Refactor TDD cycle

### Utility Commands

6. **`/x:spec:list`**
   - Lists all features in the project
   - Quick overview without status checking
   - Shows total feature count

7. **`/x:spec:help`** (this command)
   - Displays this help information
   - Overview of all spec commands

## Workflow Example

```bash
# 1. Start with project planning
/x:spec:plan "E-commerce checkout system with payment processing"

# 2. Detail requirements for a feature
/x:spec:requirements payment-processing

# 3. Generate technical design
/x:spec:design

# 4. Create implementation tasks
/x:spec:tasks

# 5. Execute the implementation
/x:spec:execute

# Check feature list anytime
/x:spec:list
```

## Key Concepts

### EARS Requirements Format
- **Event-Driven**: "WHEN [trigger] THEN the system SHALL [response]"
- **State-Driven**: "WHILE [state] the system SHALL [requirement]"
- **Ubiquitous**: "The system SHALL [requirement]"
- **Conditional**: "IF [condition] THEN the system SHALL [requirement]"
- **Optional**: "WHERE [feature included] the system SHALL [requirement]"

### TDD Cycle (Red-Green-Refactor)
1. **Red**: Write a failing test
2. **Green**: Write minimal code to pass
3. **Refactor**: Improve code quality

### Checkbox Tracking
- `[ ]` - Task pending
- `✅` - Task completed

### File Structure
```
docx/
└── features/
    └── [feature-name]/
        ├── requirements.md   # EARS requirements
        ├── design.md        # Technical design
        ├── tasks.md         # TDD tasks with checkboxes
        └── task_*_completed.md  # Task summaries
```

## Approval Gates

The methodology includes explicit approval points:
- After requirements → "Ready for design phase?"
- After design → "Ready for task breakdown?"
- After tasks → "Ready to begin implementation?"

## Best Practices

1. **Start Small**: Break large projects into 3-7 features
2. **Be Specific**: Use measurable requirements (e.g., "within 2 seconds")
3. **Follow TDD**: Always write tests first
4. **Track Progress**: Update checkboxes as you work
5. **Iterate**: Refine at each phase based on feedback

## Getting Started

For a new project:
```
/x:spec:plan "Your project description here"
```

For an existing feature:
```
/x:spec:requirements feature-name
```

## Need More Help?

- Review `.claude/spec-driven.md` for detailed methodology
- Check `.claude/CLAUDE.md` for general development guidelines
- Each command file has detailed instructions when executed