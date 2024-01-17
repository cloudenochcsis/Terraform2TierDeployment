# VPC Endpoints & AWS PrivateLink

## 1. Internal Traffic Routing
VPC Endpoints allow private subnets to communicate with AWS services (S3, Secrets Manager, SSM, CloudWatch) without traversing the public internet.

## 2. Gateway vs Interface Endpoints
- Gateway Endpoint: Amazon S3 (zero cost, high throughput via route table entries)
- Interface Endpoints: Secrets Manager, SSM, and CloudWatch Logs powered by AWS PrivateLink


