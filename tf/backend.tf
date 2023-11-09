data "azurerm_client_config" "current" {}
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.59.0"
    }
  }
  backend "azurerm" {
    use_oidc             = true
    resource_group_name  = "rg-dev-tf"
    storage_account_name = "tfdevaction"
    container_name       = "devtfstate"
    key                  = "dev.tfstate"
  }
}
provider "azurerm" {
  use_oidc        = true
}


