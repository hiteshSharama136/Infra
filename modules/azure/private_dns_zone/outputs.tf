output id {
  value       = var.create_vnet_link_only ? null : azurerm_private_dns_zone.dns_zone.0.id
  description = "The Private DNS Zone ID."
}