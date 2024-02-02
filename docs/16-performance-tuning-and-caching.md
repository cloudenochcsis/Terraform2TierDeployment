# Performance Tuning & Edge Caching Optimization

## 1. Linux Kernel Sysctl Tuning
Web tier EC2 instances apply optimized sysctl settings:
- `net.core.somaxconn = 65535`
- `net.ipv4.tcp_max_syn_backlog = 65535`
- `fs.file-max = 2097152`


## 2. Multi-Layer Caching Strategy
- Layer 1: CloudFront edge locations cache static web assets
- Layer 2: In-memory application response caching
- Layer 3: RDS query caching and optimized connection pooling


