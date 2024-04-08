# Auto Scaling Group & Dynamic Capacity

## 1. Launch Template Configuration
EC2 instances are launched using versioned Launch Templates specifying:
- Amazon Linux 2 / 2023 AMI
- Instance Type: `t3.micro` or `t3.small`
- IAM Instance Profile for SSM Agent access
- User Data script to install Apache/Nginx web server and app files


## 2. Dynamic Scaling Policies
- Target Tracking Policy: Maintains average CPU utilization at 60%
- Step Scaling Policy: Rapidly adds 2 instances if request count spikes
- Min Size: 2, Max Size: 6, Desired Capacity: 2
- Multi-AZ Subnet distribution balances capacity across availability zones


