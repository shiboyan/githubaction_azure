data "azurerm_client_config" "current" {}
terraform {
    required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }
  required_version = ">=1.1.7"

  backend "azurerm" {
    resource_group_name  = "rg-dev-tf"
    storage_account_name = "tfdevaction"
    container_name       = "devtfstate"
    key                  = "dev.tfstate"
  }
}


provider "azurerm" {
  use_oidc = true
  features {
  }
  skip_provider_registration = true
}