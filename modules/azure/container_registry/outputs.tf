output "id" {
  value       = azurerm_container_registry.current.id
  description = "The ID of the Container Registry."
}

output "login_server" {
  value       = azurerm_container_registry.current.login_server
  description = "The URL that can be used to log into the container registry."
}
