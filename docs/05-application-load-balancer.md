# Application Load Balancer & Health Checks

## 1. ALB Architecture
The Application Load Balancer distributes Layer 7 HTTP/HTTPS traffic across dynamic EC2 instances managed by the Auto Scaling Group.

## 2. Target Group & Health Check Configuration
- Protocol: HTTP / Port 80
- Health Path: `/health.html` or `/index.html`
- Healthy Threshold: 2
- Unhealthy Threshold: 5
- Timeout: 5s, Interval: 30s


## 3. SSL/TLS Termination
ALB terminates TLS using AWS Certificate Manager (ACM) certificates with modern TLS 1.2+ security policies.

## 4. HTTP to HTTPS Redirection
HTTP listener on port 80 evaluates a default redirect action returning HTTP status 301 to port 443.


