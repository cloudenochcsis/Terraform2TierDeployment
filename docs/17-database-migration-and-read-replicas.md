# Database Read Replicas & Scaling

## 1. Read Replica Architecture
For read-heavy workloads, Amazon RDS read replicas can be provisioned in private DB subnets, offloading query load from the primary Multi-AZ master.

## 2. Asynchronous Replication
MySQL asynchronous binary log replication keeps replicas synchronized with minimal latency overhead.


## 3. Blue/Green Deployments
Database schema migrations use Amazon RDS Blue/Green deployments to execute zero-downtime updates and instant rollback.


