module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name     = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "container_registry" {
  source = "../../modules/azure/container_registry"

  container_registry_name            = var.acr_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  sku                 = var.sku
  admin_enabled       = var.admin_enabled
  tags                = var.tags
}

