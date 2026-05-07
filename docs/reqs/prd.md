# Prooflane — Product Requirements Document (PRD)

## 1. Vision

Build the trust layer for technical hiring by measuring real-world engineering readiness beyond resumes and puzzle-based interviews.

Evolve into a comprehensive engineering skill ecosystem focused on practical engineering readiness, bridging the gap between learning, practice, and trusted hiring signals.

## 2. Mission

Help candidates prove practical skills and help companies hire based on verified evidence.

Empower engineers to practice and master real-world engineering skills through a public problem-solving platform, while providing recruiters with trusted hiring signals.

## 3. Problem Statement

Current hiring systems are inefficient and noisy:

- Resumes are inflated or unverifiable
- DSA rounds miss day-to-day engineering ability
- Portfolios may be copied or AI-generated
- Recruiters lack time for deep screening
- Strong candidates are filtered out unfairly
- Companies make costly bad hires

Additionally, engineers lack structured platforms for practicing real-world engineering skills:

- DSA platforms dominate but don't reflect production engineering
- Limited resources for practicing debugging, system design, and code review
- No unified ecosystem connecting practice to hiring signals
- Engineers struggle to demonstrate practical readiness outside interviews

## 4. Target Users

### Primary Users

1. Students / early-career engineers
2. Recruiters / hiring managers
3. Startups hiring quickly

### Secondary Users

4. Colleges / placement cells
5. Bootcamps
6. Internal talent teams

## 5. Product Positioning

Prooflane is NOT:

- Another DSA platform
- Generic coding challenge website
- Puzzle-only assessment tool

Prooflane IS:

- Practical engineering skill validation platform
- Real-world engineering training ecosystem
- Hiring signal platform focused on production readiness

### Core Focus Areas

- Real engineering thinking
- Debugging and root cause analysis
- Systems reasoning and tradeoffs
- Practical backend knowledge
- Production problem-solving skills

---

## 6. Core Value Proposition

### For Candidates

Prove readiness through realistic, trusted assessments and practice real-world engineering skills through public problem-solving.

### For Recruiters

Shortlist candidates using job-relevant skill signals and access a community of practice-ready engineers.

### For Colleges

Benchmark student readiness and improve placement outcomes through practical skill validation.

### For Engineers (Problems Mode)

Build practical engineering skills through structured practice on real-world problems, track progress, and showcase verified capabilities.

## 7. Product Modes

Prooflane operates in two major modes:

### Assessment Mode (Company-Controlled)

Recruiter/company controlled environment focused on hiring evaluation.

**Purpose:**
- Hiring evaluation
- Trusted scoring
- Recruiter workflows

**Characteristics:**
- Timed assessments
- Anti-cheat telemetry
- Restricted visibility
- Recruiter analytics
- Company-controlled question sets

### Problems Mode (Public Platform)

Public engineering problem practice system similar to LeetCode ecosystem, but focused on real-world engineering problems.

**Purpose:**
- Learning and skill building
- Retention and engagement
- Community growth
- Practice and mastery

**Characteristics:**
- Public problem access
- Self-paced practice
- Community features
- Progress tracking
- Public profiles

---

## 8. MVP Scope

### Assessment Mode Features (MVP)

#### Candidate Features

- Email / OAuth signup
- Candidate profile
- Take assessments
- Timed attempts
- Score reports
- Skill insights
- Shareable public profile

#### Recruiter Features

- Organization creation
- Team member invites
- Search candidates
- View reports
- Filter by score / skill
- Shortlist workflows

#### Assessment Modules (MVP)

1. Log Debugging
2. SQL Reasoning
3. Code Review

#### Admin Features

- Manage question bank
- Review suspicious attempts
- Manage organizations
- Basic analytics dashboard

### Problems Mode Features (MVP - Future)

- Public problems page
- Problem statements with rich content
- Categories and tags
- Difficulty levels (Easy, Medium, Hard)
- Code editor for submissions
- Submission history and attempt tracking
- Public profiles with problem stats

### Problem Types (Problems Mode)

1. **SQL Problems**
   - Joins and relationships
   - Indexing strategies
   - Query optimization
   - Deadlock analysis
   - Transaction isolation

2. **Log Debugging Problems**
   - Production log analysis
   - Distributed tracing
   - Root cause identification

3. **Code Review Problems**
   - Bug identification
   - Security issue detection
   - Performance flaw analysis

4. **Incident Simulation Problems**
   - Production outage scenarios
   - Latency spike investigation
   - Infrastructure failure response
   - Scaling failure analysis

5. **System Design Micro Challenges**
   - API design decisions
   - Caching strategies
   - Scaling tradeoff analysis

6. **Security Challenges**
   - Authentication flaws
   - Injection vulnerabilities
   - Insecure logic patterns

## 9. Future Roadmap

### Phase 2 (Problems Platform Foundation)

- Public problems platform launch
- Problems submission engine
- Execution sandbox infrastructure
- Leaderboards and rankings
- Problem discussions
- Community solutions
- Editorial system
- Streaks and engagement mechanics

### Phase 3 (Ecosystem Expansion)

- AI-assisted feedback
- Engineering playgrounds
- Reputation system
- Advanced problem categories
- Problem authoring tools
- Detailed anti-cheat telemetry
- Subscription billing
- Adaptive assessments

### Phase 4 (Enterprise & Intelligence)

- Enterprise SSO
- ATS integrations
- Team simulations
- Public APIs
- Benchmark leaderboards
- Global skill passport
- Hiring graph intelligence
- Internal employee upskilling suite
- Verified skill graph
- Marketplace for assessments
- Community-driven learning platform

## 10. Key Differentiators

- Real-world tasks instead of puzzle-only tests
- Multi-dimensional candidate scoring
- Recruiter-ready evidence reports
- AI-era practical skill validation
- Strong analytics and benchmarking
- Dual-mode platform (Assessment + Problems)
- Community-driven practice ecosystem
- Public problem platform focused on engineering skills, not DSA

## 11. User Flows

### Assessment Mode - Candidate Flow

Landing Page → Signup → Build Profile → Receive Assessment Invite → Take Test → Submit → Receive Report → Share Profile

### Problems Mode - Engineer Flow

Landing Page → Signup → Browse Problems → Solve Problems → Track Progress → View Leaderboards → Build Public Profile

### Recruiter Flow

Signup → Create Organization → Search Talent → View Reports → Shortlist → Export / Share

### Admin Flow

Login → Manage Content → Monitor Metrics → Moderate Attempts → Manage Problems (Future)

## 12. Success Metrics

### Product Metrics (Assessment Mode)

- Assessment completion rate
- Avg session duration
- Candidate repeat usage
- Recruiter activation rate
- Shortlist conversion rate

### Product Metrics (Problems Mode - Future)

- Problems solved per user
- Daily/weekly active practitioners
- Submission success rate
- Problem difficulty distribution
- Leaderboard engagement
- Streak retention (future)

### Business Metrics

- Paid organizations
- Revenue per customer
- Trial-to-paid conversion
- Retention rate
- Problems Mode premium subscriptions (future)

### Reliability Metrics

- Submission success %
- p95 latency
- Uptime %
- Queue success %
- Code execution success rate (future)
- Sandbox isolation success (future)

## 13. Monetization

### Candidates (Assessment Mode)

- Free basic profile
- Premium detailed analytics
- Verified badges
- Career readiness packs

### Engineers (Problems Mode - Future)

- Free problem access (limited)
- Premium subscriptions for unlimited access
- Advanced editorial access
- Detailed performance analytics
- Verified problem-solving badges

### Recruiters

- Monthly subscription
- Seat-based pricing
- Pay-per-assessment
- Talent search access
- Problems Mode talent insights (future)

### Colleges

- Annual license
- Placement analytics dashboard
- Bulk student practice licenses (future)

## 14. Risks

### Market Risks

- Recruiters resist workflow changes
- Users compare against free tools (LeetCode, HackerRank)
- DSA platforms have stronger network effects

### Product Risks

- Weak question quality
- Misleading scores
- Poor onboarding UX
- Problem quality inconsistent in Problems Mode
- Community adoption slower than expected

### Technical Risks

- Cheating attempts
- Downtime during tests
- Data privacy incidents
- Code execution sandbox escapes
- High submission throughput in Problems Mode
- Leaderboard computation scalability
- Malicious code execution prevention

## 15. Go-To-Market

### Initial Channels

- College communities
- Developer communities
- LinkedIn content
- Founder outreach
- Campus ambassadors

### Problems Mode Channels (Future)

- Engineering blogs and newsletters
- Open source community partnerships
- Developer advocacy
- Problem authoring incentives
- University CS department partnerships

### Growth Loops

- Shareable score reports
- Referrals
- Hiring success stories
- Public benchmarks
- Public problem-solving profiles (future)
- Leaderboard visibility (future)
- Community contributions (future)

## 16. Non-Goals (MVP)

### Assessment Mode

- Full ATS platform
- Enterprise custom deployments
- Massive proctoring system

### Problems Mode

- Generic coding judge (DSA-only focus)
- Mobile-first app
- Full IDE replacement
- Competitive programming platform
- Real-time collaborative coding

### Both Modes

- AI code generation (assist only, not solve)
- Blockchain/crypto integration
- Social networking features beyond discussions
