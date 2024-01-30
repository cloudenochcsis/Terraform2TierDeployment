# Compliance & CIS AWS Foundations Benchmark

## 1. Security Baseline
The 2-tier infrastructure adheres to CIS AWS Foundations Benchmark v1.4, enforcing:
- Multi-factor authentication on root and IAM
- CloudTrail audit trails enabled in all regions
- AWS Config recording all resource configuration drifts


## 2. Automated Threat Detection
Amazon GuardDuty continuously analyzes VPC Flow Logs, DNS logs, and CloudTrail events to identify anomalous behavior and compromised instances.


