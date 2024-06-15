output "health_check_id" {
  value       = aws_route53_health_check.app_check.id
  description = "ID of the Route 53 health check"
}


