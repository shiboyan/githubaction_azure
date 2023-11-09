resource "azurerm_resource_group" "rg" {
  location = var.enviroment.location
  name     = var.enviroment.rgname

  tags = {

    "Environment" = var.enviroment.tag
  }
}
resource "azurerm_network_security_group" "nsg" {
  name                = var.enviroment.nsgname
  resource_group_name = var.enviroment.rgname
  location            = var.enviroment.location
  tags = {

    "Environment" = var.enviroment.tag
  }

}


resource "azurerm_network_security_rule" "allow_management_inbound" {
  name                        = "RDP"
  priority                    = 300
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_ranges     = ["3389"]
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.enviroment.rgname
  network_security_group_name = azurerm_network_security_group.nsg.name
}
