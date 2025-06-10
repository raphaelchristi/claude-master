# Break Down Task

Divide complex tasks into manageable subtasks with proper sequencing and dependencies.

## Arguments
- `$ARGUMENTS` - Task ID to break down (required)

## Instructions

1. **Validate Target Task**:
   - Use `mcp__taskmaster-ai__get_task` to retrieve task details
   - Verify task exists and is appropriate for breakdown
   - Check current complexity score and subtask status
   - Confirm task is not already broken down (unless forced)

2. **Analyze Task Complexity**:
   - Review task description, details, and acceptance criteria
   - Identify logical work units and phases
   - Consider technical dependencies and sequence
   - Assess current complexity vs. target subtask complexity

3. **Generate Subtasks with Research**:
   - Use `mcp__taskmaster-ai__expand_task` with research enabled:
     - `id`: Target task ID from arguments
     - `research=true`: Enable research model for better analysis
     - `force=true`: If task already has subtasks and user confirms
     - `prompt`: Additional context about specific breakdown needs
   - Research model provides technical best practices and patterns

4. **Review Generated Subtasks**:
   - Validate logical sequence and dependencies
   - Ensure each subtask is appropriately sized (complexity 1-4)
   - Check that subtasks cover all aspects of parent task
   - Verify acceptance criteria distribution

5. **Optimize Subtask Structure**:
   - Identify parallel vs. sequential work streams
   - Balance workload across subtasks
   - Ensure clear handoff points between subtasks
   - Add internal dependencies if needed

## Pre-Breakdown Analysis

```
🔍 **Analyzing Task #X for Breakdown**

📋 **Current Task**:
- Title: "Authentication System"
- Complexity: 8/10 (High - Good candidate for breakdown)
- Status: pending
- Current Subtasks: 0

📊 **Breakdown Recommendation**:
- Suggested subtask count: 5-7
- Target complexity per subtask: 2-4
- Estimated breakdown benefit: 40% better predictability

🧠 **Research Analysis**:
- Analyzing authentication patterns and best practices...
- Reviewing similar implementations...
- Identifying technical dependencies...

Proceed with breakdown? (y/n)
```

## Breakdown Process Output

```
🔨 **Breaking Down Task #12: Authentication System**

🧠 **Research Insights Applied**:
- Industry standard authentication flows
- Security best practices for JWT implementation  
- Modern session management patterns
- Testing strategies for auth systems

📋 **Generated Subtasks**:

**#12.1: User Authentication API Design** (Complexity: 3)
- Design REST endpoints for login/logout
- Define JWT token structure and claims
- Specify error handling and status codes
- **Dependencies**: None
- **Estimated**: 4-6 hours

**#12.2: Password Security Implementation** (Complexity: 4)  
- Implement secure password hashing (bcrypt)
- Add password strength validation
- Create password reset token system
- **Dependencies**: 12.1 (API design)
- **Estimated**: 6-8 hours

**#12.3: JWT Token Management** (Complexity: 3)
- Implement token generation and validation
- Add token refresh mechanism
- Handle token expiration logic
- **Dependencies**: 12.1 (API design)
- **Estimated**: 4-6 hours

**#12.4: Session Management** (Complexity: 2)
- Implement session storage (Redis/Memory)
- Add session cleanup and timeout
- Create session middleware
- **Dependencies**: 12.3 (JWT tokens)
- **Estimated**: 3-4 hours

**#12.5: Authentication Middleware** (Complexity: 3)
- Create route protection middleware
- Implement role-based access control
- Add request authentication validation
- **Dependencies**: 12.2, 12.3 (Security + JWT)
- **Estimated**: 4-5 hours

**#12.6: Integration Testing** (Complexity: 2)
- Write comprehensive auth tests
- Test all authentication flows
- Performance and security testing
- **Dependencies**: 12.4, 12.5 (All components)
- **Estimated**: 3-4 hours

🔗 **Dependency Chain**:
12.1 → 12.2, 12.3 → 12.4, 12.5 → 12.6

📊 **Breakdown Summary**:
- Original complexity: 8/10
- New average complexity: 2.8/10  
- Total subtasks: 6
- Estimated total effort: 24-33 hours
- Parallel work streams: 2-3 possible
```

## Quality Validation

1. **Completeness Check**:
   - All aspects of original task covered
   - No missing technical components
   - Acceptance criteria properly distributed

2. **Sizing Validation**:
   - Each subtask is appropriately sized (1-4 complexity)
   - Work can be completed in reasonable timeframe
   - Clear deliverables for each subtask

3. **Dependency Logic**:
   - Dependencies form valid DAG
   - Critical path is optimized
   - Parallel work opportunities identified

## Error Handling

1. **Task Not Found**:
   ```
   ❌ Task #X not found. Use `/task-status` to see available tasks.
   ```

2. **Task Not Complex Enough**:
   ```
   💡 Task #X has complexity 3/10 - may not need breakdown.
   Current subtasks: 0
   
   Break down anyway? This might create unnecessarily small tasks.
   ```

3. **Task Already Broken Down**:
   ```
   📋 Task #X already has 4 subtasks:
   - #X.1: "Subtask 1" (Status: completed)
   - #X.2: "Subtask 2" (Status: in-progress)
   - #X.3: "Subtask 3" (Status: pending)
   - #X.4: "Subtask 4" (Status: pending)
   
   Options:
   - Add more subtasks (a)
   - Replace existing subtasks (r)  
   - Cancel breakdown (c)
   ```

## Integration Features
- Updates parent task status to track subtask progress
- Recalculates project complexity distribution
- Updates critical path and dependency analysis
- Feeds improved estimates to `/next-task`
- Enables more granular progress tracking

## Advanced Options
- `--research-depth`: Control level of research analysis
- `--target-complexity`: Set target complexity for subtasks
- `--parallel-streams`: Optimize for parallel development
- `--skill-based`: Consider team member skills in breakdown