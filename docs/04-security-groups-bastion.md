# Security Group Tiering & Bastion Hardening

## 1. Least Privilege Security Model
Security groups operate as stateful firewalls at the instance ENI level. Ingress rules strictly restrict source IPs or reference peer Security Groups.

## 2. ALB Security Group
- Inbound: Port 80 (HTTP) and Port 443 (HTTPS) from `0.0.0.0/0`
- Outbound: All traffic or restricted to App SG


## 3. App Tier Security Group
- Inbound: HTTP Port 80 strictly from ALB Security Group ID
- Inbound: SSH Port 22 strictly from Bastion Host Security Group ID

## 4. Database Security Group
- Inbound: MySQL Port 3306 strictly from App Tier Security Group ID
- Outbound: Deny all egress outside VPC


