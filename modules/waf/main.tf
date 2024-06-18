resource "aws_wafv2_web_acl" "app_waf" {
  name        = "${var.project_name}-web-acl"
  description = "WAF protection rules for 2-tier application"
  scope       = "REGIONAL"

  default_action {
    allow {}
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "${var.project_name}WafMetric"
    sampled_requests_enabled   = true
  }
}


# Add Common Rule Set to AWS WAF WebACL
# Protects against SQL injection, XSS, and common web exploits


