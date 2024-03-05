# VPC & Subnet Networking Topology

## 1. VPC CIDR Allocation
The architecture uses a dedicated `/16` VPC CIDR block (e.g., `10.0.0.0/16`) divided into 6 discrete `/24` subnets across two Availability Zones:
- Public Subnets: ALB, NAT Gateways, and Bastion Host
- Private Subnets (App): EC2 Auto Scaling Group web instances
- Private Subnets (DB): RDS Multi-AZ database cluster


