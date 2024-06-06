resource "aws_route53_health_check" "app_check" {
  fqdn              = var.fqdn
  port              = 443
  type              = "HTTPS"
  resource_path     = "/health.html"
  failure_threshold = 3
  request_interval  = 30

  tags = {
    Name      = "app-https-health-check"
    ManagedBy = "Terraform"
  }
}


