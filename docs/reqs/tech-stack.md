# Prooflane — Technology Stack Document (v1.0)

## 1. System Overview

Prooflane is a web-based, multi-tenant assessment platform designed to evaluate real-world engineering skills.

Architecture style:

- Modular Monolith (Phase 1)
- Event-driven internally
- API-first backend
- Stateless services

---

## 2. Core Stack Summary

| Layer         | Technology                           |
| ------------- | ------------------------------------ |
| Frontend      | Next.js (TypeScript)                 |
| Backend       | Spring Boot (Java 21)                |
| Database      | PostgreSQL                           |
| Cache         | Redis                                |
| Queue         | Redis (initial) → RabbitMQ           |
| Storage       | S3-compatible                        |
| Auth          | JWT + OAuth                          |
| Infra         | Docker                               |
| CI/CD         | GitHub Actions                       |
| Observability | Prometheus + Grafana + OpenTelemetry |

---

## 3. Frontend Stack

### Core

- Next.js (App Router)
- TypeScript

### UI

- Tailwind CSS
- shadcn/ui

### State Management

- TanStack Query (server state)
- Zustand (optional client state)

### Rationale

- SSR support for recruiter dashboards
- Fast development cycle
- Mature ecosystem

---

## 4. Backend Stack

### Core

- Spring Boot (Java 21)

### Key Dependencies

- Spring Web
- Spring Security
- Spring Data JPA
- Hibernate Validator

### Rationale

- Strong concurrency handling
- Enterprise-grade reliability
- Type safety and maintainability

---

## 5. Database Strategy

### Primary Database

- PostgreSQL

### Used For

- users
- organizations
- assessments
- questions
- attempts
- answers
- scores

### Design Approach

- Relational-first design
- JSONB for flexible fields
- Indexed queries
- Future partitioning for large tables

---

### Cache Layer

- Redis

### Used For

- session storage
- rate limiting
- caching hot data
- distributed locks

---

### Object Storage

- S3-compatible storage

### Used For

- resumes
- reports
- exports
- assets

---

### Future Additions

- OpenSearch (search)
- ClickHouse / BigQuery (analytics)

---

## 6. Async Processing

### Initial

- Redis-based queue

### Later

- RabbitMQ

### Use Cases

- email sending
- report generation
- scoring jobs
- notifications

---

## 7. API Design

### Style

- REST
- JSON
- Versioned (`/api/v1`)

### Principles

- Stateless APIs
- Idempotent endpoints where required
- Pagination enforced
- Proper HTTP status codes

---

## 8. Authentication & Authorization

### Authentication

- Email + password
- OAuth (Google, GitHub)

### Authorization

- Role-Based Access Control (RBAC)

### Token Strategy

- JWT (short-lived access tokens)
- Refresh tokens

---

## 9. Multi-Tenancy

### Model

- Shared database with `organization_id`

### Rules

- All queries scoped by tenant
- Indexed tenant-based access
- Strict access validation

---

## 10. Security

### Application Security

- Input validation
- Output encoding
- CSRF protection
- Secure cookies
- Rate limiting

### Data Security

- TLS everywhere
- Password hashing (bcrypt/argon2)
- Signed URLs for file access

### Infrastructure Security

- Secret manager
- Least privilege IAM

---

## 11. Reliability

### Patterns

- Retries with exponential backoff
- Circuit breakers
- Timeouts
- Idempotency keys
- Dead-letter queues

### Targets

- 99.9% uptime
- <300ms p95 latency
- > 99.99% submission success

---

## 12. Scalability Strategy

### Phase 1

- Vertical scaling
- Query optimization
- Caching

### Phase 2

- Horizontal scaling
- Read replicas
- Async job processing

### Phase 3

- Service decomposition

---

## 13. Observability

### Logs

- Structured JSON logs
- Correlation IDs

### Metrics

- Prometheus

### Dashboards

- Grafana

### Tracing

- OpenTelemetry

---

## 14. DevOps

### Containers

- Docker

### CI/CD

- GitHub Actions

### Pipeline

- lint
- test
- build
- security scan
- deploy
- database migrations
- smoke tests

---

## 15. Testing Strategy

- Unit tests
- Integration tests
- API tests
- Critical end-to-end flows

---

## 16. Anti-Cheat Considerations

- Time-based anomaly detection
- Answer similarity analysis
- Behavioral pattern tracking
- Probabilistic scoring

---

## 17. Cost Strategy

- Avoid premature microservices
- Use managed database services
- Optimize infra usage
- Batch expensive operations

---

## 18. Future Evolution

- Microservices architecture (when needed)
- AI evaluation engine
- Global edge deployment
- Enterprise SSO
- Advanced analytics

---

## 19. Engineering Principles

- Correctness over speed (for scoring systems)
- Simplicity over overengineering
- Measure before optimizing
- Design for change
- Fail safely

---

## 20. Final Decision Lock

Stack is locked for v1:

- Next.js
- Spring Boot
- PostgreSQL
- Redis
- S3
- Docker
- GitHub Actions

No changes unless justified by hard constraints.
