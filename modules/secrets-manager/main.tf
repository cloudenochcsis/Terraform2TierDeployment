resource "aws_secretsmanager_secret" "db_secret" {
  name                    = "${var.project_name}-${var.secret_name}"
  description             = "Master database credentials for ${var.project_name}"
  recovery_window_in_days = 0

  tags = {
    Name      = "${var.project_name}-db-secret"
    ManagedBy = "Terraform"
  }
}


