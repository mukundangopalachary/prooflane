<div align="center">
  <img src="https://raw.githubusercontent.com/mukundangopalachary/prooflane/main/frontend/public/globe.svg" width="100" alt="Prooflane Logo" />
  <h1>Prooflane</h1>
  <p><b>The trust layer for technical hiring.</b></p>
</div>

<br />

Prooflane is a comprehensive engineering skill ecosystem focused on practical engineering readiness. We bridge the gap between learning, practice, and trusted hiring signals by measuring real-world engineering readiness beyond resumes and puzzle-based interviews.

## 🎯 The Problem

Current hiring systems are inefficient and noisy. Resumes are often inflated, DSA (Data Structures and Algorithms) rounds miss day-to-day engineering ability, and recruiters lack the time for deep screening. This leads to strong candidates being filtered out unfairly and companies making costly bad hires. 

At the same time, engineers lack structured platforms for practicing real-world engineering skills like debugging, system design, and code review.

## 💡 The Solution

Prooflane solves this by operating in two major modes:

### 1. Assessment Mode (Company-Controlled)
A recruiter-controlled environment focused on evaluating candidates through realistic, trusted assessments. 
- **Modules include:** Log Debugging, SQL Reasoning, and Code Review.
- **Benefits:** Provides job-relevant skill signals to recruiters and prevents cheating through strict telemetry.

### 2. Problems Mode (Public Platform)
A public engineering problem practice system (similar to LeetCode, but for real-world engineering).
- **Features:** Self-paced practice on production log analysis, incident simulations, and API design micro-challenges.
- **Benefits:** Allows engineers to build practical skills, track progress, and showcase verified capabilities.

## 🏗️ Architecture & Tech Stack

Prooflane is built on a modern, highly scalable microservices architecture.

### Frontend
- **Framework:** Next.js 15 (App Router, TypeScript)
- **Styling:** Tailwind CSS v4, shadcn/ui
- **State Management:** TanStack Query (React Query)

### Backend
- **Core:** Spring Boot 3.5.x (Java 21)
- **API Gateway:** Spring Cloud Gateway
- **Data Persistence:** PostgreSQL (Relational Data), Redis (Cache & Sessions)
- **Migrations:** Flyway

### Infrastructure & DevOps
- **Containerization:** Docker & Docker Compose
- **CI/CD:** GitHub Actions (with Testcontainers for robust integration testing)

## 🚀 Getting Started

If you are a developer looking to contribute or run the project locally, please refer to our setup guide:

👉 **[View Local Development Setup Guide](docs/setup.md)**

## 🛡️ License

All rights reserved. Prooflane 2026.
