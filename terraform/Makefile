TF_VARS_FILE  := terraform.tfvars

COLOR_RESET  := \033[0m
COLOR_GREEN  := \033[32m
COLOR_YELLOW := \033[33m
COLOR_BLUE   := \033[34m
COLOR_RED    := \033[31m

EMOJI_INIT     := 🌱
EMOJI_PLAN     := 📋
EMOJI_APPLY    := 🚀
EMOJI_DESTROY  := 💣
EMOJI_FMT      := 🎨
EMOJI_VALIDATE := ✅
EMOJI_TEST     := 🧪

.PHONY: init plan apply destroy fmt validate test

init:
	@echo "$(COLOR_GREEN)$(EMOJI_INIT) Initializing Terraform...$(COLOR_RESET)"
	terraform init

plan:
	@echo "$(COLOR_YELLOW)$(EMOJI_PLAN) Planning Terraform changes...$(COLOR_RESET)"
	terraform plan -var-file=$(TF_VARS_FILE) 

apply:
	@echo "$(COLOR_BLUE)$(EMOJI_APPLY) Applying Terraform changes...$(COLOR_RESET)"
	terraform apply -var-file=$(TF_VARS_FILE)

destroy:
	@echo "$(COLOR_RED)$(EMOJI_DESTROY) Destroying Terraform-managed infrastructure...$(COLOR_RESET)"
	terraform destroy -var-file=$(TF_VARS_FILE)

fmt:
	@echo "$(COLOR_GREEN)$(EMOJI_FMT) Formatting Terraform files...$(COLOR_RESET)"
	terraform fmt

validate:
	@echo "$(COLOR_GREEN)$(EMOJI_VALIDATE) Validating Terraform configuration...$(COLOR_RESET)"
	terraform validate

test:
	@echo "$(COLOR_BLUE)$(EMOJI_TEST) Running Terraform tests...$(COLOR_RESET)"
	terraform test

all: init plan apply

help:
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  init      $(EMOJI_INIT)  Initialize Terraform"
	@echo "  plan      $(EMOJI_PLAN)  Plan Terraform changes"
	@echo "  apply     $(EMOJI_APPLY)  Apply Terraform changes"
	@echo "  destroy   $(EMOJI_DESTROY)  Destroy Terraform-managed infrastructure"
	@echo "  fmt       $(EMOJI_FMT)  Format Terraform files"
	@echo "  validate  $(EMOJI_VALIDATE)  Validate Terraform configuration"
	@echo "  test      $(EMOJI_TEST)  Run Terraform tests"
	@echo "  all       Initialize, Plan, and Apply Terraform changes"
	@echo "  help      Show this help message"

