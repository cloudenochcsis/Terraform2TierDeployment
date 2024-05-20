output "key_arn" {
  value       = aws_kms_key.app_kms_key.arn
  description = "ARN of the created KMS key"
}

output "key_id" {
  value       = aws_kms_key.app_kms_key.key_id
  description = "ID of the created KMS key"
}

output "key_alias" {
  value       = aws_kms_alias.app_kms_alias.name
  description = "Alias name of the KMS key"
}


