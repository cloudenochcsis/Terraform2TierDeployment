terraform {
  backend "s3" {
    bucket         = "2tier-terraform-state-prod"
    key            = "prod/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "2tier-terraform-locks-prod"
    encrypt        = true
  }
}


