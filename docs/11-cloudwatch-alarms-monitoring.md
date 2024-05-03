# CloudWatch Observability & Alarms

## 1. Core Metrics
- ALB: `TargetResponseTime`, `HTTPCode_Target_5XX_Count`, `ActiveConnectionCount`
- ASG: `CPUUtilization`, `NetworkIn`, `StatusCheckFailed`
- RDS: `CPUUtilization`, `FreeableMemory`, `FreeStorageSpace`, `DatabaseConnections`


## 2. Automated SNS Alerting
Alarms trigger notifications to an Amazon SNS topic (`sns-2tier-alerts`), delivering incident notifications to operations teams and triggering automated remediation workflows.


