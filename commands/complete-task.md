# Complete Task

Mark task as complete after validation and quality checks.

## Arguments
- `$ARGUMENTS` - Task ID to complete (optional - if not provided, shows in-progress tasks)

## Instructions

1. **Identify Target Task**:
   - If `$ARGUMENTS` provided, use that task ID
   - If no arguments, show all in-progress tasks and ask user to select
   - Validate task exists and is in appropriate state

2. **Pre-Completion Validation**:
   - Use `mcp__taskmaster-ai__get_task` to retrieve full task details
   - Review acceptance criteria and implementation requirements
   - Check if all subtasks are completed (if any exist)
   - Verify dependencies are properly satisfied

3. **Quality Gates**:
   - **Code Quality**: Suggest running linters, formatters
   - **Testing**: Verify tests exist and pass
   - **Documentation**: Check if documentation updates needed
   - **Integration**: Confirm integration with dependent tasks
   - **Review**: Consider if peer review is required

4. **Complete Task**:
   - Use `mcp__taskmaster-ai__set_task_status` with `status="done"`
   - Update any dependent tasks that become unblocked
   - Generate completion timestamp and metrics

5. **Post-Completion Actions**:
   - Run `mcp__taskmaster-ai__next_task` to suggest next task
   - Update project progress metrics
   - Check if completion unlocks new tasks
   - Identify any follow-up tasks needed

## Interactive Flow

### No Arguments Provided:
```
🔄 **Tasks In Progress**

1. Task #12: "Authentication System" (Started 2 days ago)
   Priority: High | Complexity: 7 | Dependencies: ✅

2. Task #25: "API Endpoints" (Started 3 hours ago)  
   Priority: Medium | Complexity: 5 | Dependencies: ✅

3. Task #31: "Error Handling" (Started 1 day ago)
   Priority: Low | Complexity: 3 | Dependencies: ✅

Which task would you like to complete? (Enter task ID or 'all' to review each)
```

### With Task ID:
```
✅ **Completing Task #12: Authentication System**

📋 **Task Details**:
Priority: High | Complexity: 7 | Started: 2 days ago

🎯 **Acceptance Criteria**:
- [ ] User login with email/password ← Review needed
- [ ] JWT token generation ← Review needed  
- [ ] Session management ← Review needed
- [ ] Password reset flow ← Review needed

❓ **Quality Checklist**:
- [ ] Code follows project standards
- [ ] Unit tests written and passing
- [ ] Integration tests cover key flows
- [ ] Error handling implemented
- [ ] Security best practices followed
- [ ] Documentation updated

Have you completed all acceptance criteria and quality checks? (y/n)
```

## Quality Validation Prompts

1. **Technical Validation**:
   ```
   🔧 **Technical Review**:
   - Are all acceptance criteria met?
   - Have you tested the implementation?
   - Is the code ready for integration?
   - Any technical debt or cleanup needed?
   ```

2. **Integration Validation**:
   ```
   🔗 **Integration Check**:
   - Does this work with dependent tasks?
   - Any breaking changes introduced?
   - Documentation updated?
   - Stakeholders notified if needed?
   ```

## Success Output

```
🎉 **Task #12 Completed Successfully!**

📊 **Completion Summary**:
- Task: "Authentication System"
- Duration: 2 days, 4 hours
- Complexity: 7/10 (as estimated)
- Dependencies resolved: 3 tasks now unblocked

🔓 **Newly Available Tasks**:
- Task #18: "User Profile Management" (High Priority)
- Task #22: "Session Security" (Medium Priority)
- Task #26: "OAuth Integration" (Low Priority)

🎯 **Next Recommended Task**:
Task #18: "User Profile Management" - Ready to start immediately

⚡ **Quick Actions**:
- `/next-task` - Get detailed next task info
- `/task-status` - See updated project progress
- `/break-down 18` - Break down next task if complex
```

## Error Handling

1. **Task Not Found**:
   ```
   ❌ Task #X not found. Use `/task-status` to see available tasks.
   ```

2. **Task Already Complete**:
   ```
   ✅ Task #X is already marked as complete.
   Completed on: [date] | Duration: [time]
   ```

3. **Dependencies Not Met**:
   ```
   🚫 Cannot complete Task #X - dependencies not satisfied:
   - Task #Y: "Dependency Name" (Status: in-progress)
   - Task #Z: "Another Dependency" (Status: pending)
   ```

4. **Subtasks Incomplete**:
   ```
   📋 Cannot complete Task #X - subtasks pending:
   - Subtask #X.1: "Sub-task Name" (Status: pending)
   - Subtask #X.2: "Another Sub-task" (Status: in-progress)
   
   Complete subtasks first or mark parent as partial completion.
   ```

## Integration Features
- Auto-updates dependent task status
- Triggers recalculation of critical path
- Updates velocity and progress metrics
- Feeds into `/next-task` algorithm
- Logs completion for historical analysis

## Advanced Options
- `--force` - Skip validation (for emergency completion)
- `--partial` - Mark as partially complete with notes
- `--review` - Mark as complete pending review
- `--merge` - Combine with another task completion