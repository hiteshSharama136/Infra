module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "storage_account" {
  source = "../../modules/azure/storage_account"

  st_name                  = var.name
  location                 = module.resource_group.location
  resource_group_name      = module.resource_group.resource_group_name
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  container_name           = var.container_name
  container_access_type    = var.container_access_type
  tags                     = var.tags
}
