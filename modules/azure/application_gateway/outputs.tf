output "application_gateway_id" {
  description = "The ID of the Application Gateway."
  value       = azurerm_application_gateway.app_gateway.id
}

output "application_gateway_name" {
  description = "The name of the Application Gateway."
  value       = azurerm_application_gateway.app_gateway.name
}

output "application_gateway_frontend_ip_configuration" {
  description = "The frontend IP configuration of the Application Gateway."
  value       = azurerm_application_gateway.app_gateway.frontend_ip_configuration
}
