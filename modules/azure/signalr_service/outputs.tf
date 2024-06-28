
output "id" {
  value       = azurerm_signalr_service.signalr.id
  description = "The ID of the SignalR service"
}

output "hostname" {
  value       = azurerm_signalr_service.signalr.hostname
  description = "The FQDN of the SignalR service"
}

output "ip_address" {
  value       = azurerm_signalr_service.signalr.ip_address
  description = "The publicly accessible IP of the SignalR service"
}

output "public_port" {
  value       = azurerm_signalr_service.signalr.public_port
  description = "The publicly accessible port of the SignalR service which is designed for browser/client use"
}

output "server_port" {
  value       = azurerm_signalr_service.signalr.server_port
  description = "The publicly accessible port of the SignalR service which is designed for customer server side use"
}

output "primary_access_key" {
  value       = azurerm_signalr_service.signalr.primary_access_key
  description = "The primary access key for the SignalR service"
}

output "primary_connection_string" {
  value       = azurerm_signalr_service.signalr.primary_connection_string
  description = "The primary connection string for the SignalR service"
}

output "secondary_access_key" {
  value       = azurerm_signalr_service.signalr.secondary_access_key
  description = "The secondary access key for the SignalR service"
}

output "secondary_connection_string" {
  value       = azurerm_signalr_service.signalr.secondary_connection_string
  description = "The secondary connection string for the SignalR service"
}