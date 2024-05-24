output "vault_name" {
  value       = aws_backup_vault.app_vault.name
  description = "Name of the AWS Backup vault"
}

output "plan_id" {
  value       = aws_backup_plan.daily_plan.id
  description = "ID of the AWS Backup plan"
}


