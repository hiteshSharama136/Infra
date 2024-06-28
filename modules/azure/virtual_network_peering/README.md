# Azure Virtual Network Peering Terraform Module

This Terraform module provisions peering between two Azure Virtual Networks using the azurerm_virtual_network_peering resource.

## Usage

module "azurerm_virtual_network_peering"  {
  name                         = "example-vnet-peering"
  resource_group_name          = azurerm_resource_group.example.name
  virtual_network_name         = azurerm_virtual_network.example1.name
  remote_virtual_network_id    = azurerm_virtual_network.example2.id
  allow_virtual_network_access = true
}
