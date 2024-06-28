# Azure Virtual Network Terraform Module

This Terraform module provisions an Azure Virtual Network using the azurerm_virtual_network resource.

## Usage

module "azurerm_virtual_network"  {
  name                = "example-vnet"
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["10.0.0.0/16"]
  location            = "East US"
}
