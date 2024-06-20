#!/usr/bin/env bash
set -euo pipefail

echo "==> Initializing Terraform in root..."
cd root
terraform init

echo "==> Generating execution plan..."
terraform plan -out=tfplan

echo "==> Plan generated. Run terraform apply tfplan to execute."


