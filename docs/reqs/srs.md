# Prooflane — Software Requirements Specification (SRS)

# 1. Introduction

## 1.1 Purpose

Define the functional and non-functional requirements for Prooflane.

## 1.2 Scope

Prooflane is a web-based platform that evaluates practical engineering skills and helps organizations make better hiring decisions.

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

# 3.10 Notifications

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

# 4.3 Reliability

NFR-6 Monthly uptime target = 99.9%.  
NFR-7 Automated daily backups required.  
NFR-8 Disaster recovery procedures shall exist.

# 4.4 Security

NFR-9 All traffic shall use TLS.  
NFR-10 Passwords shall be securely hashed.  
NFR-11 Secrets shall be externally managed.  
NFR-12 Inputs shall be validated.  
NFR-13 Rate limiting shall be enabled.  
NFR-14 Audit logs shall be retained.

# 4.5 Maintainability

NFR-15 Modular architecture required.  
NFR-16 CI checks required before deploy.  
NFR-17 API versioning shall be supported.

# 4.6 Observability

NFR-18 Structured logs required.  
NFR-19 Metrics dashboards required.  
NFR-20 Tracing shall be supported.

---

# 5. Data Requirements

## Core Entities

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

## Data Rules

- Tenant-scoped access required
- Attempt records immutable after submit
- Question versions retained
- Soft delete only where appropriate

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

- AI interviewer
- ATS integrations
- Team exercises
- Enterprise SSO
- Adaptive testing
- Advanced anti-cheat systems
