# Next Task

Identify and display the next priority task to work on based on dependencies, status, and priority.

## Instructions

1. **Find Next Task**:
   - Use `mcp__taskmaster-ai__next_task` to get algorithmically determined next task
   - Consider dependency resolution, priority, and current status
   - Handle case where no tasks are available

2. **Get Detailed Task Information**:
   - Use `mcp__taskmaster-ai__get_task` with the identified task ID
   - Retrieve complete task details including subtasks
   - Include complexity information if available

3. **Analyze Task Readiness**:
   - Verify all dependencies are satisfied
   - Check if task is too complex and needs breakdown
   - Assess if additional research is needed
   - Identify any potential blockers

4. **Provide Implementation Guidance**:
   - Suggest technical approach based on task description
   - Recommend tools and frameworks if applicable
   - Identify files likely to be affected
   - Propose testing strategy

5. **Present Options**:
   - **Start Implementation**: Begin working on the task
   - **Break Down**: Split complex task into subtasks using `/break-down`
   - **Research**: Get additional context using `/research`
   - **Skip**: Mark as blocked and find alternative task
   - **Update**: Modify task requirements before starting

## Output Format

```
🎯 **Next Recommended Task**

**Task #X: [Title]**
Priority: [High/Medium/Low] | Status: [pending/in-progress] | Complexity: [1-10]

📋 **Description**:
[Task description]

🔧 **Implementation Details**:
[Technical implementation details]

✅ **Acceptance Criteria**:
- [ ] Criterion 1
- [ ] Criterion 2
- [ ] Criterion 3

📊 **Dependencies**:
✅ Task #Y: [Completed dependency]
✅ Task #Z: [Completed dependency]

🔍 **Suggested Approach**:
1. [Step 1]
2. [Step 2] 
3. [Step 3]

📁 **Likely Files to Modify**:
- /path/to/file1.ext
- /path/to/file2.ext

🧪 **Testing Strategy**:
[How to test this task]

⚡ **Quick Actions**:
- `/complete-task X` - Mark as complete when done
- `/break-down X` - Split into subtasks if too complex
- `/research X` - Get additional technical context
- `/task-status` - See overall project status
```

## Edge Cases

1. **No Available Tasks**:
   - All tasks completed → Congratulate and suggest next steps
   - All tasks blocked → Show blockers and suggest resolution
   - No tasks exist → Suggest creating PRD or adding tasks

2. **Task Too Complex**:
   - Complexity score > 7 → Recommend breaking down first
   - Missing technical details → Suggest research mode
   - Unclear requirements → Recommend PRD review

3. **Dependencies Not Met**:
   - Show which dependencies are blocking
   - Suggest alternative tasks that are ready
   - Propose dependency resolution approach

## Integration
- Auto-marks task as "in-progress" if user confirms to start
- Updates last accessed task for better recommendations
- Feeds into `/complete-task` workflow
- Works with complexity analysis from `/complexity`

## Smart Features
- Learns from user preferences and patterns
- Considers estimated task duration
- Factors in team member skills and availability
- Adapts to project velocity and priorities