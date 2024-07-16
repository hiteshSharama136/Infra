output "id" {
  value       = azurerm_container_registry.container_registry.id
  description = "The ID of the Container Registry."
}

output "login_server" {
  value       = azurerm_container_registry.container_registry.login_server
  description = "The URL that can be used to log into the container registry."
}
