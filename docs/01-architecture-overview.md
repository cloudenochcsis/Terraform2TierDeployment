# AWS Two-Tier Highly Available Architecture

## 1. Executive Summary
This architecture establishes a secure, redundant, and automated 2-tier web application platform on Amazon Web Services (AWS) using Terraform IaC.

## 2. Key Pillars
- High Availability across multiple Availability Zones (AZs)
- Separation of Concerns: Public Web Tier vs Private Database Tier
- Elastic Scaling via EC2 Auto Scaling Groups (ASG)
- Defense-in-depth security with strict Security Group boundaries


## 3. High-Level Traffic Flow
1. End users connect via HTTPS to AWS CloudFront CDN edge caches.
2. Static cache misses and dynamic requests route to the Application Load Balancer (ALB).
3. ALB balances HTTP/HTTPS traffic across EC2 instances in private subnets.
4. App instances query Amazon RDS MySQL Multi-AZ instances in isolated DB subnets.


