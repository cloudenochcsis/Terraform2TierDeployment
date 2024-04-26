resource "aws_efs_file_system" "shared_fs" {
  creation_token = "${var.project_name}-efs"
  encrypted      = true

  tags = {
    Name      = "${var.project_name}-shared-efs"
    ManagedBy = "Terraform"
  }
}


# EFS Mount Target configurations across private application subnets
# Provides persistent shared storage for stateless EC2 web tiers


