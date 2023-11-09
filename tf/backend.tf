terraform {
  backend "azurerm" {
    resource_group_name  = "rg-dev-tf"
    storage_account_name = "tfdev"
    container_name       = "devtfstate"
    key                  = "dev.tfstate"
  }
}
