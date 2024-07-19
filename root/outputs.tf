output "alb_dns_name" {
  value       = module.alb.alb_dns_name
  description = "Public DNS name of the Application Load Balancer"
}

output "cloudfront_domain_name" {
  value       = module.cloudfront.cloudfront_domain_name
  description = "Domain name of the CloudFront CDN distribution"
}


