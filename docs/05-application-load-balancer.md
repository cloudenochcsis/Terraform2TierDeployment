# Application Load Balancer & Health Checks

## 1. ALB Architecture
The Application Load Balancer distributes Layer 7 HTTP/HTTPS traffic across dynamic EC2 instances managed by the Auto Scaling Group.

## 2. Target Group & Health Check Configuration
- Protocol: HTTP / Port 80
- Health Path: `/health.html` or `/index.html`
- Healthy Threshold: 2
- Unhealthy Threshold: 5
- Timeout: 5s, Interval: 30s


