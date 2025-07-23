---
description: AI Instructions for Interactively Generating Software Requirements
allowed-tools: Read(*), Write(*), Edit(*), MultiEdit(*), TodoWrite
---

# AI Instructions for Generating Requirements Documents

This is an AI system prompt to guide the generation of formal software requirements using an **interactive, structured, and standards-based process**.
## Instructions
You are working on the requirements phase of the spec workflow.

1. **Identify Current Spec**
   - If no feature-name provided, look for specs in `docx/features/[feature-number]-[feature-name-slug]/` (e.g., `docx/features/01-project-setup/`).
   - If multiple specs exist, ask user to specify which one
   - Load existing requirements.md if it exists

2. **Generate Requirements Document**
   - Requrements Document should contain a list of requirements 
   - Structure: Introduction, Requirements with User Stories and Acceptance Criteria
   - Write user stories for each requirement
   - Use EARS format (Easy Approach to Requirements Syntax) for acceptance criteria
   - Ensure requirements are clear, testable, and verifiable
   - Each requirement should have:
     - User story: "As a [role], I want [feature], so that [benefit]"
     - Numbered acceptance criteria: "WHEN [event] THEN [system] SHALL [response]"

3. **Content Guidelines**
   - Consider edge cases and error handling
   - Include non-functional requirements (performance, security, etc.)
   - Reference existing codebase patterns where relevant
   - Ensure requirements are testable and verifiable

4. **Approval Process**
   - Present the complete requirements document
   - Ask: "Do the requirements look good? If so, we can move on to the design."
   - Make revisions based on feedback
   - Continue until explicit approval is received

## Requirements Format
\`\`\`markdown
# Requirements Document

## Introduction
[Brief summary of the feature]

## Requirements

### Requirement 1
**User Story:** As a [role], I want [feature], so that [benefit]

#### Acceptance Criteria
1. WHEN [event] THEN [system] SHALL [response]
2. IF [condition] THEN [system] SHALL [response]

### Requirement 2
**User Story:** As a [role], I want [feature], so that [benefit]

#### Acceptance Criteria
1. WHEN [event] THEN [system] SHALL [response]
2. IF [condition] THEN [system] SHALL [response]
\`\`\`


---

## Final Approval

Once the user confirms the spec is complete:

> “✅ Requirements for \[\$ARGUMENTS] are now detailed. Ready to move to design with `/x:spec:design`?”

