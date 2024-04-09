# Multi-AZ RDS MySQL High Availability

## 1. High Availability Architecture
Amazon RDS Multi-AZ automatically provisions and maintains a synchronous standby replica in a different Availability Zone.

## 2. Failover Mechanism
During planned maintenance or unplanned hardware failures, RDS triggers an automatic failover to the standby replica without manual intervention.


## 3. Storage & Encryption
- General Purpose SSD (gp3) with baseline IOPS
- Storage auto-scaling enabled up to 100 GB
- Encryption at Rest using AWS KMS Customer Managed Keys
- Automated daily snapshots retained for 7 days


