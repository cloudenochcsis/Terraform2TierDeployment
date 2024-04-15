resource "aws_efs_file_system" "shared_fs" {
  creation_token = "${var.project_name}-efs"
  encrypted      = true

  tags = {
    Name      = "${var.project_name}-shared-efs"
    ManagedBy = "Terraform"
  }
}


