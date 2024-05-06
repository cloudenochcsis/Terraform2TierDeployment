resource "aws_backup_vault" "app_vault" {
  name = "${var.project_name}-backup-vault"
  tags = {
    Name      = "${var.project_name}-vault"
    ManagedBy = "Terraform"
  }
}


