terraform {
  backend "azurerm" {
    resource_group_name  = "rg-dev-tf"
    storage_account_name = "tfdevaction"
    container_name       = "devtfstate"
    key                  = "dev.tfstate"
    subscription_id      = "8b1f443a-57cd-4945-9ef6-d5a2e18b49c1"
  }
}
