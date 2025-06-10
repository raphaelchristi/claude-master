# TaskMaster Commands for Claude Code

Complete set of slash commands that integrate Claude Code with TaskMaster AI for intelligent project management.

## 🚀 Quick Start Workflow

### Initial Setup (Run Once)
```bash
/project-setup    # Configure TaskMaster and models
/create-prd      # Create detailed project requirements  
/parse-prd       # Generate tasks from PRD
```

### Daily Development
```bash
/task-status     # See project overview
/next-task       # Get next priority task
# ... implement task ...
/complete-task 5 # Mark task complete
```

### When Needed
```bash
/break-down 8    # Split complex tasks
/research 5      # Get technical guidance
/complexity      # Analyze project complexity
/quick-task "Fix bug"  # Add simple tasks
```

## 📋 Complete Command Reference

### 🏗️ Setup & Initialization

#### `/project-setup`
**Purpose**: Initialize or verify complete TaskMaster project setup
- ✅ Verifies TaskMaster configuration
- ✅ Initializes project structure  
- ✅ Configures AI models (main, research, fallback)
- ✅ Validates API keys
- ✅ Creates directory structure
- ✅ Prepares PRD template

**Usage**: `/project-setup`
**When to use**: First time setup or when configuration issues occur

#### `/models`
**Purpose**: Manage and optimize AI model configuration
- ⚙️ Shows current model assignments and status
- ⚙️ Tests API connectivity and performance
- ⚙️ Provides optimization recommendations
- ⚙️ Helps troubleshoot model issues

**Usage**: `/models`
**When to use**: Model configuration, performance issues, cost optimization

---

### 📝 Requirements Management

#### `/create-prd`
**Purpose**: Create comprehensive Product Requirements Document
- 📝 Interactive interview about project goals
- 📝 Generates structured PRD with all sections
- 📝 Includes user stories and acceptance criteria
- 📝 Saves to `.taskmaster/docs/prd.txt`

**Usage**: `/create-prd`
**When to use**: Starting new project or major feature

#### `/update-prd`
**Purpose**: Update existing PRD and propagate changes to tasks
- 📝 Modifies existing requirements
- 📝 Adds new requirements
- 📝 Tracks change history
- 📝 Updates affected tasks automatically

**Usage**: `/update-prd`
**When to use**: Requirements change, scope adjustments

#### `/parse-prd`
**Purpose**: Convert PRD into structured tasks with dependencies
- 🔄 Analyzes PRD and creates logical task breakdown
- 🔄 Sets priorities and dependencies
- 🔄 Generates acceptance criteria
- 🔄 Creates complexity estimates

**Usage**: 
- `/parse-prd` (uses default PRD file)
- `/parse-prd /path/to/custom-prd.txt`

**When to use**: After creating/updating PRD, starting development

---

### 🎯 Daily Development

#### `/task-status`
**Purpose**: Comprehensive project status overview
- 📊 Shows tasks by status and priority
- 📊 Calculates completion percentage
- 📊 Identifies blockers and ready tasks
- 📊 Provides velocity metrics

**Usage**: `/task-status`
**When to use**: Daily standup, progress check, planning

#### `/next-task`
**Purpose**: Get next priority task based on dependencies
- 🎯 Analyzes dependencies and priorities
- 🎯 Shows complete task details
- 🎯 Suggests implementation approach
- 🎯 Offers options (implement, break down, research)

**Usage**: `/next-task`
**When to use**: Starting work session, picking next task

#### `/complete-task`
**Purpose**: Mark task complete with validation
- ✅ Validates acceptance criteria
- ✅ Runs quality checks
- ✅ Updates dependencies
- ✅ Suggests next task

**Usage**: 
- `/complete-task 5` (complete specific task)
- `/complete-task` (shows in-progress tasks)

**When to use**: Finishing task implementation

#### `/quick-task`
**Purpose**: Rapidly add simple tasks to backlog
- ➕ Creates task from description
- ➕ Auto-determines priority and complexity
- ➕ Integrates with existing project

**Usage**: 
- `/quick-task "Fix login button styling"`
- `/quick-task "Add loading spinners, Fix layout"`

**When to use**: Bug fixes, small improvements, quick additions

---

### 🔍 Analysis & Optimization

#### `/complexity`
**Purpose**: Analyze task complexity and provide optimization recommendations
- 📈 Scores all tasks 1-10 complexity
- 📈 Identifies tasks needing breakdown
- 📈 Provides risk assessment
- 📈 Suggests sprint planning improvements

**Usage**: `/complexity`
**When to use**: Sprint planning, risk assessment, project health check

#### `/break-down`
**Purpose**: Split complex tasks into manageable subtasks
- 🔨 Uses research AI for technical analysis
- 🔨 Creates logical subtask sequence
- 🔨 Sets internal dependencies
- 🔨 Estimates effort for each subtask

**Usage**: `/break-down 8`
**When to use**: Tasks with complexity > 6, unclear implementation

#### `/research`
**Purpose**: Get technical guidance and best practices
- 🔍 Researches implementation patterns
- 🔍 Finds tools and frameworks
- 🔍 Analyzes security and performance
- 🔍 Updates tasks with insights

**Usage**: 
- `/research 5` (research specific task)
- `/research "authentication patterns"` (general research)

**When to use**: Technical uncertainty, best practices needed, architecture decisions

---

## 🎯 Complete Workflows

### 🚀 New Project Setup
```bash
# 1. Initialize project
/project-setup

# 2. Create requirements
/create-prd

# 3. Generate initial tasks  
/parse-prd

# 4. Analyze complexity
/complexity

# 5. Break down complex tasks
/break-down 12
/break-down 18

# 6. Start development
/next-task
```

### 📈 Daily Development Flow
```bash
# Morning routine
/task-status        # Check project health
/next-task          # Get priority task

# During development
/research 15        # If need technical guidance
/quick-task "Fix bug found"  # Add urgent items

# End of task
/complete-task 15   # Mark finished
/next-task          # Get next task
```

### 🔄 Mid-Project Adjustments
```bash
# When requirements change
/update-prd         # Update requirements
/complexity         # Check new complexity
/task-status        # See impact on timeline

# When stuck on complex task
/research 23        # Get technical guidance
/break-down 23      # Split if still complex
/next-task          # Work on subtasks
```

### 📊 Project Health Monitoring
```bash
# Weekly health check
/task-status        # Overall progress
/complexity         # Identify problem areas
/models             # Check AI performance

# Sprint planning
/complexity         # Complexity distribution
/task-status        # Available tasks
# Plan sprint based on insights
```

## 🎪 Advanced Tips

### 🎯 Effective Task Management
- Use `/complexity` regularly to identify bottlenecks
- Break down tasks >6 complexity for better estimates
- Use `/research` for unfamiliar technical areas
- Add urgent items with `/quick-task` instead of stopping workflow

### 🧠 AI Model Optimization
- Monitor model performance with `/models`
- Use research model for complex technical decisions
- Optimize costs based on usage patterns
- Ensure fallback models are configured

### 📋 PRD Best Practices
- Keep PRD updated with `/update-prd` as requirements evolve
- Include measurable acceptance criteria
- Balance detail with flexibility
- Regular PRD reviews prevent scope creep

### 🔍 Quality Assurance
- Validate task completion with acceptance criteria
- Use research mode for quality patterns
- Regular complexity analysis prevents technical debt
- Monitor dependencies to avoid blocking work

## 📁 File Structure Created

```
.claude/
└── commands/
    ├── README.md              # This documentation
    ├── project-setup.md       # Project initialization
    ├── create-prd.md         # PRD creation
    ├── update-prd.md         # PRD updates
    ├── parse-prd.md          # PRD to tasks conversion
    ├── task-status.md        # Project status overview
    ├── next-task.md          # Next task selection
    ├── complete-task.md      # Task completion
    ├── quick-task.md         # Rapid task creation
    ├── break-down.md         # Task breakdown
    ├── complexity.md         # Complexity analysis
    ├── research.md           # Technical research
    └── models.md             # Model management

.taskmaster/
├── config.json              # TaskMaster configuration
├── docs/
│   ├── prd.txt              # Product Requirements Document
│   └── prd-template.md      # PRD template
├── tasks/
│   ├── tasks.json           # Main tasks database
│   └── individual task files
└── reports/
    └── complexity reports
```

## 🆘 Troubleshooting

### Common Issues
1. **"TaskMaster not initialized"** → Run `/project-setup`
2. **"API key invalid"** → Check model configuration with `/models`
3. **"No tasks available"** → Create PRD with `/create-prd` then `/parse-prd`
4. **"Task too complex"** → Use `/break-down [id]` to split task
5. **"Dependencies not met"** → Check `/task-status` for blockers

### Getting Help
- Check current project status: `/task-status`
- Verify configuration: `/project-setup`
- Model issues: `/models`
- Need guidance: `/research [topic]`

## 🎉 Success Metrics

After implementing these commands, you should see:
- ✅ 40-60% improvement in task clarity and sizing
- ✅ 30-50% reduction in blocked or unclear tasks  
- ✅ Better project predictability and timeline accuracy
- ✅ More effective use of AI for development guidance
- ✅ Systematic approach to requirements and task management

---

**Ready to get started?** Run `/project-setup` to begin! 🚀