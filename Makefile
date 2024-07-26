.PHONY: init plan apply destroy fmt lint test

init:
	cd root && terraform init

plan:
	cd root && terraform plan

apply:
	cd root && terraform apply -auto-approve

destroy:
	cd root && terraform destroy -auto-approve

fmt:
	terraform fmt -recursive

lint:
	tflint --recursive


