output "psql_flexible_server_id" {
    description = "The ID of the PostgreSQL Flexible Server."
    value = azurerm_postgresql_flexible_server.psql_flexible_server.id
}
output "psql_flexible_server_fqdn" {
    description = "The FQDN of the PostgreSQL Flexible Server."
    value = azurerm_postgresql_flexible_server.psql_flexible_server.fqdn
}