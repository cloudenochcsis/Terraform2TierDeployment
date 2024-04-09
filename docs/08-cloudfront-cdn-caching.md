# CloudFront CDN Edge Caching

## 1. Edge Distribution Architecture
Amazon CloudFront delivers content via a global network of edge locations, reducing latency and offloading load from the ALB.

## 2. Cache Behaviors
- Default Cache Behavior: Forwards dynamic requests to ALB origin
- Static Assets (`/static/*`, `/images/*`): Caches content at edge with TTL 86400s
- HTTPS enforcement using ViewerProtocolPolicy `redirect-to-https`


