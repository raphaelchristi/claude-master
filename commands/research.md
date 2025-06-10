# Research Task

Use research-enabled AI to investigate task requirements, find best practices, and provide technical guidance.

## Arguments
- `$ARGUMENTS` - Task ID or research topic (required)

## Instructions

1. **Identify Research Target**:
   - If argument is numeric: treat as task ID and research that specific task
   - If argument is text: treat as general research topic
   - Validate task exists if using task ID

2. **Conduct Research Analysis**:
   - For specific task: Use `mcp__taskmaster-ai__update_task` with `research=true`
   - For general topic: Use research model to investigate best practices
   - Focus on technical implementation, industry standards, and proven patterns

3. **Research Areas**:
   - **Technical Patterns**: Best practices for implementation
   - **Architecture**: Recommended approaches and structures  
   - **Tools & Libraries**: Suitable technologies and frameworks
   - **Security**: Security considerations and requirements
   - **Performance**: Optimization opportunities and benchmarks
   - **Testing**: Testing strategies and coverage requirements

4. **Update Task with Insights**:
   - Enhance task description with research findings
   - Add technical implementation details
   - Include recommended tools and approaches
   - Update acceptance criteria based on best practices

5. **Provide Actionable Recommendations**:
   - Specific implementation steps
   - Recommended resources and documentation
   - Potential pitfalls and how to avoid them
   - Alternative approaches and trade-offs

## Task-Specific Research

### Input: `/research 23`
```
🔍 **Researching Task #23: Data Migration Engine**

📋 **Current Task Details**:
- Title: "Data Migration Engine"
- Description: "Build system to migrate data between database versions"
- Complexity: 8/10
- Status: Pending

🧠 **Research Analysis in Progress**...
- Investigating data migration patterns and best practices
- Analyzing database migration strategies
- Reviewing error handling and rollback mechanisms
- Examining performance optimization techniques

📚 **Research Findings**:

**🏗️ Architecture Patterns**:
- **Blue-Green Migration**: Zero-downtime approach with dual environments
- **Incremental Migration**: Gradual data transfer with validation
- **Event-Driven Migration**: Using event sourcing for complex migrations
- **Recommendation**: Incremental approach for your data volume and complexity

**🛠️ Recommended Tools & Technologies**:
- **Primary**: Apache Airflow for orchestration
- **Alternative**: Custom Python scripts with SQLAlchemy
- **Validation**: Great Expectations for data quality
- **Monitoring**: Prometheus + Grafana for migration metrics

**🔒 Security Considerations**:
- Encrypt data in transit using TLS 1.3
- Implement data masking for sensitive fields
- Audit logging for compliance requirements
- Access control with principle of least privilege

**⚡ Performance Optimizations**:
- Batch processing with configurable chunk sizes
- Parallel processing for independent data sets
- Connection pooling for database efficiency
- Progress tracking and resumable operations

**🧪 Testing Strategy**:
- Unit tests for migration logic
- Integration tests with sample data sets
- Load testing with production-scale data
- Rollback testing for failure scenarios

📝 **Updated Task Details**:

**Enhanced Description**:
"Build a robust data migration engine using incremental migration pattern with Apache Airflow orchestration. Support batch processing, error handling, rollback capabilities, and comprehensive monitoring."

**Technical Implementation Plan**:
1. **Setup Migration Framework** (Complexity: 3)
   - Configure Apache Airflow environment
   - Set up database connections and authentication
   - Create base migration classes and interfaces

2. **Data Extraction Module** (Complexity: 4)
   - Implement configurable data readers
   - Add support for multiple database types
   - Include data validation and quality checks

3. **Transformation Engine** (Complexity: 5)
   - Build data transformation pipeline
   - Implement field mapping and conversion rules
   - Add data enrichment and cleanup logic

4. **Loading and Validation** (Complexity: 4)
   - Create batch loading mechanisms
   - Implement data integrity validation
   - Add conflict resolution strategies

5. **Monitoring and Rollback** (Complexity: 3)
   - Build progress tracking and metrics
   - Implement rollback mechanisms
   - Add alerting and error handling

**Updated Acceptance Criteria**:
- [ ] Successfully migrate 1M+ records with <1% error rate
- [ ] Complete migration within 4-hour maintenance window
- [ ] Provide real-time progress monitoring
- [ ] Support rollback within 30 minutes if issues occur
- [ ] Maintain data integrity and foreign key relationships
- [ ] Generate comprehensive migration audit logs

✅ **Task Updated with Research Insights**
- Added technical implementation plan
- Enhanced acceptance criteria with metrics
- Included recommended tools and approaches
- Complexity remains 8/10 but now better understood

🎯 **Next Recommended Actions**:
- `/break-down 23` - Split into the 5 identified subtasks
- Set up Apache Airflow development environment
- Create proof-of-concept with sample data set
```

## General Topic Research

### Input: `/research "authentication patterns for web applications"`
```
🔍 **Researching: Authentication Patterns for Web Applications**

🧠 **Research Analysis**...
- Investigating modern authentication approaches
- Analyzing security best practices and standards
- Reviewing implementation patterns and frameworks

📚 **Research Findings**:

**🔐 Modern Authentication Patterns**:

1. **JWT (JSON Web Tokens)**
   - **Best For**: Stateless APIs, microservices
   - **Pros**: Scalable, self-contained, cross-domain
   - **Cons**: Token size, revocation challenges
   - **Implementation**: Auth0, Firebase Auth, custom

2. **Session-Based Authentication**
   - **Best For**: Traditional web apps, server-side rendering
   - **Pros**: Simple revocation, smaller client storage
   - **Cons**: Server state, scaling challenges
   - **Implementation**: Express-session, Django sessions

3. **OAuth 2.0 / OpenID Connect**
   - **Best For**: Third-party auth, enterprise SSO
   - **Pros**: Standardized, delegated auth, rich ecosystem
   - **Cons**: Complexity, multiple flows
   - **Providers**: Google, Microsoft, Auth0, Okta

4. **Passwordless Authentication**
   - **Best For**: Modern UX, security-focused apps
   - **Pros**: No password vulnerabilities, better UX
   - **Cons**: Dependency on email/SMS, fallback needed
   - **Implementation**: Magic links, WebAuthn, SMS codes

**🛡️ Security Best Practices**:
- **HTTPS Only**: All auth communications encrypted
- **CSRF Protection**: Use CSRF tokens for state-changing operations
- **Rate Limiting**: Prevent brute force attacks
- **Password Security**: bcrypt/scrypt with salt, strength requirements
- **Session Security**: Secure cookies, httpOnly, sameSite
- **Token Expiration**: Short-lived access tokens with refresh tokens

**🏗️ Recommended Architecture**:
```
Frontend ↔ API Gateway ↔ Auth Service ↔ User Database
                ↓
         Rate Limiting & CSRF Protection
```

**🛠️ Implementation Recommendations**:

For **New Projects**:
- Start with JWT + refresh tokens
- Use established library (Passport.js, Django-auth)
- Implement OAuth for social login
- Plan for passwordless migration

For **Existing Projects**:
- Assess current security posture
- Gradual migration to modern patterns
- Maintain backward compatibility
- Comprehensive testing strategy

**📋 Potential Tasks to Create**:
Based on this research, consider these tasks:
- "Implement JWT authentication system"
- "Add OAuth integration with Google/GitHub"
- "Set up session security and CSRF protection"
- "Create passwordless login flow"
- "Add rate limiting for auth endpoints"

🎯 **Apply Research to Project**:
- Use `/quick-task` to add specific auth tasks
- Review existing auth-related tasks for updates
- Consider `/break-down` for complex auth implementations
```

## Domain-Specific Research Examples

### Database Optimization:
- Query performance patterns
- Indexing strategies
- Connection pooling best practices
- ORM vs raw SQL trade-offs

### Frontend Architecture:
- Component design patterns  
- State management approaches
- Performance optimization techniques
- Accessibility implementation

### API Design:
- RESTful design principles
- GraphQL vs REST considerations
- API versioning strategies
- Rate limiting and caching

### DevOps & Deployment:
- CI/CD pipeline best practices
- Container orchestration patterns
- Monitoring and observability
- Infrastructure as code approaches

## Integration Features
- Updates tasks with research-backed improvements
- Provides technology recommendations based on project context
- Identifies potential new tasks based on research findings
- Enhances acceptance criteria with industry standards
- Supports informed technical decision making

## Research Quality Indicators
- ✅ Multiple authoritative sources consulted
- ✅ Current best practices (within 2 years)
- ✅ Appropriate for project scale and complexity
- ✅ Security and performance considerations included
- ✅ Practical implementation guidance provided