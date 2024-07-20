#This repository contains Terraform code to deploy a 2-tier application on Amazon Web Services (AWS)
## Architecture Diagram

```mermaid
flowchart TD
    Users([Internet Users]) -->|HTTPS / 443| CF[Amazon CloudFront CDN]
    CF -->|SSL / TLS| ALB[Application Load Balancer]
    
    subgraph VPC [AWS VPC: 10.0.0.0/16]
        subgraph PublicSubnets [Public Subnets: AZ-a & AZ-b]
            ALB
            NAT_A[NAT Gateway A]
            NAT_B[NAT Gateway B]
            Bastion[Bastion Host EC2]
        end
        
        subgraph PrivateAppSubnets [Private App Subnets: AZ-a & AZ-b]
            ASG[Auto Scaling Group]
            EC2_A[App Instance 1]
            EC2_B[App Instance 2]
            ASG --- EC2_A
            ASG --- EC2_B
        end
        
        subgraph PrivateDBSubnets [Isolated DB Subnets: AZ-a & AZ-b]
            RDS_Primary[(RDS MySQL Primary)]
            RDS_Standby[(RDS Standby Replica)]
            RDS_Primary <-.->|Sync Replication| RDS_Standby
        end
        
        ALB -->|HTTP:80| EC2_A
        ALB -->|HTTP:80| EC2_B
        EC2_A -->|MySQL:3306| RDS_Primary
        EC2_B -->|MySQL:3306| RDS_Primary
    end
```


## Terraform Module Inventory

| Module | Description | Key AWS Resources |
| :--- | :--- | :--- |
| `modules/vpc` | Multi-AZ VPC networking | `aws_vpc`, `aws_subnet`, `aws_internet_gateway` |
| `modules/Nat` | Egress NAT gateways | `aws_nat_gateway`, `aws_eip`, `aws_route_table` |
| `modules/SG` | Layered security groups | `aws_security_group` (ALB, App, DB, Bastion) |
| `modules/alb` | Layer 7 load balancing | `aws_lb`, `aws_lb_target_group`, `aws_lb_listener` |
| `modules/asg` | Elastic capacity tier | `aws_autoscaling_group`, `aws_launch_template` |
| `modules/rds` | High availability database | `aws_db_instance`, `aws_db_subnet_group` |
| `modules/cloudfront` | Edge CDN distribution | `aws_cloudfront_distribution` |
| `modules/route_53` | Public DNS routing | `aws_route53_zone`, `aws_route53_record` |
| `modules/kms` | Envelope encryption | `aws_kms_key`, `aws_kms_alias` |
| `modules/cloudwatch` | Proactive monitoring | `aws_cloudwatch_metric_alarm`, `aws_sns_topic` |


## Deployment Guide

### Prerequisites
- AWS CLI configured with administrator credentials (`aws configure`)
- Terraform CLI `>= 1.3.0`
- Registered domain in Route 53 (optional for custom domain)

### Quickstart
```bash
cd root
terraform init
terraform plan -out=tfplan
terraform apply tfplan
```

### Destroy Infrastructure
```bash
terraform destroy -auto-approve
```


## Security & Operational Sign-off

- [x] Multi-AZ High Availability across 2 Availability Zones
- [x] Isolated Database Subnets with zero public ingress
- [x] Application Load Balancer with HTTPS redirection
- [x] Auto Scaling Group dynamic capacity based on CPU metrics
- [x] KMS Customer Managed Key encryption enabled for data stores
- [x] GitHub Actions automated format and security validation


