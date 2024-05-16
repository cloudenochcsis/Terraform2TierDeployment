resource "aws_backup_vault" "app_vault" {
  name = "${var.project_name}-backup-vault"
  tags = {
    Name      = "${var.project_name}-vault"
    ManagedBy = "Terraform"
  }
}


resource "aws_backup_plan" "daily_plan" {
  name = "${var.project_name}-daily-backup-plan"

  rule {
    rule_name         = "daily-retention-7-days"
    target_vault_name = aws_backup_vault.app_vault.name
    schedule          = var.schedule

    lifecycle {
      delete_after = 7
    }
  }
}


