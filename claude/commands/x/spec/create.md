---
description: Create a new feature specification following the spec-driven workflow.
allowed-tools: Read(*), Write(*), Edit(*), MultiEdit(*), TodoWrite
---

# Create a New Feature Specification

You are creating a single feature specification following the spec-driven workflow.

## Your Task

Create a feature specification for: **$ARGUMENTS**

## Process

1. **Parse Feature Input**
   - Extract the feature name from `$ARGUMENTS`
   - If no explicit feature number is provided, determine the next available number by checking existing feature directories
   - Create a normalized slug from the feature name (lowercase, hyphens instead of spaces)

2. **Check for Existing Features**
   - List existing directories in `docx/features/` to determine the next sequential number
   - Ensure no duplicate feature names exist

3. **Create Feature Directory Structure**
   - Create the feature directory: `docx/features/[NN-feature-name]/` (e.g., `docx/features/01-user-authentication/`)
   - Generate three files:
     - `requirements.md` - Basic template with feature title
     - `design.md` - Empty placeholder
     - `tasks.md` - Empty placeholder

## File Templates

### requirements.md
```markdown
# Requirements: [Feature Name]

## Overview
[Brief description of the feature]

## Functional Requirements
- [ ] To be defined

## Non-Functional Requirements
- [ ] To be defined
```

### design.md
```markdown
# Design: [Feature Name]

(To be completed in the design phase)
```

### tasks.md
```markdown
# Tasks: [Feature Name]

(To be completed in the task breakdown phase)
```

## Final Output

After creating the feature directory and files, provide a summary:
"Created feature specification for '[Feature Name]' in `docx/features/[NN-feature-name]/`.

Next steps:
- Run `/x:spec:requirements [NN-feature-name]` to define detailed requirements
- Or run `/x:spec:requirements` to work on the most recent feature"

## Key Guidelines

- Create only ONE feature at a time
- Use sequential numbering (01, 02, 03...)
- Maintain consistent naming conventions
- Do not overwrite existing features

Now, create the feature specification for: **$ARGUMENTS**
