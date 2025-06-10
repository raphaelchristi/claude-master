# Example 1: New E-commerce Project

This example shows a complete workflow for creating an e-commerce project from scratch using the Claude + TaskMaster integration.

## 🎯 Project Overview
**Goal**: Build a modern e-commerce platform with React, Node.js, and PostgreSQL

## 📋 Complete Workflow

### Step 1: Project Initialization
```bash
cd ~/projects
mkdir awesome-ecommerce
cd awesome-ecommerce

# Initialize TaskMaster
/project-setup
```

**Output:**
```
✅ TaskMaster initialized successfully
✅ AI models configured (OpenAI GPT-4o)
✅ Directory structure created
📁 .taskmaster/
   ├── config.json
   ├── docs/
   ├── tasks/
   └── reports/
```

### Step 2: Requirements Gathering
```bash
/create-prd
```

**Interactive Session:**
```
🤖 What type of project are you building?
👤 An e-commerce platform for selling handmade crafts

🤖 Who are your target users?
👤 Small craft businesses and customers looking for unique handmade items

🤖 What are the key features you need?
👤 User authentication, product catalog, shopping cart, payment processing, order management, seller dashboard

🤖 Any specific technical requirements?
👤 React frontend, Node.js backend, PostgreSQL database, Stripe payments, AWS hosting

🤖 What's your timeline?
👤  3 months for MVP
```

**Generated PRD** (`/.taskmaster/docs/prd.txt`):
```markdown
# Handmade Crafts E-commerce Platform

## Project Overview
A modern e-commerce platform connecting craft sellers with customers, featuring intuitive product discovery and seamless purchasing experience.

## User Stories
- As a seller, I want to create a storefront to showcase my handmade products
- As a customer, I want to browse and purchase unique handmade items
- As an admin, I want to manage the platform and monitor transactions

## Technical Architecture
- Frontend: React with TypeScript
- Backend: Node.js with Express
- Database: PostgreSQL
- Payments: Stripe integration
- Hosting: AWS (EC2, RDS, S3)

## Success Metrics
- 100+ active sellers in first 6 months
- $10K+ monthly transaction volume
- 4.5+ star average seller rating
```

### Step 3: Task Generation
```bash
/parse-prd
```

**Generated Tasks** (15 tasks created):
```
✅ Generated 15 tasks from PRD

📋 Key Tasks Created:
1. Set up project structure and development environment
2. Implement user authentication system
3. Create product catalog and search functionality
4. Build shopping cart and checkout flow
5. Integrate Stripe payment processing
6. Develop seller dashboard and product management
7. Implement order management system
8. Design responsive UI/UX components
9. Set up database schema and migrations
10. Create API endpoints and documentation
...
```

### Step 4: Complexity Analysis
```bash
/complexity
```

**Analysis Report:**
```
📊 Project Complexity Analysis

🔴 High Complexity (7-10):
- Task #5: Stripe payment integration (8/10)
- Task #7: Order management system (7/10)
- Task #10: Real-time notifications (8/10)

🟡 Medium Complexity (4-6):
- Task #2: User authentication (6/10)
- Task #3: Product catalog (5/10)
- Task #6: Seller dashboard (6/10)

🟢 Low Complexity (1-3):
- Task #1: Project setup (2/10)
- Task #8: UI components (3/10)

💡 Recommendation: Break down tasks #5, #7, #10 into subtasks
```

### Step 5: Break Down Complex Tasks
```bash
/break-down 5
```

**Stripe Integration Breakdown:**
```
🔧 Task #5 broken down into 6 subtasks:

5.1 Research Stripe API and setup test account
5.2 Install and configure Stripe SDK
5.3 Create payment intent endpoints
5.4 Implement frontend payment form
5.5 Add webhook handling for payment events
5.6 Test payment flow and error handling

✅ Average subtask complexity: 4/10 (manageable)
```

### Step 6: Daily Development
```bash
/next-task
```

**Recommendation:**
```
🎯 Next Task: #1 - Set up project structure and development environment

📋 Task Details:
- Priority: High
- Complexity: 2/10
- Dependencies: None
- Estimated Time: 2-3 hours

🛠️ Implementation Approach:
1. Initialize React app with TypeScript
2. Set up Node.js backend with Express
3. Configure PostgreSQL database
4. Set up development scripts and environment variables
5. Create basic folder structure

✅ Ready to start - no blockers detected
```

### Step 7: Implementation and Progress
```bash
# After working on task #1
/complete-task 1

# Get next task
/next-task
```

**Completion Validation:**
```
✅ Task #1 completed successfully

📋 Validation Checklist:
✅ React app running on localhost:3000
✅ Node.js server running on localhost:5000
✅ PostgreSQL database connected
✅ Environment variables configured
✅ Basic folder structure created

🎯 Next Recommended Task: #2 - Implement user authentication system
Dependencies satisfied ✅
Ready to proceed 🚀
```

### Step 8: Research Support
```bash
/research 2
```

**Research Output:**
```
🔍 Authentication Implementation Research

📚 Best Practices Found:
- JWT tokens with refresh token rotation
- bcrypt for password hashing (12+ rounds)
- Rate limiting for login attempts
- Email verification workflow
- Password reset functionality

🛠️ Recommended Libraries:
- jsonwebtoken: JWT handling
- bcryptjs: Password hashing
- nodemailer: Email verification
- express-rate-limit: Rate limiting

📖 Implementation Guide:
1. Create User model with validation
2. Implement registration endpoint with email verification
3. Create login endpoint with JWT generation
4. Add middleware for protected routes
5. Implement password reset flow

⚠️ Security Considerations:
- Store JWT secret in environment variables
- Implement proper CORS configuration
- Add input validation and sanitization
- Use HTTPS in production
```

### Step 9: Quick Task Addition
```bash
/quick-task "Add loading spinners to all buttons"
/quick-task "Implement dark mode toggle"
/quick-task "Add product image optimization"
```

**Quick Tasks Added:**
```
✅ 3 quick tasks added to backlog

📝 New Tasks:
#16: Add loading spinners to all buttons (Priority: Low, Complexity: 2/10)
#17: Implement dark mode toggle (Priority: Medium, Complexity: 3/10)  
#18: Add product image optimization (Priority: Medium, Complexity: 4/10)

🎯 Integrated into project workflow
```

### Step 10: Progress Monitoring
```bash
/task-status
```

**Project Status Dashboard:**
```
📊 Awesome E-commerce - Project Status

🎯 Overall Progress: 23% (3/13 tasks completed)

📈 Completion by Priority:
- High Priority: 2/5 completed (40%)
- Medium Priority: 1/6 completed (17%)  
- Low Priority: 0/2 completed (0%)

🔄 Current Status Distribution:
- ✅ Completed: 3 tasks
- 🔄 In Progress: 1 task
- ⏳ Pending: 9 tasks
- 🚫 Blocked: 0 tasks

🎭 Complexity Distribution:
- 🔴 High (7-10): 0/3 completed
- 🟡 Medium (4-6): 2/7 completed
- 🟢 Low (1-3): 1/3 completed

🚀 Velocity: 1.5 tasks/week
📅 Projected Completion: 8 weeks (on track for 3-month goal)

💡 Recommendations:
- Focus on high-priority tasks next
- Consider breaking down Task #7 (order management)
- No blockers detected - good momentum!
```

## 🎯 Key Outcomes

### ✅ **What Was Accomplished**
- **Complete project structure** set up in 30 minutes
- **15 actionable tasks** generated from requirements
- **3 complex tasks** broken down into manageable subtasks
- **Clear development roadmap** with priorities and dependencies
- **Research-backed implementation** guidance for authentication
- **Real-time progress tracking** with velocity metrics

### 📊 **Productivity Gains**
- **60% faster planning** compared to manual task creation
- **40% better task clarity** with AI-generated acceptance criteria
- **Zero missed dependencies** with automated dependency mapping
- **Continuous guidance** for technical implementation decisions

### 🚀 **Next Steps**
```bash
# Continue development workflow
/next-task          # Get next priority task
# ... implement ...
/complete-task X    # Mark complete and get next

# Regular check-ins
/task-status        # Monitor progress
/complexity         # Identify bottlenecks
```

**This example demonstrates how the Claude + TaskMaster integration transforms a 3-month project from concept to structured implementation in under 2 hours of planning time.**