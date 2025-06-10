# Quick Task

Rapidly add a simple task to the backlog without requiring full PRD process.

## Arguments
- `$ARGUMENTS` - Task description (required)

## Instructions

1. **Validate Input**:
   - Ensure task description is provided in arguments
   - Check description is specific and actionable
   - Verify it's not a duplicate of existing tasks

2. **Analyze Task Context**:
   - Determine appropriate priority based on description keywords
   - Estimate complexity from description scope
   - Identify potential dependencies with existing tasks
   - Suggest category/component assignment

3. **Create Task**:
   - Use `mcp__taskmaster-ai__add_task` with intelligent defaults:
     - `prompt`: Enhanced version of user description
     - `priority`: Auto-determined (medium default)
     - `projectRoot`: Current working directory
   - Let AI expand basic description into full task structure

4. **Post-Creation Optimization**:
   - Review generated task for completeness
   - Check if dependencies should be added
   - Validate priority assignment
   - Suggest if task needs immediate breakdown

5. **Integration Check**:
   - Verify task fits with current project scope
   - Check if it affects critical path
   - Update project metrics and priorities

## Smart Defaults

### Priority Detection:
- **High**: Keywords like "critical", "urgent", "blocker", "security", "fix"
- **Medium**: Feature additions, improvements, moderate changes
- **Low**: Documentation, cleanup, nice-to-have features

### Complexity Estimation:
- **Simple (1-3)**: Bug fixes, styling, minor tweaks
- **Medium (4-6)**: New features, integrations, moderate changes  
- **Complex (7-10)**: Architecture changes, major features, migrations

### Category Detection:
- **Frontend**: UI, component, styling, interface keywords
- **Backend**: API, database, server, service keywords
- **DevOps**: Deploy, CI/CD, infrastructure keywords
- **Testing**: Test, QA, validation keywords

## Example Interactions

### Input: `/quick-task "Fix login button styling"`
```
➕ **Creating Quick Task**

📝 **Task Description**: "Fix login button styling"

🤖 **AI Analysis**:
- Detected Type: Frontend/UI
- Estimated Priority: Medium  
- Estimated Complexity: 2/10 (Simple)
- Category: UI/Components

🎯 **Enhanced Task Details**:
- Title: "Fix Login Button Styling"
- Description: "Correct visual styling issues with the login button component"
- Details: "Address styling inconsistencies in login button including hover states, alignment, and responsive behavior"
- Test Strategy: "Visual regression testing, cross-browser compatibility check"

✅ **Task Created**: #47
- Priority: Medium
- Status: Pending
- Dependencies: None detected
- Ready for implementation: Yes

⚡ **Quick Actions**:
- `/next-task` - Check if this is your next task
- `/task-status` - See updated project status
- Start working on it immediately
```

### Input: `/quick-task "Implement user authentication with OAuth"`
```
➕ **Creating Quick Task**

📝 **Task Description**: "Implement user authentication with OAuth"

🤖 **AI Analysis**:
- Detected Type: Backend/Security
- Estimated Priority: High
- Estimated Complexity: 7/10 (Complex)
- Category: Authentication

⚠️ **Complexity Warning**: This task appears complex (7/10)

🎯 **Enhanced Task Details**:
- Title: "Implement OAuth User Authentication"
- Description: "Integrate OAuth authentication system for user login"
- Details: "Implement OAuth 2.0 flow with provider integration, token management, and user session handling"
- Test Strategy: "Integration testing with OAuth providers, security testing, user flow validation"

✅ **Task Created**: #48
- Priority: High  
- Status: Pending
- Dependencies: May depend on existing auth infrastructure
- Ready for implementation: Needs review

🔍 **Recommendations**:
- Consider using `/break-down 48` to split into subtasks
- Use `/research 48` for OAuth implementation patterns
- Review dependencies with existing authentication system

⚡ **Quick Actions**:
- `/break-down 48` - Split into manageable subtasks
- `/research 48` - Get OAuth implementation guidance
- `/complexity` - See how this affects project complexity
```

## Batch Task Creation

### Input: `/quick-task "Add loading spinners, Fix responsive layout, Update error messages"`
```
➕ **Creating Multiple Quick Tasks**

📝 **Detected Multiple Tasks**: 3 tasks found

🎯 **Task Breakdown**:

**Task #49: Add Loading Spinners**
- Priority: Medium | Complexity: 2/10
- Category: UI/UX
- Description: "Implement loading spinners for async operations"

**Task #50: Fix Responsive Layout** 
- Priority: Medium | Complexity: 4/10
- Category: Frontend/CSS
- Description: "Resolve responsive layout issues across different screen sizes"

**Task #51: Update Error Messages**
- Priority: Low | Complexity: 2/10  
- Category: UI/Content
- Description: "Improve error message clarity and user-friendliness"

✅ **All Tasks Created Successfully**
- Total: 3 tasks added
- Average Complexity: 2.7/10
- Ready for implementation: All tasks

📊 **Impact on Project**:
- Total tasks: 54 (+3)
- UI/UX tasks: 18 (+3)
- Medium priority tasks: 23 (+2)
```

## Smart Suggestions

### Related Task Detection:
```
💡 **Related Tasks Found**:
- Task #23: "User Registration Flow" (Similar: Authentication)
- Task #31: "Session Management" (Dependency potential)

Would you like to:
- Add dependencies between these tasks? (d)
- Review related tasks for consolidation? (r)
- Continue as standalone task? (c)
```

### Timing Recommendations:
```
⏰ **Timing Suggestion**:
Based on current sprint: Consider adding to next sprint
- Current sprint: 85% capacity used
- This task complexity: Medium (4/10)
- Estimated effort: 6-8 hours

Add to current sprint anyway? (y/n)
```

## Error Handling

1. **No Description Provided**:
   ```
   ❌ Task description required. Usage: /quick-task "description"
   Example: /quick-task "Fix navigation menu styling"
   ```

2. **Description Too Vague**:
   ```
   ⚠️ Task description is too vague: "fix stuff"
   
   Please provide more specific details:
   - What needs to be fixed?
   - Which component/feature?
   - Expected outcome?
   
   Example: /quick-task "Fix navigation menu alignment on mobile devices"
   ```

3. **Potential Duplicate**:
   ```
   🔍 **Potential Duplicate Detected**:
   Similar task exists: Task #23 "User Authentication Setup"
   
   Options:
   - Create anyway (c)
   - View similar task (v)  
   - Modify existing task (m)
   - Cancel creation (x)
   ```

## Integration Features
- Auto-detects project context and patterns
- Suggests optimal task sizing and priorities
- Integrates with existing project workflow
- Updates progress tracking automatically
- Maintains project consistency and standards