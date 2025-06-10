# Example 3: React Native Mobile App Development

This example demonstrates building a cross-platform mobile app using TaskMaster for project management and development workflow.

## 🎯 Project Overview
**Goal**: Build a fitness tracking mobile app with social features
**Platform**: React Native (iOS + Android)
**Timeline**: 4 months MVP

## 📋 Development Workflow

### Step 1: Project Setup
```bash
mkdir fitness-tracker-app
cd fitness-tracker-app

/project-setup
```

### Step 2: Requirements Definition
```bash
/create-prd
```

**Interactive Requirements Session:**
```
🤖 What's your app concept?
👤 A fitness tracking app where users can log workouts, track progress, and share achievements with friends

🤖 Who's your target audience?
👤 Fitness enthusiasts aged 18-45 who want motivation through social sharing and progress tracking

🤖 What are the core features?
👤 Workout logging, progress charts, social feed, challenges, achievement badges, workout plans

🤖 Any specific technical requirements?
👤 React Native, Firebase backend, offline capability, push notifications, camera integration

🤖 Monetization strategy?
👤 Freemium model with premium workout plans and advanced analytics
```

**Generated PRD** (`.taskmaster/docs/prd.txt`):
```markdown
# FitTracker - Social Fitness Mobile App

## Vision
Motivate fitness journeys through social accountability and gamified progress tracking.

## Core Features

### 🏋️ Workout Management
- Exercise database with instructions and videos
- Custom workout creation and scheduling
- Timer and rest period management
- Progress photos and measurements

### 📊 Progress Tracking  
- Weight, reps, and duration tracking
- Visual progress charts and analytics
- Body measurement logging
- Achievement badges and milestones

### 👥 Social Features
- Friend connections and workout sharing
- Weekly challenges and leaderboards
- Achievement celebrations and comments
- Workout plan sharing

### 💰 Premium Features
- Advanced analytics and insights
- Personal trainer workout plans
- Nutrition tracking integration
- Ad-free experience

## Technical Stack
- Frontend: React Native + TypeScript
- State: Redux Toolkit + RTK Query
- Backend: Firebase (Auth, Firestore, Storage)
- Push Notifications: Firebase Cloud Messaging
- Analytics: Firebase Analytics
- Testing: Jest + Detox
```

### Step 3: Task Generation
```bash
/parse-prd --numTasks 25
```

**Generated Tasks** (25 tasks):
```
📱 Mobile App Development Tasks Generated

🏗️ Setup & Configuration (5 tasks):
1. Initialize React Native project with TypeScript
2. Set up development environment (iOS/Android)
3. Configure Firebase project and SDK integration
4. Set up Redux store and navigation structure
5. Configure development tools (ESLint, Prettier, Flipper)

🔐 Authentication & User Management (4 tasks):
6. Implement Firebase authentication flow
7. Create user onboarding and profile setup
8. Build user profile management screens
9. Implement social connections and friend system

🏋️ Core Fitness Features (8 tasks):
10. Create exercise database and search
11. Build workout logging interface
12. Implement timer and rest period functionality
13. Create progress tracking and analytics
14. Build workout history and calendar view
15. Implement photo capture for progress tracking
16. Create achievement and badge system
17. Build workout plan creation and sharing

👥 Social Features (4 tasks):
18. Implement social feed and activity sharing
19. Create weekly challenges system
20. Build leaderboards and competition features
21. Add comment and reaction functionality

📱 Mobile Experience (4 tasks):
22. Implement push notifications
23. Add offline data synchronization
24. Optimize performance and add loading states
25. Implement deep linking and sharing
```

### Step 4: Complexity Analysis
```bash
/complexity
```

**Complexity Report:**
```
📊 Mobile App Complexity Analysis

🔴 High Complexity (7-10):
- Task #23: Offline data synchronization (9/10)
- Task #14: Progress tracking analytics (8/10)
- Task #19: Weekly challenges system (7/10)
- Task #17: Workout plan sharing (7/10)

🟡 Medium Complexity (4-6):
- Task #6: Firebase authentication (6/10)
- Task #11: Workout logging interface (5/10)
- Task #18: Social feed implementation (6/10)
- Task #22: Push notifications (5/10)

🟢 Low Complexity (1-3):
- Task #1: Project initialization (2/10)
- Task #7: User onboarding (3/10)
- Task #12: Timer functionality (3/10)

📱 Mobile-Specific Considerations:
- Cross-platform compatibility testing needed
- Performance optimization for older devices
- App store submission requirements
- Platform-specific UI guidelines

💡 Recommendations:
- Break down offline sync (Task #23) - critical for UX
- Prioritize core workout features before social
- Plan incremental releases for app stores
```

### Step 5: Break Down Complex Features
```bash
/break-down 23
```

**Offline Synchronization Breakdown:**
```
🔧 Task #23: Offline data synchronization

📋 Broken into 8 subtasks:

23.1 Research offline-first architecture patterns
23.2 Design local SQLite database schema
23.3 Implement data caching and storage layer
23.4 Create sync queue for pending operations
23.5 Build conflict resolution for concurrent edits
23.6 Implement background sync when online
23.7 Add sync status indicators in UI
23.8 Test offline scenarios and edge cases

🛠️ Technical Approach:
- Redux Persist for state management
- SQLite for local data storage
- Queue system for pending API calls
- Timestamp-based conflict resolution

📚 Research Topics:
- Offline-first mobile app patterns
- SQLite performance optimization
- Redux Persist configuration
- Network state management in React Native
```

```bash
/break-down 14
```

**Progress Analytics Breakdown:**
```
🔧 Task #14: Progress tracking and analytics

📋 Broken into 6 subtasks:

14.1 Design analytics data models and schemas
14.2 Implement workout data aggregation
14.3 Create chart components (line, bar, progress)
14.4 Build personal records and milestone tracking
14.5 Add data export and sharing functionality
14.6 Implement advanced insights and recommendations

📊 Analytics Features:
- Workout frequency and consistency tracking
- Strength progression over time
- Body measurement changes
- Personal record achievements
- Training volume analysis

🎯 Visualization Components:
- Victory Native for charts
- Custom progress indicators
- Interactive timeline views
- Comparison charts (goals vs actual)
```

### Step 6: Development Sprint Planning
```bash
/next-task
```

**Sprint 1 Recommendation:**
```
🎯 Next Task: #1 - Initialize React Native project with TypeScript

📋 Sprint 1 Plan (2 weeks):
✅ Task #1: Project initialization (2 days)
✅ Task #2: Development environment setup (1 day)  
✅ Task #3: Firebase configuration (2 days)
✅ Task #4: Redux and navigation setup (3 days)
✅ Task #5: Development tools configuration (1 day)
✅ Task #6: Basic authentication flow (3 days)

🎯 Sprint Goal: Working app skeleton with authentication

📱 Deliverables:
- React Native app running on iOS/Android simulators
- Firebase authentication working
- Basic navigation structure
- Redux store configured
- Development workflow established

⏱️ Timeline: Days 1-14
👥 Team: 2 React Native developers
```

### Step 7: Implementation Progress
```bash
# After completing setup tasks
/complete-task 1,2,3,4,5

# Check progress
/task-status
```

**Sprint 1 Results:**
```
✅ Sprint 1 Completed Successfully

📊 Progress Summary:
- 5/5 setup tasks completed ✅
- Project foundation established ✅
- Team velocity: 2.5 tasks/week
- No blockers encountered ✅

📱 Technical Achievements:
✅ React Native 0.72 with TypeScript configured
✅ iOS and Android builds working
✅ Firebase SDK integrated and tested
✅ Redux Toolkit store with persistence
✅ React Navigation v6 configured
✅ Development tools and debugging setup

🎯 Ready for Sprint 2: Core Features Development
```

### Step 8: Feature Development Sprint
```bash
/next-task
```

**Sprint 2 Planning:**
```
🎯 Next Priority: Core Workout Features

📋 Sprint 2 Tasks (Weeks 3-4):
- Task #6: Firebase authentication flow ✅ Started
- Task #10: Exercise database and search
- Task #11: Workout logging interface  
- Task #12: Timer and rest period functionality

🏋️ Feature Focus: Basic workout logging capability

📱 User Stories to Complete:
- As a user, I can sign up and log in
- As a user, I can browse exercises with instructions
- As a user, I can log my workout with sets and reps
- As a user, I can use built-in workout timer

🎯 Sprint Goal: Users can complete their first workout in the app
```

### Step 9: Research Integration
```bash
/research "React Native workout timer implementation"
```

**Research Results:**
```
🔍 React Native Workout Timer Research

⏱️ Implementation Approaches:

🎯 Background Timer Solutions:
1. React Native Background Timer
   - Pros: Simple API, good for basic timers
   - Cons: Limited background execution on iOS

2. React Native Background Job
   - Pros: More reliable background execution
   - Cons: More complex setup, platform differences

3. Expo TaskManager (if using Expo)
   - Pros: Consistent cross-platform behavior
   - Cons: Limited to Expo managed workflow

🎯 Recommended Implementation:
```typescript
// Timer Hook with Background Support
import BackgroundTimer from 'react-native-background-timer';
import { AppState } from 'react-native';

const useWorkoutTimer = () => {
  const [seconds, setSeconds] = useState(0);
  const [isActive, setIsActive] = useState(false);
  
  useEffect(() => {
    let interval: number;
    
    if (isActive) {
      interval = BackgroundTimer.setInterval(() => {
        setSeconds(s => s + 1);
      }, 1000);
    }
    
    return () => BackgroundTimer.clearInterval(interval);
  }, [isActive]);
  
  return { seconds, isActive, start, pause, reset };
};
```

🔔 Additional Features to Consider:
- Audio cues for rest periods
- Vibration patterns for notifications
- Custom interval training support
- Voice countdown announcements

📱 Platform Considerations:
- iOS: Request background app refresh permission
- Android: Handle doze mode and app optimization
- Both: Graceful handling of app state changes
```

### Step 10: Quick Feature Additions
```bash
/quick-task "Add haptic feedback for timer notifications"
/quick-task "Implement exercise GIF loading and caching"
/quick-task "Add dark mode theme support"
/quick-task "Create onboarding tutorial screens"
```

**Feature Enhancements:**
```
✅ 4 enhancement tasks added

📱 UX Improvements:
#26: Haptic feedback for timers (Priority: Medium, 2 days)
#27: Exercise GIF optimization (Priority: High, 3 days)
#28: Dark mode theme (Priority: Low, 2 days)
#29: Onboarding tutorial (Priority: High, 4 days)

🎯 Integration Notes:
- Haptic feedback enhances timer UX significantly
- GIF caching critical for exercise database performance
- Dark mode increasingly expected by users
- Onboarding reduces user drop-off rates

📋 Recommended Timing:
- Add haptic feedback during timer implementation
- Implement GIF caching with exercise database
- Dark mode can be added in later sprint
- Onboarding should come after core features are stable
```

### Step 11: Mid-Project Status Check
```bash
/task-status
```

**Project Health Dashboard:**
```
📊 FitTracker Mobile App - Week 6 Status

🎯 Overall Progress: 35% (9/25 tasks completed + 4 added)

📱 Feature Completion:
🏗️ Setup & Configuration: 100% (5/5) ✅
🔐 Authentication: 75% (3/4) 🔄
🏋️ Core Fitness: 25% (2/8) 🔄
👥 Social Features: 0% (0/4) ⏳
📱 Mobile Experience: 0% (0/4) ⏳

🚀 Development Velocity:
- Week 1-2: 2.5 tasks/week (setup phase)
- Week 3-4: 2.0 tasks/week (core features)
- Week 5-6: 2.5 tasks/week (steady development)
- Average: 2.3 tasks/week

📅 Timeline Analysis:
- Original estimate: 16 weeks (25 tasks)
- Current pace: 12.6 weeks remaining
- Added features: +2 weeks
- Projected completion: Week 18 (4.5 months)
- Status: Slightly behind, within acceptable range

🎯 Current Sprint Status:
- ✅ Authentication flow completed
- 🔄 Exercise database 80% complete
- 🔄 Workout logging UI in development
- ⏳ Timer functionality ready to start

⚠️ Risk Assessment:
- 🟡 Offline sync complexity may impact timeline
- 🟡 App store review process not yet planned
- 🟢 Team velocity stable and predictable
- 🟢 No technical blockers identified

💡 Recommendations:
- Maintain current sprint pace
- Begin app store preparation planning
- Consider beta testing program for week 12
- Schedule offline sync architecture review
```

### Step 12: Feature Validation
```bash
/complete-task 10,11,12
```

**Core Features Milestone:**
```
✅ Core Workout Features Completed

📱 Feature Validation Results:

🏋️ Exercise Database:
✅ 500+ exercises with instructions loaded
✅ Search and filter functionality working
✅ GIF animations cached and optimized
✅ Category browsing implemented

📝 Workout Logging:
✅ Set/rep/weight tracking functional
✅ Exercise substitution working
✅ Workout templates created
✅ Quick log feature implemented

⏱️ Timer System:
✅ Rest timer with audio/vibration alerts
✅ Background timer functionality tested
✅ Custom interval support added
✅ Workout stopwatch integrated

🧪 Testing Results:
- iOS Simulator: All features working ✅
- Android Emulator: All features working ✅
- Physical Device Testing: 95% success rate ✅
- Performance: Smooth on iPhone 8+ / Android API 24+ ✅

👥 User Feedback (Internal Testing):
- "Exercise database is comprehensive and easy to navigate"
- "Workout logging feels natural and quick"
- "Timer alerts are perfectly timed and not annoying"
- "App feels responsive and polished"

🎯 Ready for Next Phase: Social Features Implementation
```

## 🎯 Key Outcomes

### ✅ **Development Achievements**
- **Complete mobile app foundation** built in 6 weeks
- **Core workout features** fully functional and tested
- **25+ structured tasks** with clear mobile-specific considerations
- **Research-backed technical decisions** for complex features like offline sync
- **Continuous user experience focus** with haptic feedback and smooth animations

### 📱 **Mobile-Specific Benefits**
- **Cross-platform compatibility** ensured from day one
- **Performance optimization** planned for various device capabilities
- **Offline-first architecture** designed for unreliable network conditions
- **Platform guidelines adherence** for iOS and Android
- **App store readiness** considerations integrated throughout

### 📊 **Project Management Results**
- **60% faster feature planning** compared to traditional mobile development
- **Zero technical debt** through structured task breakdown
- **Predictable delivery timeline** with velocity tracking
- **Risk identification** for complex mobile features (offline sync, background timers)
- **Quality assurance** built into every sprint

### 🚀 **Technical Innovations**
- **Modern React Native architecture** with TypeScript and Redux Toolkit
- **Firebase integration** optimized for mobile use cases
- **Background processing** properly handled for both iOS and Android
- **Performance monitoring** integrated from development start
- **Accessibility considerations** planned throughout development

### 📈 **Expected Market Results**
Based on similar fitness apps using this development approach:
- **40% faster time-to-market** compared to traditional mobile development
- **50% fewer post-launch bugs** due to structured testing approach
- **Higher user retention** due to focus on core UX features first
- **Successful app store approval** with proper preparation planning

**This example demonstrates how TaskMaster transforms mobile app development from complex technical challenges into manageable, trackable development sprints with clear user value delivery.**