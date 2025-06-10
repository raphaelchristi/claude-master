# Update PRD

Update existing Product Requirements Document with changes and propagate impacts to tasks.

## Instructions

1. **Read Current PRD**:
   - Load existing PRD from `.taskmaster/docs/prd.txt`
   - If PRD doesn't exist, suggest using `/create-prd` first
   - Display current PRD structure and key requirements

2. **Interview for Changes**:
   - Ask user what changes are needed:
     - **New Requirements**: Additional features or capabilities
     - **Modified Requirements**: Changes to existing functionality
     - **Removed Requirements**: Features no longer needed
     - **Priority Changes**: Shifts in business priorities
     - **Technical Updates**: Architecture or platform changes
     - **Timeline Adjustments**: Deadline or milestone changes

3. **Update PRD Document**:
   - Apply changes to PRD systematically
   - Maintain document structure and formatting
   - Add change tracking with timestamps
   - Create backup of previous version

4. **Impact Analysis**:
   - Analyze how changes affect existing tasks
   - Identify tasks that need updates, removal, or creation
   - Assess impact on project timeline and dependencies
   - Calculate effort changes and resource requirements

5. **Propagate Changes**:
   - Update affected tasks with new requirements
   - Create new tasks for additional requirements
   - Remove or modify obsolete tasks
   - Adjust priorities and dependencies as needed

6. **Generate Change Report**:
   - Summarize all changes made
   - Highlight impact on project scope and timeline
   - Recommend next steps for implementation

## Change Interview Process

```
📝 **PRD Update Interview**

📋 **Current PRD Summary**:
- Project: E-commerce Platform
- Last Updated: 2024-01-15
- Total Requirements: 45
- Current Tasks: 32 (based on this PRD)

🔄 **What changes do you need to make?**

1. **New Requirements** - Add functionality not currently in PRD
2. **Modify Existing** - Change current requirements
3. **Remove Requirements** - Delete functionality
4. **Change Priorities** - Adjust importance levels
5. **Technical Updates** - Architecture or platform changes
6. **Timeline Changes** - Adjust deadlines or milestones

Please describe the changes you need (or type number for guided flow):
```

### Example: New Requirements
```
➕ **Adding New Requirements**

What new functionality do you want to add?
> "Add real-time chat support for customer service"

📋 **Requirement Details**:
- Feature Name: Real-time Chat Support
- Category: Customer Service
- Priority: High/Medium/Low? > High
- Description: Live chat widget for customer support
- User Story: As a customer, I want to chat with support agents in real-time

🔍 **Additional Details Needed**:
- Integration requirements? (existing support system, CRM)
- Technical constraints? (real-time infrastructure, scaling)
- UI/UX requirements? (chat widget design, mobile support)
- Performance requirements? (response times, concurrent users)
- Security requirements? (data privacy, message encryption)

📊 **Impact Assessment**:
- Estimated new tasks: 8-12
- Affected existing tasks: 3 (authentication, UI framework)
- Timeline impact: +2-3 weeks
- Technical complexity: Medium-High

Add this requirement to PRD? (y/n)
```

### Example: Modify Existing
```
🔄 **Modifying Existing Requirements**

📋 **Current Requirements** (Select to modify):
1. User Authentication System
2. Product Catalog Management  
3. Shopping Cart Functionality
4. Payment Processing
5. Order Management
...

Which requirement do you want to modify? > 3

📋 **Current: Shopping Cart Functionality**
- Description: Standard e-commerce cart with add/remove items
- Priority: High
- Acceptance Criteria: Basic cart operations, persistence

What changes do you want to make?
> "Add support for guest checkout and cart sharing"

🔄 **Proposed Updates**:
- Enhanced Description: Shopping cart with guest checkout and sharing capabilities
- New Acceptance Criteria:
  - [ ] Guest users can checkout without registration
  - [ ] Users can share cart via URL
  - [ ] Cart state preserved across devices
  - [ ] Social sharing integration

📊 **Impact on Existing Tasks**:
- Task #12: "Shopping Cart Component" - Needs expansion
- Task #18: "User Registration Flow" - Now optional for checkout  
- Task #25: "Session Management" - Must handle guest sessions
- New Tasks Needed: 2-3 additional tasks

Apply these changes? (y/n)
```

## Change Tracking

```
📝 **PRD Change Log**

🕒 **Update Session: 2024-01-20 14:30**

➕ **Added Requirements**:
1. **Real-time Chat Support** (Section 4.8)
   - Priority: High
   - Rationale: Customer service enhancement
   - Impact: +8 new tasks, +3 weeks timeline

2. **Advanced Search Filters** (Section 4.3)
   - Priority: Medium  
   - Rationale: User experience improvement
   - Impact: +4 new tasks, +1 week timeline

🔄 **Modified Requirements**:
1. **Shopping Cart Functionality** (Section 4.5)
   - Added: Guest checkout capability
   - Added: Cart sharing features
   - Impact: 3 existing tasks need updates

2. **Payment Processing** (Section 4.6)
   - Changed: Added cryptocurrency payment option
   - Priority: High → Medium (business decision)
   - Impact: 2 existing tasks need updates

❌ **Removed Requirements**:
1. **Social Media Integration** (Section 4.9)
   - Reason: Budget constraints, low priority
   - Impact: -6 tasks removed, -2 weeks saved

📊 **Overall Impact Summary**:
- Net new tasks: +8 tasks
- Modified tasks: 5 tasks  
- Removed tasks: 6 tasks
- Timeline change: +2 weeks (net)
- Scope change: +15% effort increase
```

## Task Impact Analysis

```
🔍 **Task Impact Analysis**

📊 **Affected Tasks Summary**:
- Tasks to Create: 12
- Tasks to Modify: 8  
- Tasks to Remove: 6
- Tasks Unaffected: 18

🆕 **New Tasks Required** (Auto-generated):

**Chat Support Implementation** (8 tasks):
- Task #N+1: "Real-time messaging infrastructure"
- Task #N+2: "Chat widget UI component"
- Task #N+3: "Agent dashboard interface"
- Task #N+4: "Message persistence system"
- Task #N+5: "Notification system integration"
- Task #N+6: "Chat analytics and reporting"
- Task #N+7: "Mobile chat optimization"
- Task #N+8: "Chat security and moderation"

**Enhanced Search** (4 tasks):
- Task #N+9: "Advanced search backend API"
- Task #N+10: "Filter UI components"
- Task #N+11: "Search performance optimization"
- Task #N+12: "Search analytics tracking"

🔄 **Tasks Requiring Updates**:
- Task #12: "Shopping Cart Component" → Add guest checkout
- Task #18: "User Registration" → Make optional for checkout
- Task #25: "Session Management" → Handle guest sessions
- Task #31: "Payment Gateway" → Add crypto payment option
- Task #37: "User Dashboard" → Remove social features

❌ **Tasks to Remove**:
- Task #43: "Facebook Integration"
- Task #44: "Twitter Sharing"
- Task #45: "Instagram Feed"
- Task #46: "Social Login Options"
- Task #47: "Social Analytics"
- Task #48: "Social Media Dashboard"

🎯 **Recommended Actions**:
1. Review and approve new task generation
2. Update existing tasks with new requirements
3. Remove obsolete tasks and dependencies
4. Re-run complexity analysis
5. Update project timeline and milestones
```

## Automated Updates

```
🔄 **Applying PRD Changes to Tasks**

✅ **PRD Updated Successfully**
- File: .taskmaster/docs/prd.txt
- Backup created: .taskmaster/docs/prd-backup-20240120.txt
- Changes tracked in change log

🤖 **Auto-generating New Tasks**...
- Using research model for enhanced task creation
- Applying project context and patterns
- Setting appropriate priorities and dependencies

✅ **12 New Tasks Created** (Tasks #49-60)
- All tasks properly prioritized
- Dependencies set based on existing architecture
- Complexity estimates included

🔄 **Updating Existing Tasks**...
- Updated 8 tasks with new requirements
- Preserved existing progress and status
- Added new acceptance criteria

❌ **Removing Obsolete Tasks**...
- Removed 6 social media related tasks
- Updated dependencies to remove references
- Preserved any completed work for future reference

🔍 **Running Impact Validation**...
- Dependency validation: ✅ No circular dependencies
- Complexity distribution: ✅ Balanced
- Critical path updated: ✅ New timeline calculated

📊 **Final Update Summary**:
- PRD version: 2.1
- Total tasks: 44 (was 32, +12 new, -6 removed, +8 modified)
- Project timeline: +2 weeks (now 10 weeks total)
- Complexity distribution: Healthy
- Ready for development: ✅

🎯 **Next Recommended Steps**:
1. `/complexity` - Analyze new complexity distribution
2. `/task-status` - Review updated project status
3. `/next-task` - Get your next task with new priorities
4. `/break-down` - Consider breaking complex new tasks
```

## Integration Features
- Seamless PRD versioning and backup
- Automated task generation from new requirements
- Intelligent impact analysis and propagation
- Maintains project consistency during changes
- Preserves development progress and history
- Supports iterative requirement refinement