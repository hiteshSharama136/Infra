output "ip_id" {
  description = "The ID of the Public IP address."
  value       = azurerm_public_ip.public_ip.id
}

output "ip_address" {
  description = "The IP address value that was allocated."
  value       = azurerm_public_ip.public_ip.ip_address
}