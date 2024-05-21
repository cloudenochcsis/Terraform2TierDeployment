resource "aws_sns_topic" "alerts" {
  name = "${var.project_name}-ops-alerts"
  tags = {
    Name      = "${var.project_name}-ops-alerts"
    ManagedBy = "Terraform"
  }
}


