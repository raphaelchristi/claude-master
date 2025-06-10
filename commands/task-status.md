# Task Status

Comprehensive overview of project status, task distribution, and progress analytics.

## Instructions

1. **Retrieve All Tasks**:
   - Use `mcp__taskmaster-ai__get_tasks` with `withSubtasks=true`
   - Get complete task hierarchy and status information
   - Include complexity report data if available

2. **Calculate Progress Metrics**:
   - **Completion Percentage**: Completed tasks / Total tasks
   - **Velocity**: Tasks completed in recent period
   - **Bottlenecks**: Tasks in-progress too long
   - **Blocked Tasks**: Tasks waiting on dependencies
   - **Ready Tasks**: Tasks available to start

3. **Analyze Task Distribution**:
   - Group by status (pending, in-progress, completed, blocked, etc.)
   - Group by priority (high, medium, low)
   - Group by complexity (simple 1-3, medium 4-6, complex 7-10)
   - Identify patterns and potential issues

4. **Dependency Analysis**:
   - Run `mcp__taskmaster-ai__validate_dependencies` for health check
   - Identify critical path and bottlenecks
   - Find tasks that are blocking others
   - Suggest optimization opportunities

5. **Generate Actionable Insights**:
   - Recommend immediate actions
   - Highlight urgent priorities
   - Identify resource allocation needs
   - Suggest process improvements

## Output Format

```
📊 **Project Status Dashboard**

🎯 **Overall Progress**
█████████░░ 75% Complete (45/60 tasks)

📈 **Key Metrics**
- Total Tasks: 60
- Completed: 45 (75%)
- In Progress: 8 (13%)
- Pending: 5 (8%)  
- Blocked: 2 (3%)

⏱️ **Velocity Tracking**
- Tasks completed this week: 12
- Average completion time: 2.3 days
- Estimated completion: 5 days

🎨 **By Priority**
- High Priority: ██████████ 15/15 (100%)
- Medium Priority: ███████░░░ 25/35 (71%)
- Low Priority: █████░░░░░ 5/10 (50%)

📊 **By Complexity**
- Simple (1-3): ████████░░ 20/25 (80%)
- Medium (4-6): ███████░░░ 20/30 (67%)
- Complex (7-10): █████░░░░░ 5/10 (50%)

🚧 **Current Blockers**
⚠️ Task #23: "API Integration" - Waiting for external service
⚠️ Task #31: "Database Migration" - Blocked by Task #29

🎯 **Ready to Start** (3 tasks)
🟢 Task #15: "User Profile Component" (Priority: High, Complexity: 5)
🟢 Task #27: "Input Validation" (Priority: Medium, Complexity: 3)
🟢 Task #33: "Error Handling" (Priority: Medium, Complexity: 4)

🏃‍♂️ **In Progress** (8 tasks)
🔄 Task #12: "Authentication System" (Started 2 days ago)
🔄 Task #18: "Database Schema" (Started 1 day ago)
🔄 Task #25: "API Endpoints" (Started 3 hours ago)
...

⚡ **Immediate Actions Needed**
1. 🔴 Review blocked tasks - resolve external dependencies
2. 🟡 Task #12 in progress for 2 days - check if help needed
3. 🟢 Consider breaking down complex pending tasks
4. 🔵 3 high-priority tasks ready to start

📁 **Recent Completions** (Last 7 days)
✅ Task #8: "Project Setup" (Completed 1 day ago)
✅ Task #14: "Basic Routing" (Completed 2 days ago)
✅ Task #19: "Component Library" (Completed 3 days ago)
...

🎲 **Next Recommendations**
- Run `/next-task` to get your next assignment
- Use `/break-down 34` for complex pending tasks
- Consider `/research 23` for blocked API integration
- Review `/complexity` for optimization opportunities

🏆 **Milestones**
✅ Alpha Release: 100% (Target: Week 2)
🔄 Beta Release: 60% (Target: Week 4)
⏳ Production Release: 15% (Target: Week 8)
```

## Advanced Analytics

1. **Burndown Chart** (text-based):
   ```
   Tasks Remaining
   60 ┤
   50 ┤  ╭─╮
   40 ┤  │ ╰─╮
   30 ┤  │   ╰─╮
   20 ┤  │     ╰─╮
   10 ┤  │       ╰─╮
    0 ┤  │         ╰─
      Week 1  2  3  4  5
   ```

2. **Risk Assessment**:
   - High-risk tasks (complex + dependencies)
   - Resource bottlenecks
   - Timeline concerns
   - Technical debt indicators

3. **Team Performance**:
   - Average task completion time by complexity
   - Success rate for estimates
   - Productivity trends

## Quality Checks
- ✅ All metrics are current and accurate
- ✅ Blocked tasks have clear resolution paths  
- ✅ Progress aligns with project timeline
- ✅ Resource allocation is balanced
- ✅ Critical path is clear and optimized

## Integration Points
- Feeds data to `/next-task` for prioritization
- Informs `/complexity` analysis
- Guides `/break-down` decisions
- Supports sprint planning and retrospectives