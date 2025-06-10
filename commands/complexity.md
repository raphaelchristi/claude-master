# Complexity Analysis

Analyze task complexity across the project and provide optimization recommendations.

## Instructions

1. **Run Complexity Analysis**:
   - Use `mcp__taskmaster-ai__analyze_project_complexity` with research enabled:
     - `research=true`: Get enhanced analysis with industry benchmarks
     - `threshold=5`: Default complexity threshold for breakdown recommendations
     - `output`: Generate detailed report for future reference

2. **Generate Complexity Report**:
   - Use `mcp__taskmaster-ai__complexity_report` to format analysis
   - Process complexity data into actionable insights
   - Identify patterns and optimization opportunities

3. **Analyze Distribution**:
   - Map complexity across different categories
   - Identify outliers and problem areas
   - Compare actual vs. optimal complexity distribution
   - Assess impact on project timeline and resources

4. **Provide Recommendations**:
   - Tasks requiring immediate breakdown
   - Optimal task sizing strategies
   - Resource allocation suggestions
   - Sprint planning guidance

## Output Format

```
📊 **Project Complexity Analysis**

🎯 **Overview**
- Total Tasks Analyzed: 45
- Average Complexity: 4.2/10
- Complexity Distribution: Healthy ✅
- Tasks Needing Breakdown: 8

📈 **Complexity Distribution**
Simple (1-3):   ████████████████░░░░ 28 tasks (62%)
Medium (4-6):   ████████░░░░░░░░░░░░ 12 tasks (27%)  
Complex (7-10): ████░░░░░░░░░░░░░░░░  5 tasks (11%)

🎨 **By Priority**
High Priority Tasks:
- Average Complexity: 5.8/10
- Range: 2-9
- Distribution: Mostly medium-complex ⚠️

Medium Priority Tasks:  
- Average Complexity: 3.9/10
- Range: 1-7
- Distribution: Well balanced ✅

Low Priority Tasks:
- Average Complexity: 2.1/10  
- Range: 1-4
- Distribution: Appropriately simple ✅

🚨 **High Complexity Tasks** (Recommended for breakdown)

**Task #12: Authentication System** (Complexity: 9/10)
- Risk Level: 🔴 High
- Estimated Effort: 3-4 weeks
- Dependencies: 3 tasks waiting
- **Recommendation**: Break into 6-8 subtasks immediately
- **Impact**: Would unblock critical path

**Task #23: Data Migration Engine** (Complexity: 8/10)
- Risk Level: 🟠 Medium-High  
- Estimated Effort: 2-3 weeks
- Dependencies: 2 tasks waiting
- **Recommendation**: Research and break down
- **Impact**: Affects database migration timeline

**Task #31: Real-time Notification System** (Complexity: 7/10)
- Risk Level: 🟡 Medium
- Estimated Effort: 1-2 weeks
- Dependencies: 1 task waiting  
- **Recommendation**: Consider breakdown or research
- **Impact**: Nice-to-have feature, lower priority

📊 **Complexity Patterns**

🔍 **By Component**:
- Authentication: 6.8/10 (High - needs attention)
- UI Components: 3.2/10 (Good)
- API Endpoints: 4.1/10 (Good)
- Database: 5.9/10 (Medium - monitor)
- Testing: 2.8/10 (Good)

🔄 **Workflow Analysis**:
- Setup Tasks: 2.1/10 (Appropriately simple)
- Core Features: 5.7/10 (Some need breakdown)
- Integration: 6.2/10 (Higher complexity expected)
- Polish/QA: 3.1/10 (Good)

⚖️ **Risk Assessment**

🔴 **High Risk** (3 tasks):
- Complexity > 7 AND has dependencies
- Potential to block other work
- Should be prioritized for breakdown

🟠 **Medium Risk** (5 tasks):  
- Complexity 5-7 with some dependencies
- Monitor and consider breakdown
- May benefit from research phase

🟢 **Low Risk** (37 tasks):
- Complexity < 5 or standalone
- Appropriate sizing for development
- Ready for implementation

🎯 **Optimization Recommendations**

🔥 **Immediate Actions** (Next 1-3 days):
1. **Break down Task #12** (`/break-down 12`)
   - Highest impact on project timeline
   - Blocking 3 other critical tasks
   - Research shows 6-8 subtask pattern

2. **Research Task #23** (`/research 23`)
   - Data migration complexity needs investigation
   - May reveal additional requirements
   - Could affect architecture decisions

🔄 **Short-term Actions** (Next 1-2 weeks):
1. **Review Authentication Strategy**
   - Multiple auth-related tasks are complex
   - Consider unified approach
   - May benefit from technical spike

2. **Break down remaining 7+ complexity tasks**
   - Systematic breakdown of remaining complex tasks
   - Target 3-4 complexity per subtask
   - Will improve predictability

📈 **Long-term Optimizations**:
1. **Component-based Breakdown**
   - Group related functionality
   - Create reusable patterns
   - Reduce cross-component complexity

2. **Skill-based Task Assignment**
   - Match task complexity to developer experience
   - Consider pair programming for complex tasks
   - Build team capability over time

🏃‍♂️ **Sprint Planning Impact**

**Current Sprint Capacity**: Overloaded ⚠️
- 3 high-complexity tasks planned
- Recommended: 1 high + 2-3 medium complexity
- **Suggestion**: Move Task #31 to next sprint

**Next Sprint Recommendations**:
- Focus on broken-down auth subtasks
- Include 1 complex task maximum  
- Balance with 4-5 simple/medium tasks

📊 **Velocity Predictions**
- With current complexity: 15-20 tasks/sprint
- After breakdown optimization: 25-30 tasks/sprint  
- Improved predictability: +40%
- Reduced risk: +60%

⚡ **Quick Actions**:
- `/break-down 12` - Address highest priority complex task
- `/research 23` - Investigate data migration requirements
- `/task-status` - See how breakdown affects overall progress
- `/next-task` - Get next appropriately-sized task
```

## Advanced Analytics

1. **Complexity Trends**:
   - Track complexity changes over time
   - Identify learning curve effects
   - Monitor breakdown effectiveness

2. **Predictive Analysis**:
   - Estimate completion dates based on complexity
   - Risk probability calculations
   - Resource requirement forecasting

3. **Team Performance Correlation**:
   - Match complexity handling to team skills
   - Identify training opportunities
   - Optimize task assignment strategies

## Integration Points
- Feeds into `/break-down` recommendations
- Guides `/next-task` selection algorithm  
- Informs sprint planning decisions
- Supports `/task-status` risk assessment
- Enables data-driven project management