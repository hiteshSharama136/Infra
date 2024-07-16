module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "cognitive_account" {
  source = "../../modules/azure/cognitive_account"

  cognitive_account_name  = var.name
  location               = module.resource_group.location
  resource_group_name    = module.resource_group.resource_group_name
  kind                   = var.kind
  sku_name               = var.sku_name
  custom_subdomain_name  = var.custom_subdomain_name
  tags                   = var.tags
}
