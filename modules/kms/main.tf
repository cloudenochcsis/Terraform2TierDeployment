resource "aws_kms_key" "app_kms_key" {
  description             = "KMS Customer Managed Key for ${var.project_name} encryption"
  deletion_window_in_days = var.deletion_window_in_days
  enable_key_rotation     = true

  tags = {
    Name      = "${var.project_name}-kms-key"
    ManagedBy = "Terraform"
  }
}


