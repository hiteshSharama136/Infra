output "mssql_server_id" {
  description = "The ID of the SQL Server."
  value       = azurerm_mssql_server.this.id
}

output "mssql_server_name" {
  description = "The name of the SQL Server."
  value       = azurerm_mssql_server.this.name
}
