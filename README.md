#  Strapi Deployment on AWS ECS Fargate using Terraform & GitHub Actions

##  Project Overview

This project demonstrates automated deployment of a **Strapi application** on **AWS ECS Fargate** using:

- Docker
- Amazon ECR
- Amazon ECS (Fargate)
- Terraform (Infrastructure as Code)
- GitHub Actions (CI/CD)
- Amazon CloudWatch (Logging & Metrics)

---

##  Architecture
```text
GitHub Push
↓
GitHub Actions (CI)
↓
Build Docker Image
↓
Push Image to Amazon ECR
↓
Terraform Deploy (CD)
↓
ECS Fargate Service
↓
CloudWatch Logs & Metrics
```
##  Tech Stack

- Node.js (Strapi)
- Docker
- AWS ECS (Fargate)
- AWS ECR
- AWS CloudWatch
- Terraform
- GitHub Actions

## AWS Resources Created

Terraform provisions:

- ECS Cluster
- ECS Task Definition (Fargate)
- ECS Service
- ECR Repository
- CloudWatch Log Group

## Monitoring (CloudWatch)

ECS automatically publishes:

- CPUUtilization
- MemoryUtilization
- TaskCount
- NetworkIn
- NetworkOut

## GitHub Secrets Required
```text
In GitHub Repository → Settings → Secrets → Actions
```
Add:
```bash
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_REGION (us-east-1)
```