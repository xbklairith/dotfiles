---
description: List all features in the project with their current spec-driven development status
allowed-tools: Read(*), Glob(*), LS
---

# List Features

## Context
You are listing all features in the spec-driven development workflow. This provides a quick overview of all existing features and their current status.

## Instructions
Display a simple list of all features in the `docx/features/` directory.

### Process
1. **Glob for feature directories**: Use pattern `docx/features/*/` to find all feature directories
2. **List features**: Display a clean, numbered list of feature names

## Output Format
```
📊 Features
===========

1. 01-user-authentication
2. 02-payment-processing  
3. 03-notification-system
4. 04-reporting-dashboard
5. 05-api-integration

Total: 5 features
```

## Next Steps
After listing, users can work on any feature using:
- `/x:spec:requirements [feature-name]` - Define requirements
- `/x:spec:design` - Create technical design
- `/x:spec:tasks` - Break down into tasks
- `/x:spec:execute` - Begin implementation