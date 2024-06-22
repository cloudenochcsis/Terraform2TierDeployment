output "web_acl_arn" {
  value       = aws_wafv2_web_acl.app_waf.arn
  description = "ARN of the WAFv2 Web ACL"
}

output "web_acl_id" {
  value       = aws_wafv2_web_acl.app_waf.id
  description = "ID of the WAFv2 Web ACL"
}


