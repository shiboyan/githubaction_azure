data "azurerm_client_config" "current" {}
  backend "azurerm" {
    resource_group_name  = "rg-dev-tf"
    storage_account_name = "tfdevaction"
    container_name       = "devtfstate"
    key                  = "dev.tfstate"
  }



