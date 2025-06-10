# Example 2: Legacy API Refactoring Project

This example demonstrates using TaskMaster for a complex refactoring project of an existing legacy API system.

## 🎯 Project Overview
**Goal**: Refactor a monolithic REST API into microservices architecture
**Context**: Legacy Node.js API with 50+ endpoints, performance issues, and maintenance challenges

## 📋 Workflow Demonstration

### Step 1: Project Assessment
```bash
cd ~/projects/legacy-api-refactor

# Initialize TaskMaster for existing project
/project-setup
```

### Step 2: Create Refactoring Requirements
```bash
/create-prd
```

**Interactive Session:**
```
🤖 What type of project are you working on?
👤 Refactoring a legacy monolithic API into microservices

🤖 What are the main challenges you're facing?
👤 Performance bottlenecks, difficult deployments, code maintainability, scaling issues

🤖 What's your target architecture?
👤 Microservices with Docker, API Gateway, separate databases, event-driven communication

🤖 What are your constraints?
👤 Zero downtime deployment, maintain backward compatibility, 6-month timeline, team of 4 developers

🤖 What are your success criteria?
👤 50% performance improvement, independent service deployments, reduced bug reports, better monitoring
```

**Generated PRD** (`.taskmaster/docs/prd.txt`):
```markdown
# Legacy API Refactoring to Microservices

## Current State Analysis
- Monolithic Node.js API with 50+ endpoints
- Single PostgreSQL database
- Manual deployment process
- Performance issues during peak traffic
- Difficult to maintain and scale individual features

## Target Architecture
- 6 microservices: Auth, Users, Products, Orders, Payments, Notifications
- API Gateway (Kong/AWS API Gateway)
- Service mesh for communication
- Event-driven architecture with message queues
- Docker containerization
- CI/CD pipeline with zero-downtime deployments

## Migration Strategy
- Strangler Fig pattern for gradual migration
- Database decomposition with data consistency strategies
- Backward compatibility maintenance
- Progressive traffic routing

## Success Metrics
- 50% reduction in API response times
- Independent service deployment capability
- 90% reduction in deployment time
- Zero-downtime deployments
```

### Step 3: Generate Migration Tasks
```bash
/parse-prd --numTasks 20
```

**Generated Tasks** (20 tasks created):
```
✅ Generated 20 migration tasks

🏗️ Infrastructure & Setup:
1. Set up Docker containerization for existing API
2. Design microservices architecture and boundaries
3. Set up API Gateway and routing configuration
4. Implement service discovery mechanism
5. Set up monitoring and logging infrastructure

🔄 Service Migration:
6. Extract Authentication service from monolith
7. Extract User management service
8. Extract Product catalog service
9. Extract Order processing service
10. Extract Payment processing service
11. Extract Notification service

📊 Data Migration:
12. Design database decomposition strategy
13. Implement data migration scripts
14. Set up cross-service data consistency
15. Implement event sourcing for critical operations

🚀 Deployment & Operations:
16. Set up CI/CD pipeline for microservices
17. Implement blue-green deployment strategy
18. Create service health checks and monitoring
19. Implement automated testing for services
20. Plan and execute production migration
```

### Step 4: Complexity Analysis
```bash
/complexity
```

**Analysis Report:**
```
📊 Refactoring Complexity Analysis

🔴 Critical Complexity (8-10):
- Task #12: Database decomposition strategy (9/10)
- Task #14: Cross-service data consistency (8/10)
- Task #20: Production migration execution (8/10)
- Task #6: Authentication service extraction (8/10)

🟡 High Complexity (6-7):
- Task #9: Order processing service (7/10)
- Task #10: Payment processing service (7/10)
- Task #17: Blue-green deployment (6/10)
- Task #15: Event sourcing implementation (7/10)

🟢 Medium Complexity (3-5):
- Task #1: Docker containerization (4/10)
- Task #3: API Gateway setup (5/10)
- Task #18: Health checks and monitoring (4/10)

⚠️ RISK ALERT: 4 tasks rated 8+ complexity
💡 Recommendation: All critical tasks need breakdown into subtasks
🎯 Suggested approach: Start with containerization and infrastructure
```

### Step 5: Break Down Critical Tasks
```bash
/break-down 12
```

**Database Decomposition Breakdown:**
```
🔧 Task #12: Database decomposition strategy

📋 Broken down into 8 subtasks:

12.1 Audit current database schema and relationships
12.2 Identify service boundaries and data ownership
12.3 Design data migration strategy (shared tables)
12.4 Plan referential integrity across services
12.5 Design event-driven data synchronization
12.6 Create database migration scripts
12.7 Implement distributed transaction handling
12.8 Test data consistency scenarios

💡 Research Topics Added:
- Database per service pattern
- Saga pattern for distributed transactions
- Event sourcing best practices
- Data consistency in microservices
```

```bash
/break-down 6
```

**Authentication Service Extraction:**
```
🔧 Task #6: Extract Authentication service

📋 Broken down into 7 subtasks:

6.1 Analyze current authentication code and dependencies
6.2 Design JWT token service interface
6.3 Create standalone auth service container
6.4 Implement token validation middleware
6.5 Set up user session management
6.6 Create auth service API documentation
6.7 Test authentication flow with other services

⚡ Dependencies Added:
- Requires Task #1 (Docker setup) completion
- Requires Task #4 (Service discovery) planning
```

### Step 6: Research Critical Topics
```bash
/research "microservices data consistency patterns"
```

**Research Results:**
```
🔍 Microservices Data Consistency Research

📚 Key Patterns Identified:

🎯 Saga Pattern:
- Choreography: Events coordinate transactions
- Orchestration: Central coordinator manages flow
- Compensating transactions for rollbacks

🎯 Event Sourcing:
- Store events instead of current state
- Rebuild state from event stream
- Natural audit trail and versioning

🎯 CQRS (Command Query Responsibility Segregation):
- Separate read and write models
- Optimized for different access patterns
- Works well with event sourcing

🛠️ Recommended Implementation:
1. Start with Saga choreography for order processing
2. Use event sourcing for payment transactions
3. Implement CQRS for product catalog reads
4. Use eventual consistency where acceptable

📖 Tools & Libraries:
- Message Queue: RabbitMQ or Apache Kafka
- Event Store: EventStore or PostgreSQL with events table
- Saga Framework: Node.js-saga or custom implementation

⚠️ Considerations:
- Network partitions and failure handling
- Message ordering and idempotency
- Monitoring and debugging distributed transactions
```

### Step 7: Development Workflow
```bash
/next-task
```

**Smart Task Recommendation:**
```
🎯 Next Task: #1 - Set up Docker containerization for existing API

📋 Why This Task:
✅ No dependencies - can start immediately
✅ Foundation for all microservices work
✅ Low complexity (4/10) - good starting point
✅ High impact on development workflow

🛠️ Implementation Approach:
1. Create Dockerfile for existing monolith
2. Set up docker-compose for development
3. Configure environment variables
4. Set up volume mounts for development
5. Test containerized application locally

📦 Expected Deliverables:
- Working Docker container for current API
- docker-compose.yml for local development
- Documented container setup process
- Performance baseline measurements

⏱️ Estimated Time: 1-2 days
```

### Step 8: Implementation Progress
```bash
# After completing Docker setup
/complete-task 1

# Quick addition for monitoring
/quick-task "Add Docker health checks to containers"
/quick-task "Set up container resource limits"

# Get next task
/next-task
```

**Progress Update:**
```
✅ Task #1 completed successfully

📋 Completion Validation:
✅ Dockerfile created and tested
✅ docker-compose.yml configured
✅ Application runs in container
✅ Environment variables properly configured
✅ Development workflow documented

📊 Impact Assessment:
🚀 Development setup time reduced by 75%
📦 Consistent environment across team
🔧 Foundation ready for microservices extraction

🎯 Next Recommended Task: #2 - Design microservices architecture and boundaries

🔄 Updated Dependencies:
- Tasks #6-11 (service extractions) now have Docker foundation
- Ready to proceed with architecture design
```

### Step 9: Architecture Design Phase
```bash
/next-task
```

**Architecture Task Guidance:**
```
🎯 Task #2: Design microservices architecture and boundaries

🔍 Research-Enhanced Approach:
Based on Domain-Driven Design principles and current API analysis

📋 Service Boundary Recommendations:

🔐 Authentication Service:
- Endpoints: /login, /logout, /refresh, /verify
- Data: Users, sessions, tokens
- Dependencies: None (foundational service)

👥 User Management Service:
- Endpoints: /users, /profiles, /preferences
- Data: User details, preferences, profiles
- Dependencies: Authentication service

🛍️ Product Catalog Service:
- Endpoints: /products, /categories, /search
- Data: Products, categories, inventory
- Dependencies: None (read-heavy service)

📦 Order Processing Service:
- Endpoints: /orders, /cart, /checkout
- Data: Orders, cart items, order status
- Dependencies: Users, Products, Payments

💳 Payment Processing Service:
- Endpoints: /payments, /refunds, /billing
- Data: Payment methods, transactions
- Dependencies: Orders, Users

📧 Notification Service:
- Endpoints: /notifications, /templates
- Data: Notification templates, delivery logs
- Dependencies: All services (cross-cutting)

🎯 Implementation Priority:
1. Start with Authentication (foundational)
2. Then User Management (dependent services need it)
3. Product Catalog (independent, high traffic)
4. Payment Processing (complex, needs careful design)
5. Order Processing (orchestrates multiple services)
6. Notifications (cross-cutting, can be last)
```

### Step 10: Progress Monitoring
```bash
/task-status
```

**Mid-Project Status:**
```
📊 Legacy API Refactoring - Project Status

🎯 Overall Progress: 15% (3/20 tasks completed)

📈 Milestone Progress:
🏗️ Infrastructure Setup: 33% (1/3 completed)
🔄 Service Migration: 0% (0/6 completed)
📊 Data Migration: 0% (0/4 completed)
🚀 Deployment Setup: 0% (0/4 completed)

🔄 Current Sprint Status:
- ✅ Completed: 3 tasks (Docker, Research, Architecture)
- 🔄 In Progress: 1 task (Service discovery)
- ⏳ Pending: 16 tasks
- 🚫 Blocked: 0 tasks

⚡ Velocity Analysis:
- Week 1: 1.5 tasks/week (setup phase)
- Week 2: 2.0 tasks/week (accelerating)
- Projected: 2.5 tasks/week (steady state)

📅 Timeline Projection:
- Current pace: 8-10 weeks remaining
- Target: 24 weeks (6 months)
- Status: Ahead of schedule ✅

🎯 Critical Path:
1. Authentication service extraction (Week 3-4)
2. Database decomposition (Week 5-7)
3. Service migration (Week 8-16)
4. Production deployment (Week 17-20)

💡 Recommendations:
- Maintain current velocity
- Begin authentication service extraction next sprint
- Schedule database architecture review with team
- Plan team training on microservices patterns
```

### Step 11: Update Requirements
```bash
/update-prd
```

**Requirements Update:**
```
🔄 PRD Update Session

📝 Changes Based on Progress:

Added Requirements:
- Container health monitoring and alerting
- Service mesh implementation (Istio consideration)
- API versioning strategy for backward compatibility
- Performance testing framework for each service

Updated Timeline:
- Phase 1: Infrastructure (Weeks 1-4) ✅ On track
- Phase 2: Core services (Weeks 5-12) 📋 Ready to start
- Phase 3: Data migration (Weeks 13-18) ⏳ Planned
- Phase 4: Production deployment (Weeks 19-24) ⏳ Planned

Risk Mitigation Added:
- Rollback procedures for each service migration
- Feature flags for gradual traffic shifting
- Automated integration testing between services

✅ PRD updated and tasks regenerated where needed
🔄 Dependencies validated and updated
```

## 🎯 Key Outcomes

### ✅ **What Was Accomplished**
- **Comprehensive migration strategy** developed in 1 week
- **20 structured tasks** with clear priorities and dependencies
- **Complex tasks broken down** into manageable 2-3 day work items
- **Research-backed architecture decisions** with industry best practices
- **Risk identification and mitigation** planning
- **Clear timeline and milestone tracking** for 6-month project

### 📊 **Project Management Benefits**
- **70% reduction** in planning and architecture design time
- **Zero missed dependencies** through automated dependency tracking
- **Continuous risk assessment** with complexity analysis
- **Real-time progress tracking** with velocity metrics
- **Research integration** for technical decision making

### 🚀 **Technical Advantages**
- **Structured approach** to complex legacy system migration
- **Industry best practices** integrated into implementation plan
- **Clear service boundaries** based on domain analysis
- **Comprehensive testing strategy** for each migration phase
- **Rollback and risk mitigation** plans for production deployment

### 📈 **Expected Results**
Based on similar projects using this methodology:
- **50% faster migration** compared to ad-hoc refactoring
- **40% fewer bugs** due to structured testing approach
- **60% better team coordination** with clear task ownership
- **Zero production incidents** during migration phases

**This example shows how TaskMaster transforms complex refactoring projects from overwhelming technical debt into manageable, trackable engineering initiatives.**