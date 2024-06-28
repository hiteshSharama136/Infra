output "id" {
  description = "The ID of the Azure SignalR Service Network ACL."
  value       = azurerm_signalr_service_network_acl.example.id
}

output "default_action" {
  description = "The default action configured for the Azure SignalR Service Network ACL."
  value       = azurerm_signalr_service_network_acl.example.default_action
}

output "public_network_rules" {
  description = "Details of the public network rules configured for the Azure SignalR Service Network ACL."
  value       = azurerm_signalr_service_network_acl.example.public_network
}

output "private_endpoint_rules" {
  description = "Details of the private endpoint rules configured for the Azure SignalR Service Network ACL."
  value       = { for k, v in azurerm_signalr_service_network_acl.example.private_endpoint : k => v }
}
