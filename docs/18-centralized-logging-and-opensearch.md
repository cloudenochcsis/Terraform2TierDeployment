# Centralized Logging & Log Analytics

## 1. CloudWatch Log Streams
All EC2 web servers run the unified CloudWatch Agent, streaming Apache/Nginx access and error logs to dedicated log groups.

## 2. Metric Filters
Metric filters extract HTTP 4XX and 5XX counts, feeding real-time alarm thresholds and incident dashboards.


## 3. Log Retention & Archival
Hot logs are retained in CloudWatch for 30 days before lifecycle export to Amazon S3 Standard-IA for compliance auditing.


