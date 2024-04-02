resource "aws_vpc_endpoint" "s3" {
  vpc_id            = var.vpc_id
  service_name      = "com.amazonaws.us-east-1.s3"
  vpc_endpoint_type = "Gateway"
  route_table_ids   = var.route_table_ids

  tags = {
    Name      = "s3-gateway-endpoint"
    ManagedBy = "Terraform"
  }
}


# PrivateLink interface endpoints for SSM and CloudWatch
# Allows private instances to communicate securely without internet gateways


