# ============================================================
# Azure Lab Governance — Root Terraform Configuration
# ============================================================

terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-rs-tfstate-uks-d-001"
    storage_account_name = "strstfstateuksd01"
    container_name       = "tfstate"
    key                  = "governance/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  resource_provider_registrations = "none"
}