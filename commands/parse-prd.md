# Parse PRD into Tasks

Convert Product Requirements Document into structured tasks with dependencies and priorities.

## Arguments
- `$ARGUMENTS` - Optional PRD file path (defaults to `.taskmaster/docs/prd.txt`)

## Instructions

1. **Validate PRD File**:
   - Check if PRD file exists (use `$ARGUMENTS` if provided, else default path)
   - Verify file is readable and has content
   - If file missing, suggest using `/create-prd` first

2. **Parse PRD with TaskMaster**:
   - Use `mcp__taskmaster-ai__parse_prd` with appropriate parameters:
     - `projectRoot`: Current working directory
     - `input`: PRD file path from arguments or default
     - `research`: Enable for better task analysis
     - `numTasks`: Estimate based on PRD complexity (suggest 10-20 for typical projects)
   - Handle any errors gracefully

3. **Review Generated Tasks**:
   - Use `mcp__taskmaster-ai__get_tasks` to retrieve all tasks
   - Analyze task structure:
     - Verify all requirements are covered
     - Check dependency logic
     - Validate priority assignments
     - Assess complexity distribution

4. **Quality Validation**:
   - **Completeness**: All PRD requirements mapped to tasks
   - **Dependencies**: Logical sequence and no circular references
   - **Priorities**: Aligned with business objectives
   - **Granularity**: Tasks are actionable but not too small
   - **Acceptance Criteria**: Clear and testable

5. **Post-Processing**:
   - Run `mcp__taskmaster-ai__validate_dependencies` to check for issues
   - If dependency issues found, run `mcp__taskmaster-ai__fix_dependencies`
   - Generate individual task files with `mcp__taskmaster-ai__generate`

6. **Analysis and Recommendations**:
   - Run `mcp__taskmaster-ai__analyze_project_complexity` for complexity assessment
   - Identify tasks that may need breakdown
   - Suggest starting tasks based on dependencies

## Quality Checks
- [ ] All PRD requirements have corresponding tasks
- [ ] Dependencies form valid DAG (no circles)
- [ ] Priorities reflect business value
- [ ] Tasks have clear acceptance criteria
- [ ] Complexity distribution is reasonable
- [ ] Critical path is identifiable

## Output Format

Provide comprehensive summary:

```
📋 PRD Parsing Results

📊 **Task Statistics**:
- Total tasks generated: X
- By priority: High (X), Medium (X), Low (X)
- By status: All pending
- Estimated effort: X story points

🔗 **Dependencies**:
- Total dependency relationships: X
- Average dependencies per task: X
- Critical path length: X tasks

📈 **Complexity Analysis**:
- Simple tasks (1-3): X
- Medium tasks (4-6): X  
- Complex tasks (7-10): X
- Tasks needing breakdown: X

🎯 **Recommended Starting Tasks**:
1. Task #X: [Title] - [Reason]
2. Task #X: [Title] - [Reason]
3. Task #X: [Title] - [Reason]

📁 **Files Generated**:
- Tasks file: .taskmaster/tasks/tasks.json
- Individual task files: .taskmaster/tasks/
- Complexity report: .taskmaster/reports/

🚀 **Next Steps**:
- Review complex tasks with `/complexity`
- Break down complex tasks with `/break-down [id]`
- Start development with `/next-task`
```

## Error Handling
- PRD file not found → Suggest `/create-prd`
- Parsing failures → Check PRD format and content
- TaskMaster not initialized → Suggest `/project-setup`
- Model errors → Check API keys and model configuration

## Integration
- Works with results from `/create-prd`
- Feeds into `/next-task`, `/complexity`, `/break-down`
- Prerequisites for most development commands