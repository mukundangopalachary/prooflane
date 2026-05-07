#!/bin/bash

echo "Starting segmented git commits..."

# 1. Commit Infrastructure Setup
git add docker-compose.yml infra/
git commit -m "chore: initial docker compose and postgres init script setup"

# 2. Commit CI/CD Pipeline
git add .github/
git commit -m "ci: add github actions workflow for tests and builds"

# 3. Commit API Gateway
git add backend/gateway/
git commit -m "feat(backend): initialize spring cloud api gateway"

# 4. Commit User Service
git add backend/user-service/
git commit -m "feat(backend): initialize user service with jpa and flyway"

# 5. Commit Frontend Setup
git add frontend/
git commit -m "feat(frontend): initialize next.js with tailwind, shadcn, and tanstack query"

# 6. Commit Documentation (and anything left over)
git add README.md
git add .
git commit -m "docs: update readme with local development setup instructions"

echo "Done! You can now run 'git push' to push these commits."
