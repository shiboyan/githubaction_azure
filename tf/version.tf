terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.12.0"
    }
  }
  required_version = ">=1.1.7"
}
provider "azurerm" {
  use_oidc = true
  features {
  }
  skip_provider_registration = true
}