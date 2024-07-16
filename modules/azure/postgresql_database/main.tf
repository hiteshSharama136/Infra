resource "azurerm_postgresql_database" "postgresql_database" {
  name                = var.database_name
  resource_group_name    = var.resource_group_name
  server_name         = azurerm_postgresql_flexible_server.psql_flexible_server.name
  charset             = var.charset
  collation           = var.collation

}
