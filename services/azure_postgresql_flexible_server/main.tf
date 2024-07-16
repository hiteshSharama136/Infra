module "resource_group" {
  source = "../../modules/azure/resource_group"

  resource_group_name     = var.resource_group_name
  location            = var.location
  tags = var.tags
}

module "postgresql_server" {
  source = "../../modules/azure/postgresql_flexible_server"

  postgresql_server_name          = var.postgresql_server_name
  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  sku_name            = var.sku_name
  storage_mb          = var.storage_mb
  delegated_subnet_id  = var.delegated_subnet_id
  administrator_login  = var.administrator_login
  private_dns_zone_id  = var.private_dns_zone_id
  administrator_password  = var.administrator_password
}

module "postgresql_database" {
  source = "../../modules/azure/postgresql_database"

  location            = module.resource_group.location
  resource_group_name = module.resource_group.resource_group_name
  sku_name            = var.sku_name
  storage_mb          = var.storage_mb
  database_name       = var.database_name
  charset             = var.charset
  collation           = var.collation
  delegated_subnet_id  = var.delegated_subnet_id
  administrator_login  = var.administrator_login
  private_dns_zone_id  = var.private_dns_zone_id
  administrator_password  = var.administrator_password
}

