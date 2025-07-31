---
description: Break down technical design into implementation tasks
allowed-tools: Read(*), Write(*), Edit(*), MultiEdit(*), Glob(*), Grep(*), TodoWrite
---

# Generate Implementation Tasks

## Context
You are creating a comprehensive task breakdown from existing technical design. This is the fourth phase of the spec-driven development workflow, following design creation.

## Instructions

### Process
1. **Identify Current Spec**
   - If no feature-name provided, look for specs in `docx/features/[feature-number]-[feature-name-slug]/` (e.g., `docx/features/01-project-setup/`).
   - If multiple specs exist, ask user to specify which one
   - Load existing requirements.md if it exists
2. **Generate tasks**: Create comprehensive tasks.md with clear implementation steps
3. **Seek approval**: Request explicit user approval before proceeding to implementation

## Task Structure
Tasks use checkbox format [ ] for tracking completion - mark as [x] when complete:

### Task Format
```
## [ ] Task [N]: [Component/Feature Name]
_Requirements: Requirement 1, Requirement 3, Requirement 5_

### Description
Brief description of what this task accomplishes

### Acceptance Criteria (EARS-based)
- WHEN [scenario] THEN [expected outcome] _(from Requirement 1)_
- IF [condition] THEN [system behavior] _(from Requirement 3)_
- The system SHALL [requirement] _(from Requirement 5)_

### Implementation Steps
- [ ] [Step 1: Specific implementation action]
- [ ] [Step 2: Next implementation action]
- [ ] [Step 3: Validation or testing step]

### Testing Requirements
- [ ] Unit tests: [list key unit test cases]
- [ ] Integration tests: [list integration scenarios]
- [ ] Edge cases: [list error conditions and boundary cases]

### Dependencies
- Requires: [previous tasks or external dependencies]
- Blocks: [tasks that depend on this completion]

### Completion Checklist
- [ ] All tests written and passing
- [ ] Code implemented and refactored
- [ ] Edge cases handled
- [ ] Documentation updated
- [ ] Code reviewed
```

### Example of Completed Task
```
## [x] Task 1: Database Connection Setup
_Requirements: Requirement 2, Requirement 4_

### Description
Establish a connection to the database using connection pooling.

### Implementation Steps
- [x] Create database configuration module
- [x] Implement connection pooling logic
- [x] Add connection retry mechanism

### Testing Requirements
- [x] Unit tests: Connection string validation
- [x] Integration tests: Actual database connection
- [x] Edge cases: Connection timeout handling

### Completion Checklist
- [x] All tests written and passing
- [x] Code implemented
- [x] Edge cases handled
- [x] Documentation updated
- [x] Code reviewed
```

## Task Breakdown Strategy

### 1. Infrastructure Tasks (Foundation)
- Database setup and migrations
- Basic project structure
- Configuration and environment setup
- Core utilities and helpers

### 2. Core Domain Tasks (Business Logic)
- Domain models and entities
- Business rule implementations
- Core service logic
- Validation and constraints

### 3. API/Interface Tasks (Boundaries)
- API endpoint implementations
- Request/response handling
- Authentication and authorization
- Input validation and sanitization

### 4. Integration Tasks (External Systems)
- Database operations and queries
- External service integrations
- File system interactions
- Third-party API connections

### 5. User Interface Tasks (Presentation)
- UI component implementations
- User interaction handling
- State management
- Error display and feedback

### 6. Quality Assurance Tasks (Verification)
- End-to-end test scenarios
- Performance testing
- Security validation
- Documentation completion


### 7. Commit and Cleanup Tasks
- Clean up temporary files and external logs
- Verify staged files
- Commit with concise message one line (no co-authors)

## Task Quality Gates 
Ensure each task:
- [ ] Tasks are granular and actionable (2-4 hours each)
- [ ] Proper sequencing and dependencies specified
- [ ] Test scenarios included (unit, integration, edge cases)
- [ ] Acceptance criteria defined based on EARS requirements
- [ ] Implementation approach clear
- [ ] Includes clear implementation steps
- [ ] Has measurable completion criteria
- [ ] References specific requirement numbers (e.g., "Requirement 1", "Requirement 2")
- [ ] Each acceptance criterion traces back to a numbered requirement

## Implementation Guidelines
- **Clear steps**: Break down work into specific, actionable steps
- **Incremental progress**: Implement in small, verifiable chunks
- **Testing**: Ensure comprehensive test coverage
- **Validation**: Verify each step meets acceptance criteria
- **Requirement traceability**: Map all work back to specific requirements

## Key Principles
- Break down complex features into small, manageable tasks
- Ensure proper task sequencing and dependency management
- Include both positive and negative test scenarios
- Address error handling and edge cases explicitly
- Maintain traceability back to original requirements using format "Requirement N" or "Requirement N: [Title]"

## Next Steps
After user approval:
- User can run `/x:spec:execute` to begin implementation
- Tasks serve as step-by-step implementation guide
- Progress tracked via checkbox updates in tasks.md