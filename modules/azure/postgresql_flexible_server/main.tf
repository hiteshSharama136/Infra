resource "azurerm_postgresql_flexible_server" "psql_flexible_server" {
  name                   = var.postgresql_server_name
  resource_group_name    = var.resource_group_name
  location               = var.location
  version                = var.postgres_version
  delegated_subnet_id    = var.delegated_subnet_id
  private_dns_zone_id    = var.private_dns_zone_id
  administrator_login    = var.administrator_login
  administrator_password = var.administrator_password
  zone                   = var.zone

  storage_mb   = var.storage_mb
  
  sku_name   = var.sku_name
}