# Prooflane — Software Requirements Specification (SRS)

# 1. Introduction

## 1.1 Purpose

Define the functional and non-functional requirements for Prooflane.

## 1.2 Scope

Prooflane is a web-based platform that evaluates practical engineering skills through two major modes:

1. **Assessment Mode** - Company-controlled assessments for hiring evaluation with recruiter dashboards and anti-cheat features.
2. **Problems Mode** - Public engineering problem-solving platform for practice, learning, and community engagement.

## 1.3 Stakeholders

- Candidates
- Recruiters
- Admins
- Colleges
- Engineering Team
- Product Team

---

# 2. System Overview

## 2.1 High-Level Stack

Frontend:

- Next.js (TypeScript)

Backend:

- Spring Boot (Java 21)

Data:

- PostgreSQL
- Redis
- Object Storage

Infra:

- Docker
- CI/CD
- Cloud hosting

Observability:

- Prometheus
- Grafana
- OpenTelemetry

## 2.2 Execution Infrastructure (Problems Mode - Future)

The Problems Mode will require additional infrastructure for code execution:

- Sandboxed execution environments
- Job queue for submission processing
- Execution workers (autoscaling)
- Timeout and resource limit enforcement
- Result caching and leaderboard computation

---

# 3. Functional Requirements

# 3.1 Authentication & Access Control

FR-1 Users shall register via email or OAuth.  
FR-2 Users shall authenticate securely.  
FR-3 Users shall reset passwords securely.  
FR-4 RBAC shall restrict access by role.  
FR-5 Recruiters shall invite team members.  
FR-6 Sessions shall expire securely.

# 3.2 Candidate Profiles

FR-7 Users shall create and edit profiles.  
FR-8 Users shall upload resumes.  
FR-9 Users shall manage skills and experience.  
FR-10 Users shall generate public shareable profiles.

# 3.3 Assessments

FR-11 Users shall browse assessments.  
FR-12 Users shall start timed attempts.  
FR-13 System shall autosave progress.  
FR-14 Users shall submit attempts.  
FR-15 Duplicate submissions shall be prevented.  
FR-16 Question sets may be randomized.

# 3.4 Log Debugging Module

FR-17 System shall display structured logs.  
FR-18 Users shall answer debugging questions.  
FR-19 Responses shall be rubric-scored.

# 3.5 SQL Module

FR-20 Users shall write SQL in sandbox editor.  
FR-21 Queries shall run in isolated environments.  
FR-22 Results shall be auto-validated.  
FR-23 Execution limits shall be enforced.

# 3.6 Code Review Module

FR-24 Users shall inspect code diffs/snippets.  
FR-25 Users shall mark issues and comments.  
FR-26 Findings shall be scored against rubric.

# 3.7 Reports

FR-27 Users shall view scorecards.  
FR-28 Recruiters shall compare candidates.  
FR-29 Reports shall be exportable.

# 3.8 Recruiter Dashboard

FR-30 Recruiters shall search candidates.  
FR-31 Recruiters shall filter by score, skill, module.  
FR-32 Recruiters shall shortlist candidates.

# 3.9 Admin Console

FR-33 Admins shall manage questions.  
FR-34 Admins shall review suspicious attempts.  
FR-35 Admins shall monitor platform analytics.

# 3.10 Problems Platform (Future - Phase 2)

FR-38 Users shall browse public problems by category and difficulty.  
FR-39 Users shall submit solutions to problems.  
FR-40 System shall execute and validate problem submissions.  
FR-41 Users shall view submission history and attempt tracking.  
FR-42 Users shall access problem editorials and community discussions.  
FR-43 Users shall view leaderboards and personal rankings.  
FR-44 Users shall build public profiles showcasing problem-solving stats.  
FR-45 Problems shall support multiple problem types (SQL, debugging, code review, etc.).  
FR-46 System shall auto-grade and score submissions against test cases.  

# 3.11 Notifications

FR-36 System shall send transactional emails.  
FR-37 Users shall receive completion notifications.

---

# 4. Non-Functional Requirements

# 4.1 Performance

NFR-1 p95 read latency < 300ms.  
NFR-2 Search responses < 1s.  
NFR-3 Submission success > 99.99%.

# 4.2 Scalability

NFR-4 System shall support horizontal scaling.  
NFR-5 Architecture shall support future 10k+ concurrent users.  
NFR-6 Problems platform shall handle high submission throughput (future).  
NFR-7 Concurrent code executions shall scale independently (future).  
NFR-8 Leaderboard computations shall be cacheable (future).  
NFR-9 Hot problems shall be cached for quick access (future).  
NFR-10 Abuse detection shall scale with user volume.

# 4.3 Reliability

NFR-11 Monthly uptime target = 99.9%.  
NFR-12 Automated daily backups required.  
NFR-13 Disaster recovery procedures shall exist.

# 4.4 Security

NFR-14 All traffic shall use TLS.  
NFR-15 Passwords shall be securely hashed.  
NFR-16 Secrets shall be externally managed.  
NFR-17 Inputs shall be validated.  
NFR-18 Rate limiting shall be enabled.  
NFR-19 Audit logs shall be retained.  
NFR-20 Code execution sandboxes shall be isolated (future).  
NFR-21 Execution timeouts shall be enforced (future).  
NFR-22 Memory limits shall be enforced per execution (future).  
NFR-23 Malicious code execution shall be prevented (future).

# 4.5 Maintainability

NFR-24 Modular architecture required.  
NFR-25 CI checks required before deploy.  
NFR-26 API versioning shall be supported.

# 4.6 Observability

NFR-27 Structured logs required.  
NFR-28 Metrics dashboards required.  
NFR-29 Tracing shall be supported.

---

# 5. Data Requirements

## Core Entities (Assessment Mode)

- users
- organizations
- memberships
- assessments
- questions
- attempts
- submissions
- scores
- reports
- audit_logs

## Problems Mode Entities (Future)

- problems
- problem_versions
- problem_submissions
- problem_test_cases
- problem_tags
- problem_discussions
- problem_editorials
- problem_leaderboards
- problem_categories

## Shared Infrastructure

Both Assessment Mode and Problems Mode leverage common infrastructure:

- Scoring engine
- Execution engine
- Sandbox environment
- Submission processing pipeline

## Data Rules

- Tenant-scoped access required
- Attempt records immutable after submit
- Question versions retained
- Soft delete only where appropriate
- Problem submissions audit trail maintained

---

# 6. External Interfaces

## Candidate UI

Responsive browser application.

## Recruiter UI

Dashboard web application.

## Admin UI

Restricted internal panel.

## APIs

REST APIs with JSON payloads.

## Email Provider

Transactional email integration.

## Storage

S3-compatible object storage.

---

# 7. Constraints

- Web-first MVP
- Lean team execution
- Modular monolith architecture
- Cost-aware infrastructure choices

---

# 8. Assumptions

- Users have stable internet access
- Recruiters value skill-based filtering
- Candidates accept timed assessments

---

# 9. Future Enhancements

### Assessment Mode Enhancements

- AI interviewer
- ATS integrations
- Team exercises
- Enterprise SSO
- Adaptive testing
- Advanced anti-cheat systems

### Problems Mode (Phase 2+)

- Public problems platform
- Execution sandbox infrastructure
- Leaderboards and rankings
- Problem discussions and editorials
- Community solutions
- Streaks and engagement mechanics
- Reputation system
- AI-assisted feedback
- Engineering playgrounds
- Problem authoring tools
- Bulk analytics and insights
