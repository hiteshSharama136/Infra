output "id" {
  value       = azurerm_resource_group.main.id
  sensitive   = true
  description = "resource group id"
}

output "name" {
  value       = azurerm_resource_group.main.name
  sensitive   = true
  description = "resource group name"
}

output "location" {
  value       = azurerm_resource_group.main.name
  sensitive   = true
  description = "resource group name"
}