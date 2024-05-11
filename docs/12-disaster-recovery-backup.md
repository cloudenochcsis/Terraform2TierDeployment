# Disaster Recovery & Backup Strategy

## 1. RTO and RPO Targets
- Recovery Time Objective (RTO): < 30 minutes
- Recovery Point Objective (RPO): < 5 minutes

## 2. Backup Mechanisms
- RDS Automated Backups: Daily snapshots + continuous transaction logs
- EBS Volume Snapshots: Automated via AWS Backup or Data Lifecycle Manager


## 3. Infrastructure Reproducibility
Because the entire environment is codified with Terraform, complete recovery in a secondary region can be executed with `terraform apply -var-file=dr.tfvars` in minutes.


