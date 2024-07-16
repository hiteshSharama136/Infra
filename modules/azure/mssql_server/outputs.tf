output "mssql_server_id" {
  description = "The ID of the SQL Server."
  value       = azurerm_mssql_server.mssql.id
}

output "mssql_server_name" {
  description = "The name of the SQL Server."
  value       = azurerm_mssql_server.mssql.name
}
