.PHONY: help

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

init: ## Initializes the terraform remote state backend
	@rm -rf .terraform/*.tf*
	@sed -i 's/bucket\s*=.*/bucket = \"$(lastword $(subst /, ,$(PWD)))-euwest1-terraform-state\"/g' ./set-remote.tf
	@sed -i 's/key\s*=.*/key = \"$(lastword $(subst /, ,$(PWD))).tfstate\"/g' ./set-remote.tf
	@sed -i 's/region\s*=.*/region = \"eu-west-1\"/g' ./set-remote.tf
	@terraform init

plan: init ## Runs a plan. Note that in Terraform < 0.7.0 this can create state entries.
	@terraform plan -input=true -refresh=true -module-depth=-1 -var-file=$(lastword $(subst /, ,$(PWD))).tfvars ${ARGS}

plan-destroy: init ## Shows what a destroy would do.
	@terraform plan -input=true -refresh=true -module-depth=-1 -destroy -var-file=$(lastword $(subst /, ,$(PWD))).tfvars ${ARGS}

show: init ## Shows a module
	@terraform show -module-depth=-1

apply: init ## Applies a new state.
	@terraform apply -input=true -refresh=true -var-file=$(lastword $(subst /, ,$(PWD))).tfvars ${ARGS}

destroy: init ## Destroys targets
	@terraform destroy -var-file=$(lastword $(subst /, ,$(PWD))).tfvars ${ARGS}
	