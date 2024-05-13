resource "aws_kms_key" "app_kms_key" {
  description             = "KMS Customer Managed Key for ${var.project_name} encryption"
  deletion_window_in_days = var.deletion_window_in_days
  enable_key_rotation     = true

  tags = {
    Name      = "${var.project_name}-kms-key"
    ManagedBy = "Terraform"
  }
}


resource "aws_kms_alias" "app_kms_alias" {
  name          = "alias/${var.project_name}-key"
  target_key_id = aws_kms_key.app_kms_key.key_id
}


