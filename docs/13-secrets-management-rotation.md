# Secrets Management & Automated Credential Rotation

## 1. Secrets Architecture
Database passwords, API keys, and sensitive tokens are decoupled from Terraform manifests using AWS Secrets Manager.

## 2. Automatic Rotation via Lambda
A dedicated AWS Lambda rotation function rotates database credentials every 30 days without application disruption.


