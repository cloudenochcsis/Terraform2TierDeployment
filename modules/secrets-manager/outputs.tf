output "secret_arn" {
  value       = aws_secretsmanager_secret.db_secret.arn
  description = "ARN of the Secrets Manager secret"
}

output "secret_id" {
  value       = aws_secretsmanager_secret.db_secret.id
  description = "ID of the Secrets Manager secret"
}


