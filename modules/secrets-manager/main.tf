resource "aws_secretsmanager_secret" "db_secret" {
  name                    = "${var.project_name}-${var.secret_name}"
  description             = "Master database credentials for ${var.project_name}"
  recovery_window_in_days = 0

  tags = {
    Name      = "${var.project_name}-db-secret"
    ManagedBy = "Terraform"
  }
}


resource "aws_secretsmanager_secret_version" "db_secret_val" {
  secret_id = aws_secretsmanager_secret.db_secret.id
  secret_string = jsonencode({
    engine   = "mysql"
    port     = 3306
    username = "admin"
  })
}


