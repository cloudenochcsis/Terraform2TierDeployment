# Disaster Recovery & Backup Strategy

## 1. RTO and RPO Targets
- Recovery Time Objective (RTO): < 30 minutes
- Recovery Point Objective (RPO): < 5 minutes

## 2. Backup Mechanisms
- RDS Automated Backups: Daily snapshots + continuous transaction logs
- EBS Volume Snapshots: Automated via AWS Backup or Data Lifecycle Manager


