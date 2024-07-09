module "resource_group" {
  source = "../../modules/azure/resource_group"

  name     = var.name
  location            = var.location
  tags = var.tags
}

module "databricks_workspace" { 
  source = "../../modules/azure/databricks_workspace"

  databricks_name                = var.databricks_name
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  sku_name                 = var.sku_name
}

module "databricks_virtual_network_peering" {
  source = "../../modules/azure/databricks_virtual_network_peering"

  azdvnet_name                          = var.azdvnet_name
  resource_group_name           = module.resource_group.resource_group_name
  workspace_id                  = var.varazurerm_databricks_workspace.id
  remote_address_space_prefixes = var.azurerm_virtual_network.address_space
  remote_virtual_network_id     = var.azurerm_virtual_network.id
  virtual_network_name     = var.virtual_network_name
  allow_virtual_network_access  = true
}
