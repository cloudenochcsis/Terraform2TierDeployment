# Route 53 DNS & Domain Routing

## 1. Hosted Zone Management
Amazon Route 53 manages authoritative DNS records for the production domain.

## 2. Apex and Subdomain Alias Records
- Alias record `@` (Apex) points to CloudFront Distribution domain
- Alias record `www` points to CloudFront Distribution domain
- Route 53 Aliases eliminate CNAME flattening issues and incur zero query charges


## 3. Health Checks & Latency-Based Routing
Route 53 health checks monitor ALB endpoint availability. In multi-region deployments, latency-based or failover routing redirects traffic to secondary standby regions.


