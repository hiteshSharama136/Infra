resource "azurerm_virtual_network_peering" "azvnet" {
  name                         = var.azvnet_name
  resource_group_name          = var.resource_group_name
  virtual_network_name         = var.vnet_name
  remote_virtual_network_id    = var.azurerm_databricks_virtual_network_peering.virtual_network_id
  allow_virtual_network_access = true
} 