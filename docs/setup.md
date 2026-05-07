# Local Development Setup

Follow these steps to run the entire Prooflane stack locally.

## Prerequisites

Before you begin, ensure you have the following installed on your machine:
- [Docker](https://docs.docker.com/engine/install/) and Docker Compose
- [Node.js](https://nodejs.org/) (v20+)
- [Java Development Kit (JDK) 21](https://adoptium.net/temurin/releases/?version=21)

---

## 1. Start Infrastructure (Databases)

We use Docker Compose to run PostgreSQL and Redis locally.

```bash
# From the root of the project
docker compose up -d
```

This spins up:
- **PostgreSQL** on port `5432` with pre-created databases: `prooflane_users` and `prooflane_assessments`.
- **Redis** on port `6379`.

*To stop the databases later, run `docker compose down`.*

---

## 2. Start the Backend Microservices

Each backend service is an independent Spring Boot application. We use the Maven Wrapper (`mvnw`), so you don't need to install Maven globally.

Open a terminal and start the **API Gateway**:
```bash
cd backend/gateway
./mvnw spring-boot:run
```
*(The Gateway will run on `http://localhost:8080`)*

Open another terminal and start the **User Service**:
```bash
cd backend/user-service
./mvnw spring-boot:run
```
*(The User Service will run on `http://localhost:8081`)*

---

## 3. Start the Frontend

The frontend is a Next.js application using Tailwind CSS and shadcn/ui.

Open a new terminal and run:
```bash
cd frontend
npm install
npm run dev
```
*(The frontend will run on `http://localhost:3000`)*

---

## Running Automated Tests

Our CI pipeline enforces these tests. You can run them locally as follows:

### Frontend
```bash
cd frontend
npm run lint
```

### Backend (Integration/Unit Tests)
We use **Testcontainers** for integration testing. **You must have Docker running** on your machine for these tests to pass, as it will automatically spin up real PostgreSQL and Redis containers for the tests.
```bash
cd backend/user-service
./mvnw test
```
