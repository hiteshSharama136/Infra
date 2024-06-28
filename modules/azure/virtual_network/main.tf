resource "azurerm_virtual_network" "remote" {
  name                = var.remote_name
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.1.0/24"]
  location            = var.location
} 