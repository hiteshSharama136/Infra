output "ip_configuration_subresource_name" {
  value       = var.ip_configuration_name == null ? null : azurerm_private_endpoint.private_endpoint.ip_configuration.0.subresource_name
  description = "The subresource this IP address applies to, which corresponds to the group_id"
}

output "private_service_connection_ip_address" {
  value       = azurerm_private_endpoint.private_endpoint.private_service_connection.0.private_ip_address
  description = "The private IP address associated with the private endpoint"
}

output "id" {
  value       = azurerm_private_endpoint.private_endpoint.id
  description = "The ID of the Private Endpoint"
}

output "network_interface_id" {
  value       = azurerm_private_endpoint.private_endpoint.network_interface.0.id
  description = "The ID of the network interface associated with the private_endpoint"
}

output "network_interface_name" {
  value       = azurerm_private_endpoint.private_endpoint.network_interface.0.name
  description = "The name of the network interface associated with the private_endpoint"
}

output "custom_dns_configs_fqdn" {
  value       = var.private_dns_zone_group_name == null ? azurerm_private_endpoint.private_endpoint.custom_dns_configs.0.fqdn : null
  description = "The fully qualified domain name to the private_endpoint"
}

output "custom_dns_configs_ip_addresses" {
  value       = var.private_dns_zone_group_name == null ? azurerm_private_endpoint.private_endpoint.custom_dns_configs.0.ip_addresses : null
  description = "A list of all IP Addresses that map to the private_endpoint fqdn"
}

output "private_dns_zone_configs_name" {
  value       = var.private_dns_zone_group_name == null ? null : azurerm_private_endpoint.private_endpoint.private_dns_zone_configs.0.name
  description = "The name of the Private DNS Zone that the config belongs to"
}

output "private_dns_zone_configs_id" {
  value       = var.private_dns_zone_group_name == null ? null : azurerm_private_endpoint.private_endpoint.private_dns_zone_configs.0.id
  description = "The ID of the Private DNS Zone Config"
}

output "private_dns_zone_configs_dns_zone_id" {
  value       = var.private_dns_zone_group_name == null ? null : azurerm_private_endpoint.private_endpoint.private_dns_zone_configs.0.private_dns_zone_id
  description = "A list of IP Addresses"
}

output "private_dns_zone_configs_record_sets" {
  value       = var.private_dns_zone_group_name == null ? null : azurerm_private_endpoint.private_endpoint.private_dns_zone_configs.0.record_sets
  description = "A record_sets block as defined below"
}

output "ip_configuration_name" {
  value       = var.ip_configuration_name == null ? null : azurerm_private_endpoint.private_endpoint.ip_configuration.0.name
  description = "The Name of the IP Configuration"
}