terraform {
  backend "s3" {
    bucket         = "2tier-terraform-state-dev"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "2tier-terraform-locks-dev"
    encrypt        = true
  }
}


