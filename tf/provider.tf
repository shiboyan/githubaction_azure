 provider "azurerm" {
#  use_oidc = true
  features {
  }
    subscription_id = var.subscription_id
    client_id       = var.client_id
    client_secret   = var.client_secret
    tenant_id       = var.tenant_id
#  skip_provider_registration = true
}

 terraform {
   required_providers {
     azurerm = {
       source  = "hashicorp/azurerm"
       version = "=3.43.0"
     }
   }
   required_version = ">=1.1.7"
 }