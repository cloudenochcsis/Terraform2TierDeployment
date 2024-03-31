# Auto Scaling Group & Dynamic Capacity

## 1. Launch Template Configuration
EC2 instances are launched using versioned Launch Templates specifying:
- Amazon Linux 2 / 2023 AMI
- Instance Type: `t3.micro` or `t3.small`
- IAM Instance Profile for SSM Agent access
- User Data script to install Apache/Nginx web server and app files


